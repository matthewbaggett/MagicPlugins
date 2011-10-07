<?php

class PageCoreObject extends PageBaseObject implements PageInterface {

	public function get_is_published(){
		// Deleted?
		if($this->get_deleted() == 'yes'){
			return false;
		}
		// Marked published?
		if($this->get_published() == 'no'){
			return false;
		}		
		return true;
	}
	public function has_child_pages(){
		if(count($this->get_child_pages()) > 0){
			return TRUE;
		}
		return FALSE;
	}
	public function get_child_pages(){
		$child_pages = PageSearcher::Factory()->search_by_parent_id($this->get_id())->execute();
		if(count($child_pages) > 0){
			return $child_pages;
		}else{
			return NULL;
		}
	}
}