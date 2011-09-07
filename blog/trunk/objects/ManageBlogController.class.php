<?php 
class ManageBlogController extends ManageBaseCMSController{
	
	public function Factory(){
		return new ManageBlogController();
	}
	
	public function AllActions($action){
		$this->CheckLogin();
		parent::AllActions($action);
	}
	
	
	/*
	 * Actions!
	 */
	public function DefaultAction(){
		$arr_blog_posts = BlogPostSearcher::Factory()->execute();
		
		$this->application->page->arr_blog_posts = $arr_blog_posts;
	}
	
	public function EditAction(){
		$id = $_REQUEST['parameter'];
		$id = base_convert($id, 36, 10);
		
		$oBlogPost = BlogPostSearcher::Factory()->search_by_id($id)->execute_one();
		$oBlogPost = BlogPost::Cast($oBlogPost);
		
		$this->application->page->blog_post = $oBlogPost;
	}
	
}