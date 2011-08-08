<?php

class PageController extends PageBaseController {
    
	private $page;
	private $page_version;
	
	public function ViewAction(){
        $this->application->page_setup();
       
        $this->page = PageSearcher::Factory()->search_by_path($_REQUEST['parameter'])->execute_one();
        if(!$this->page){
        	throw new exception("No page exists for this path :(");
        }
        $versions = $this->page->get_child_page_versions("id");
        $this->page_version = array_pop($versions);
        $navigation = PageSearcher::Factory()->search_by_parent_id(0)->execute();
        $this->application->page->cmspage = $this->page_version;
        $this->application->page->title = $this->application->page->cmspage->get_title();
        $this->application->page->navigation = $navigation;
        $this->application->page->navigation_structure = $this->get_navigation_structure($navigation);
       	
    }

    /**
     * Plug through an array of page nodes and churn out a structure
     * @param Array $nodes Array of nodes
     */
    public function get_navigation_structure($nodes){
    	
    	$tree = array();
    	foreach($nodes as $node){
    		try{
    			$children = $this->get_navigation_structure($node->get_child_pages());
    		}catch(Exception $e){
    			$children = null;
    		}
    		$tree[] = array(
    					"path" => $node->get_path(),
    					"title" => $node->get_child_page_version()->get_title(),
    					"children" => $children,
    					"selected" => $this->page_version->get_id()==$node->get_child_page_version()->get_id()?'yes':'no',
    					"selected_path" => $this->find_selected_in_path($node)?'yes':'no'
    			  );
    	}
	   	return $tree;
    }
    public function find_selected_in_path($node){
    	/*
    	 * Grab the children so we can process them
    	 */
    	try{
    		$children = $node->get_child_pages();
    	}catch(Exception $e){
    		$children = null;
    	}
    	
    	/*
    	 * if the page that we've actually loaded matches this node,
    	 * its a match (since its the page currently displayed, ergo, MUST be in the path
    	 */ 
    	if($this->page_version->get_id()==$node->get_child_page_version()->get_id()){
    		return true;
    	}elseif(count($children) > 0){
    		foreach((array) $children as $child){
    			return $this->find_selected_in_path($child);
    		}
    	}else{
    		return false;
    	}
    }
    
}
