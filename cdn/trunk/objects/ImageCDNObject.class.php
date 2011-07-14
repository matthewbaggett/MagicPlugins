<?php

class ImageCDNObject extends ImageBaseObject{
   public function save($force_save = false){
      echo "CDN SAVE\n";
      parent::save($force_save);
   }
}