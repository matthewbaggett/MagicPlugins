<?php
/*    +-----------------------------------------------------------------------+
 *    | Socializr & Magic Framework                                           |
 *    +-----------------------------------------------------------------------+
 *    | Copyright (c) 2009-2011 The Magic Group                               |
 *    +-----------------------------------------------------------------------+
 *    | This source file is the property of The Magic Group (hereby known as  |
 *    | "Us", or "we". We're a nice bunch :) We're an approachable  lot       |
 *    | for licencing~                                                        |
 *    |                                                                       |
 *    | You can contact us with one of the emails below:                      |
 *    +-----------------------------------------------------------------------+
 *    | Authors: Matthew Baggett <matthew@baggett.me>                         |
 *    |          Magic Generator <hello@turbocrms.com>                        |
 *    +-----------------------------------------------------------------------+
 */
 
// $Id:$

class BlogController extends MagicBaseController {

	public function Factory(){
		return new BlogController();
	}
	public function __construct(){
		parent::__construct();
		$this->application->page_setup();
	}
	public function DefaultAction(){
		$arr_blog_posts = BlogPostSearcher::Factory()
							->search_by_published('yes')
							->search_by_deleted('no')
							->search_by_date_published(time(), BlogPostSearcher::MODE_LESS_THAN)
							->sort('date_published','DESC')
							->execute();
		$this->application->page->arr_blog_posts = $arr_blog_posts;
	}
}