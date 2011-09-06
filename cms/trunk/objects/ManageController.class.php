<?php 
class ManageController extends MagicBaseController{
	
	private $user;
	
	public function __construct(){
		parent::__construct();
		
		$this->user = new User();
	}
	public function Factory(){
		return new self();
	}
	
	public function setup(){
		$application = Application::GetInstance();
		$application->page_reset();
	}

	public function AllActions($action){
		switch($action){
			case 'Login':
			case 'Forgot-Password':
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
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		$this->application->page->user = $_SESSION['user'];
		
		$this->application->page->stats = array(
			'views' => array(
				'today' => ViewSearcher::Factory()->search_by_accesstime(strtotime('24 hours ago'), ViewSearcher::MODE_MORE_THAN)->count(),
				'week'	=> ViewSearcher::Factory()->search_by_accesstime(strtotime('1 week ago'), ViewSearcher::MODE_MORE_THAN)->count(),
				'month' => ViewSearcher::Factory()->search_by_accesstime(strtotime('1 month ago'), ViewSearcher::MODE_MORE_THAN)->count()
			), 
			'visitors' => array(
				'today' => 5,
				'week'	=> 10,
				'month' => 70
			)
		);
	}
	
	public function LogoutAction(){
		unset($_SESSION['user']);
		unset($_SESSION['notes']);
		MagicUtils::redirect("Manage","Login");
	}
	public function LoginAction(){
		
		if(count($_POST) > 0){
			$this->LoginPostAction();
		}else{
			$_SESSION['notes'][] = trans("Please enter your Username or Email and Password to begin.");
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
			MagicUtils::redirect("Manage","Login");
		}
		$_SESSION['user'] = $oUser;
		
		// Get the most recent login
		$last_access = UserAccessSearcher::Factory()->search_by_user_id($_SESSION['user']->get_id())->sort('id','desc')->execute_one();
		if($last_access){
			$time_of_last_update = MagicUtils::fuzzyTime($last_access->get_date_of_last_update());
		}else{
			$time_of_last_update = trans('never!');
		}
		
		
		// Log the new login & access.
		UserAccess::Factory()->set_date_of_last_update(time())->set_date_of_login(time())->set_user_id($_SESSION['user']->get_id())->save();
		$_SESSION['notes'][] = "Welcome, {$oUser->get_firstname()} {$oUser->get_surname()}! You last logged in at {$time_of_last_update} and last were seen at {$time_of_last_update}";
		MagicUtils::redirect("Manage");
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
			$_SESSION['notes'][] = sprintf(trans("No user exists with the username/email %s"),$_POST['username_or_email']);
			MagicUtils::redirect("Manage","Forgot-Password");
		}
		$new_password = MagicUtils::generate_password();
		$oUser->set_password(hash("SHA1",$new_password));
		$oUser->save()->reload();
		//print_r($oUser);
		$mail = Mail::Factory();
		$mail->set_to($oUser->get_email());
		$mail->set_subject(trans("Password reset"));
		$mail->set_message("Hello {$oUser->get_username()}, your password has been reset to {$new_password}");
		$mail->save();
		$mail->send();
		$_SESSION['notes'][] = sprintf(trans("A password reset message was sent to %s"), $oUser->get_email());
		MagicUtils::redirect("Manage","Login");
	}
	
	public function ObjectsAction(){
		
		$this->application->page->objects = array();
		foreach(Application::$objects as $object){
			
			$instances = MagicQuery::Factory("SELECT",Inflect::pluralize($object))
				->addColumn("COUNT(id) as num")
				->execute_one();
				
			$changes = MagicQuery::Factory("SELECT","ActionLog_" . Inflect::pluralize($object))
				->addColumn("COUNT(id) as num")
				->execute_one();

			if($changes->num > 0 && $instances->num > 0){
				$changes_avg = floor($changes->num / $instances->num);	
			}else{
				$changes_avg = 0;
			}
			
			$this->application->page->objects[] = array(
					'name' => $object, 
					'instances' => $instances->num,
					'instances_abv' => MagicUtils::Abbreviate($instances->num),
					'changes' => $changes->num,
					'changes_avg' => $changes_avg,
				);
		}	}
	
	public function ViewSchemaAction(){
		$this->application->page->object_name = $_REQUEST['parameter'];
		$this->application->page->object_schema = Application::$schema[$this->application->page->object_name];
		foreach($this->application->page->object_schema as $column => $value){
			$this->application->page->object_columns[$column] = array();
			if($value['type'] == 'timestamp'){
				$minimum = MagicQuery::Factory("SELECT",Inflect::pluralize($this->application->page->object_name))
					->addColumn("MIN({$column}) as num")
					->execute_one();
				$maximum = MagicQuery::Factory("SELECT",Inflect::pluralize($this->application->page->object_name))
					->addColumn("MAX({$column}) as num")
					->execute_one();
				
				$this->application->page->object_columns[$column]['range'] = date("Y/m/d",$minimum->num)." - ".date("Y/m/d",$maximum->num)." (".MagicUtils::timeDifference($minimum->num, $maximum->num).")"; 
			}			
		}
		
	}

	public function ViewDataAction(){
		$per_page = 100;
		if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page = 1;
		}
		$offset = $per_page * $page;
		$this->application->page->object_name = $_REQUEST['parameter'];
		$this->application->page->object_schema = Application::$schema[$this->application->page->object_name];
		$this->application->page->data = MagicQuery::Factory("SELECT",Inflect::pluralize($this->application->page->object_name))
				->addColumn("*")
				->setLimit($offset,$per_page)
				->execute();
		
	}
	public function EditDataAction(){
		$object_name = $_REQUEST['parameter'];
		$object_searcher_name = "{$object_name}Searcher";
		$id = $_GET['id'];
		$oObjectSearcher = new $object_searcher_name;
		$oObject = $oObjectSearcher->search_by_id($id)->execute_one();
		if($oObject === FALSE){
			throw new MagicException("Cannot load {$object_name} with ID {$id}... Doesn't exist!");
		}
		$columns = explode("|",trim($object_name::MAGIC_OBJECT_CONTAINS));
		
		// Push things into the template.
		
		$this->application->page->id = $id;
		$this->application->page->object_name = $object_name;
		$this->application->page->object = $oObject;
		$this->application->page->columns = $columns;
	}
}