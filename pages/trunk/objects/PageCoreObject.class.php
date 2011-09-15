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
}