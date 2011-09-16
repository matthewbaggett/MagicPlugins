<?php 
require_once(ROOT . "/plugins/cms/google-identity-toolkit/handler/autoload.php");
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
		switch($handler->execute()){
			case gitCallbackHandler::OKAY:
				echo "<html>\n<head>\n</head>\n<body onload='window.close();'>Google says your auth is okay!</body>\n</html>";
				echo "<pre>".print_r($_REQUEST,true)."</pre>";
				$this->process_login();
				exit;
			case gitCallbackHandler::ERR:
			case gitCallbackHandler::RESPONSE:
				echo "Something happened...";
				exit;
		}
		
		exit;
	}
	
	private function does_user_email_exist(){
		if($oUser = UserSearcher::Factory()->search_by_email($email)->count() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	private function process_login(){
		
		$email = $_REQUEST['openid_ext1_value_attr0'];
		if($this->does_user_email_exist($email)){
			$oUser = UserSearcher::Factory()->search_by_email($email)->execute_one();
		}else{
			//$oUser-
		}
	}
	public function Factory(){
		return new self();
	}
}
?>
