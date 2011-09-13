<?php 
class ManageShopController extends ManageBaseCMSController{
	
	public function Factory(){
		return new self();
	}
	
	public function AllActions($action){
		$this->CheckLogin();

		parent::AllActions($action);
	}
	
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		
		$this->application->page->template = "../../ecommerce/templates/manage.shop.default.tpl";
	}
	
	public function ImportProductFeedAction(){
		if(count($_FILES) > 0){
			echo "<pre>";
			//Log it to disk.
			$raw_csv = file_get_contents($_FILES['feed']['tmp_name']);
			$logged_feed = DIR_LOG . "/import/".date("Y-m-d")."_".date("H:i:s")."/".$_FILES['feed']['name'];
			if(!file_exists(dirname($logged_feed))){
				mkdir(dirname($logged_feed),0777,true);
			}
			echo "$logged_feed\n";
			file_put_contents($logged_feed,$raw_csv);
			$data = explode("\n",$raw_csv);
			foreach($data as &$row){
				$row = str_getcsv($row);
			}
			
			//Do some nasty to make a named array of our CSV...
			$header = array_shift($data);
			foreach($data as $key => $value){
				foreach($value as $elem_key => $array_of_elem){
					$new_data[$key][$header[$elem_key]] = $array_of_elem;
				}
			}
			unset($data);
			$data = $new_data;
			unset($new_data);
			echo "There are ".count($data)." items...\n";
			//exit;
			foreach($data as $part){
				/**
				 * Add/update items
				 * 
				 * 1. Does the brand exist? Add it if it doesn't.
				 * 2. Does the item exist? Add it if it doesn't.
				 *    If it does exist, update it.
				 */
				
				//Quick sanitisation..
				$part['Manufacturer'] = trim(ucfirst(strtolower($part['Manufacturer'])));
				$part['Category'] = trim(ucfirst(strtolower($part['Category'])));
				
				//Find the brand..
				if(BrandSearcher::Factory()->search_by_name($part['Manufacturer'])->count() > 0){
					$oBrand = BrandSearcher::Factory()->search_by_name($part['Manufacturer'])->execute_one();
				}else{
					$oBrand = Brand::Factory()->set_name($part['Manufacturer'])->save();
				}
				
				//Find the part..
				if(PartSearcher::Factory()->search_by_code($part['Product Number'])->search_by_brand($oBrand->get_id())->count() > 0){
					$oPart = PartSearcher::Factory()->search_by_code($part['Product Number'])->search_by_brand($oBrand->get_id())->execute_one();
				}else{
					$oPart = Part::Factory()->set_code($part['Product Number'])->save();
				}
				
				//Find the type..
				if(PartTypeSearcher::Factory()->search_by_name($part['Category'])->count() > 0){
					$oType = PartTypeSearcher::Factory()->search_by_name($part['Category'])->execute_one();
				}else{
					$oType = PartType::Factory()->set_name($part['Category'])->save();
				}
				
				// Cast some items to the correct types..
				$oBrand = Brand::Cast($oBrand);
				$oType  = PartType::Cast($oType);
				$oPart  = Part::Cast($oPart);
				
				// add the new part.
				$oPart
					->set_description($part['Product Details'])
					->set_name($part['Name'])
					->set_brand($oBrand->get_id())
					->set_type($oType->get_id())
					->save();
				#print_r($oPart);
				#print_r(MagicDatabase::$log);

				echo "added part {$oPart->get_name()} - {$oPart->get_id36()}\n";
				unset($oPart,$oBrand,$oType);
				#exit;
				
			}
			echo "DONE";
			exit;
		}
		$this->application->page->template = "../../ecommerce/templates/manage.shop.import_product_feed.tpl";
	}
	
}