<?php 
class ManageShopController extends ManageBaseCMSController{
	
	public function Factory(){
		return new ManageBlogController();
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
		
		$this->application->page->template = "../../ecommerce/templates/manage.shop.default.tpl";
	}
	
	
}