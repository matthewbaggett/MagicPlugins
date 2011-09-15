<?php 
class ManagePageController extends ManageBaseCMSController{
	
	public function Factory(){
		return new ManagePageController();
	}
	
	public function AllActions($action){
		$this->CheckLogin();

		parent::AllActions($action);
		//print_r($this->application->page);die();
	}
	
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		$arr_pages = PageSearcher::Factory()->execute();
		
		$this->application->page->arr_pages = $arr_pages;
		$this->application->page->template = "../../pages/templates/manage.pages.default.tpl";
	}
	
	public function EditAction(){
		$id = $_REQUEST['parameter'];
		$id = base_convert($id, 36, 10);
		
		$oPage = PageSearcher::Factory()->search_by_id($id)->execute_one();
		$oPage = Page::Cast($oPage);
		
		$this->application->page->oPage = $oPage;
		$this->application->page->template = "../../pages/templates/manage.pages.edit.tpl";
	}
	
}