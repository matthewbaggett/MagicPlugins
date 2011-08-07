<?php
class Thumbnailer{
	
	static function scale($source, $destination, $new_width, $new_height,$return_destination_image_resource = false){
		if(!file_exists($source)){
			throw new exception("Source file {$source} missing!");
		}
		$source_image = thumbnailer::getSrcImg($source);
		
						
		$old_width=imageSX($source_image);
		$old_height=imageSY($source_image);
		if ($old_width > $old_height) {
			$ratio = $new_width / $old_width;
			$thumb_width = $new_width;
			$thumb_height = $old_height * $ratio;
			//die("Width. Ratio: $ratio. $thumb_width x $thumb_height");
		}
		if ($old_width < $old_height) {
			$ratio = $new_height / $old_height;
			$thumb_width = $old_width * $ratio;
			$thumb_height = $new_height;
			//die("Height. Ratio: $ratio");
		}
		if ($old_width == $old_height) {
			$thumb_width = $new_width;
			$thumb_height = $new_height;
		}
		echo "Old width: {$old_width} and {$old_height}\n";
		die("Width: {$thumb_width} by Height: {$thumb_height}");
		$destination_image=ImageCreateTrueColor($thumb_width,$thumb_height);

		imagecopyresampled($destination_image,$source_image,0,0,0,0,$thumb_width,$thumb_height,$old_width,$old_height); 
		imagejpeg($destination_image,$destination);
		
		imagedestroy($source_image); 
		if($return_destination_image_resource == true){
			return $destination_image;
		}else{
			imagedestroy($destination_image); 
			return;
		}
	}
	
	static function crop($source, $destination, $new_width, $new_height){
		$source_image = thumbnailer::scale($source,$destination,$new_width,null,true);
		$destination_image = ImageCreateTrueColor($new_width, $new_height);
		
		$crop_start_x = (imageSX($source_image)-$new_width) /2;
		$crop_start_y = (imageSY($source_image)-$new_height) /2;
		
		imagecopyresampled($destination_image, $source_image, 0, 0, $crop_start_x, $crop_start_y, $new_width, $new_height , $new_width, $new_height);
		imagejpeg($destination_image,$destination); 
		imagedestroy($destination_image); imagedestroy($source_image); 
	}
	
	function createResize($source,$destination,$width,$height){
		$source_image = thumbnailer::getSrcImg($source);
		$old_width = imageSX($source_image);
		$old_height = imageSY($source_image);
		$destination_image=ImageCreateTrueColor($width,$height);
		imagecopyresampled($destination_image,$source_image,0,0,0,0,$width,$height,$old_width,$old_height);
		imagejpeg($destination_image,$destination); 
		imagedestroy($destination_image); imagedestroy($source_image); 
	}
	
	function getSrcImg($source){
		$foo = explode("/",$source);
		$foo = array_reverse($foo);
		$system=explode('.',trim($foo[0]));
		//print_r_html($system);
		if (preg_match('/jpg|jpeg/i',end($system))){
			//die(getcwd());
			$source_image=imagecreatefromjpeg($source);
		}elseif (preg_match('/png/i',end($system))){
			$source_image=imagecreatefrompng($source);
		}elseif(preg_match('/gif/i',end($system))){
			$source_image=imagecreatefromgif($source);
		}else{
			die("This image appears to be a rotten apple. Cannot match (jpg|jpeg|png|gif) in '".$system[1]."'\n");
		}
		return $source_image;
	}
}