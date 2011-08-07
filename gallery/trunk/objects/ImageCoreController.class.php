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


/**
 * Controller generated August 7, 2011, 4:55:00 am.
 */

class ImageCoreController extends ImageBaseController {
	public function ThumbAction(){
		Application::$nocache = true;
	    	$bits = explode("-",str_replace(".jpg", "", $_GET['parameter']),2);
	    	$dimentions = explode("x",$bits[0],2);
	    	$image_id = base_convert($bits[1], 36, 10);
		//print_r($_GET);
		$oImage = ImageSearcher::Factory()->search_by_id($image_id)->execute_one();
		$image_data = $oImage->scale_to_fit($dimentions[0],$dimentions[1]);
		header('Content-Type: image/jpeg');
		echo $image_data;
		exit;
	}
}
