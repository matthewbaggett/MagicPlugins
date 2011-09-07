<?php 
class ManageBlogController extends ManageBaseCMSController{
	
	public function Factory(){
		return new ManageController();
	}
	
	public function AllActions($action){
		$this->CheckLogin();
		parent::AllActions($action);
	}
	
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		die("Hello :)");
	}
	
}