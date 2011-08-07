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

if(!class_exists("ImageCDNObject",true)){
   class ImageCDNObject extends ImageBaseObject{}
}

class ImageCoreObject extends ImageCDNObject implements ImageInterface {

    public function set_image_data($file_name, $data){
        $int_path = "upload/" . $file_name;
        $upload_path = ROOT."/application/".APPNAME."/".$int_path;
        if(!file_exists(dirname($upload_path))){
            mkdir(dirname($upload_path),0777,true);
        }
        $complete_file_path = "{$upload_path}";
        file_put_contents($complete_file_path, $data);
        $this->set_file_path($int_path);
        $this->set_file_size(filesize($complete_file_path));
        $this->save();
    }
    public function get_thumb($x,$y){
    	return $this->get_file_path();
    }
    
    public function scale_to_fit($x,$y){
    	$original_file = ROOT_APP . "/" . $this->get_file_path();
    	if(!file_exists($original_file)){
    		throw new Exception("This file is missing!");
    	}
    	$cache_file = ROOT_APP . "/temp/thumbs/$x/$y/{$this->get_id36()}.jpg";
    	if(!file_exists(dirname($cache_file))){
    		mkdir(dirname($cache_file),0777,true);
    	}
    	if(!file_exists($cache_file)){
    		Thumbnailer::scale($original_file, $cache_file, $x, $y);
    	}
    	return file_get_contents($cache_file);
    }
}
