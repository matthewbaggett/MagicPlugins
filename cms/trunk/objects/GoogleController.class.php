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
		
		$email 			= $_REQUEST['openid_ext1_value_attr0'];
		$firstname 		= $_REQUEST['openid_ext1_value_attr3'];
		$surname 		= $_REQUEST['openid_ext1_value_attr6'];
		if($this->does_user_email_exist($email)){
			$oUser = UserSearcher::Factory()->search_by_email($email)->execute_one();
			if($oUser->has_child_open_ids()){
				$oOpenId = $oUser->get_child_open_id();
			}else{
				$oOpenId = OpenId::Factory()
					->set_identity($_REQUEST['openid_identity'])
					->set_sig($_REQUEST['openid_sig'])
					->set_user($oUser->get_id())
					->save();
			}
		}else{
			$oUser = User::Factory()
				->set_active(User::ACTIVE_ACTIVE)
				->set_email($email)
				->set_firstname($firstname)
				->set_surname($surname)
				->set_date_of_registration(time())
				->save();
			$oOpenId = OpenId::Factory()
				->set_identity($_REQUEST['openid_identity'])
				->set_sig($_REQUEST['openid_sig'])
				->set_user($oUser->get_id())
				->save();
				
		}
	}
	public function Factory(){
		return new self();
	}
}
?>
