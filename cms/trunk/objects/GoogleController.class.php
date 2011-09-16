<?php 
require_once(ROOT . "/plugins/cms/google-identity-toolkit/handler/gitCallbackHandler.php");
class GoogleController extends MagicBaseController{
	
	public function setup(){
		Application::$nocache = true;
	}
	
	public function FederatedLoginAction(){
		//echo "<pre>";
		//print_r($_REQUEST);
		$inputEmail = isset($_REQUEST['rp_input_email']) ? $_REQUEST['rp_input_email'] : '';
		$purpose = isset($_REQUEST['rp_purpose']) ? $_REQUEST['rp_purpose'] : '';
		$url = gitUtil::getCurrentUrl();
		$idpResponse = @file_get_contents('php://input');
		$handler = new gitCallbackHandler($inputEmail, $purpose, $url, $idpResponse);
		$handler->execute();
		
		exit;
	}
	
	public function Factory(){
		return new self();
	}
}
?>
