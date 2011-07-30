<?php 
class CMSController extends MagicBaseController{
	
	private $user;
	
	public function __construct(){
		$this->user = new User();
	}
	public function Factory(){
		return new CMSController();
	}
	
	public function AllActions($action){
		
		switch($action){
			case 'login':
			case 'forgot-password':
				break;
			default:
				$this->CheckLogin();
		}
		
		$app_instance = MagicApplication::GetInstance();
		$app_instance->painter->smarty->setTemplateDir(ROOT."plugins/cms/templates");
		$app_instance->painter->smarty->caching = Smarty::CACHING_OFF; 
	}
	public function CheckLogin(){
		//Do we have a user?
		if(!isset($_SESSION['user'])){
			//echo "session user missing route"; exit;
			MagicUtils::redirect("CMS","login");
			
		//If we do, check its an admin
		}elseif(!$this->IsUserAdmin($_SESSION['user'])){
			echo "Not an admin route";
			$_SERVER['notes'][] = "User isn't an admin!"; exit;
			//MagicUtils::redirect("CMS","login");
		}else{
			//If everything else succeeds, we can log it!
			UserAccess::Factory()
				->set_date_of_last_update(time())
				->set_user_id($_SESSION['user']->get_id())
				->save();
		}
	}
	public function IsUserAdmin(User $oUser){
		echo "level: {$oUser->get_level()}";
		switch($oUser->get_level()){
			case 'admin':
			case 'superadmin':
				return true;
				break;
			default:
				
				return false;
		}
	}
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		$this->application->page->user = $_SESSION['user'];
	}
	
	public function LoginAction(){
		
		if(count($_POST) > 0){
			$this->LoginPostAction();
		}else{
			$_SESSION['notes'][] = "Please enter your Username or Email and Password to begin.";
		}
	}
	
	public function LoginPostAction(){
		
		$oUser_by_username = UserSearcher::Factory()->search_by_username($_POST['username_or_email'])->search_by_password(hash("SHA1",$_POST['password']))->execute_one();
		$oUser_by_email = UserSearcher::Factory()->search_by_email($_POST['username_or_email'])->search_by_password(hash("SHA1",$_POST['password']))->execute_one();
		if($oUser_by_email instanceof User){
			$oUser = $oUser_by_email;
		}elseif($oUser_by_username instanceof User){
			$oUser = $oUser_by_username;
		}else{
			$_SESSION['notes'][] = "No user exists with the username/email {$_POST['username_or_email']}, or the password supplied was incorrect.";
			MagicUtils::redirect("CMS","login");
		}
		$_SESSION['user'] = $oUser;
		
		// Get the most recent login
		$last_access = UserAccessSearcher::Factory()->search_by_user_id($_SESSION['user']->get_id())->sort('id','desc')->execute_one();
		if($last_access){
			$time_of_last_update = $last_access->get_date_of_last_update();
		}else{
			$time_of_last_update = 'never!';
		}
		
		// Log the new login & access.
		UserAccess::Factory()->set_date_of_last_update(time())->set_date_of_login(time())->set_user_id($_SESSION['user']->get_id())->save();
		$_SESSION['notes'][] = "Welcome, {$oUser->get_firstname()} {$oUser->get_surname()}! You last logged in at {$last_access->get_date_of_login()} and last were seen at {$time_of_last_update}";
		MagicUtils::redirect("CMS");
	}
	public function ForgotPasswordAction(){
		if(count($_POST) > 0){
			$this->ForgotPasswordPostAction();
		}
	}
	public function ForgotPasswordPostAction(){
		$oUser_by_username = UserSearcher::Factory()->search_by_username($_POST['username_or_email'])->execute_one();
		$oUser_by_email = UserSearcher::Factory()->search_by_email($_POST['username_or_email'])->execute_one();
		if($oUser_by_email instanceof User){
			$oUser = $oUser_by_email;
		}elseif($oUser_by_username instanceof User){
			$oUser = $oUser_by_username;
		}else{
			$_SESSION['notes'][] = "No user exists with the username/email {$_POST['username_or_email']}.";
			MagicUtils::redirect("CMS","forgot-password");
		}
		$new_password = MagicUtils::generate_password();
		$oUser->set_password(hash("SHA1",$new_password));
		$oUser->save()->reload();
		//print_r($oUser);
		$mail = Mail::Factory();
		$mail->set_to($oUser->get_email());
		$mail->set_subject("Password reset");
		$mail->set_message("Hello {$oUser->get_username()}, your password has been reset to {$new_password}");
		$mail->save();
		$mail->send();
		$_SESSION['notes'][] = "A password reset message was sent to {$oUser->get_email()}";
		MagicUtils::redirect("CMS","login");
	}
	
}