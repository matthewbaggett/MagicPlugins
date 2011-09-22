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
		
		// set time to expire in seconds
		$expires = 86400;
		
		// get the contents of the buffer into a variable
		$bits = explode("-",str_replace(".jpg", "", $_GET['parameter']),2);
    	$dimentions = explode("x",$bits[0],2);
    	$image_id = base_convert($bits[1], 36, 10);
		$oImage = ImageSearcher::Factory()->search_by_id($image_id)->execute_one();
		$cache_time = $oImage->get_uploaded();
		$body = $oImage->scale_to_fit($dimentions[0],$dimentions[1]);
		
		// Etag and last modified checking and Generation
		$send_body = true;
		$etag = '"' . md5($body) . '"';
		header ("ETag: " . $etag );
		header("last-modified: " . gmdate("D, d M Y H:i:s",$cache_time) . " GMT");
		$inm = split(',', getenv("HTTP_IF_NONE_MATCH"));
		foreach ($inm as $i){
			if (trim($i) == $etag || trim($i) == $cache_time){
				header ("HTTP/1.0 304 Not Modified");
				$send_body = false;
			}
		}
	
		// last modified test
		if(getenv("HTTP_IF_MODIFIED_SINCE") == gmdate("D, d M Y H:i:s",$cache_time). " GMT"){
			header ("HTTP/1.0 304 Not Modified");
			$send_body = false;
		}
		
		// more headers
		header("Expires: " . gmdate("D, d M Y H:i:s",$cache_time + $expires) . " GMT");
		header("Cache-Control: max-age=$expires, must-revalidate");
		header('Content-Length: ' . strlen($body));
		header('Content-Type: image/jpeg');


		// if we're not cacheing

		if($send_body){ 
			echo $body;
		}
		exit;
	}
}
