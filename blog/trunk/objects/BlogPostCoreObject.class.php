<?php

class BlogPostCoreObject extends BlogPostBaseObject implements BlogPostInterface {

	public function get_is_published(){
		// Published date in the future?
		if($this->get_date_published() > time()){
			return false;
		}
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
}