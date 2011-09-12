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
	
	
}