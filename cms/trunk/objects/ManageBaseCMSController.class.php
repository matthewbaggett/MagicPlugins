<?php 
class ManageBaseCMSController extends MagicBaseController{
	
	protected $user;
	
	public function __construct(){
		parent::__construct();
		
		$this->user = new User();
	}
	public function Factory(){
		throw new exception("Some developer was a wally, and didn't overload Factory() in ManageBaseCMSController in " . get_called_class());
	}
	
	public function setup(){
		$application = Application::GetInstance();
		$application->page_reset();
	}

	public function AllActions($action){
		$app_instance = MagicApplication::GetInstance();
		$app_instance->painter->smarty->setTemplateDir(ROOT."plugins/cms/templates");
		$app_instance->painter->smarty->caching = Smarty::CACHING_OFF;
		$this->application->page->user = $_SESSION['user'];
	}
	
	public function CheckLogin(){
		//Do we have a user?
		if(!isset($_SESSION['user'])){
			MagicUtils::redirect("Manage","Login");
		//If we do, check its an admin
		}elseif(!$this->IsUserAdmin($_SESSION['user'])){
			echo "Not an admin route";
			$_SERVER['notes'][] = "User isn't an admin!"; exit;
			//MagicUtils::redirect("Manage","Login");
		}else{
			//If everything else succeeds, we can log it!
			
			UserAccess::Factory()
				->set_date_of_last_update(time())
				->set_user_id($_SESSION['user']->get_id())
				->save();
		}
	}
	
	/**
	 * Check if the passed User is an Administrator
	 * @param $oUser User to check
	 * @return Boolean is an admin or not
	 */
	public function IsUserAdmin(User $oUser){
		
		switch($oUser->get_level()){
			case 'admin':
			case 'superadmin':
				return true;
				break;
			default:
				
				return false;
		}
	}

	
}