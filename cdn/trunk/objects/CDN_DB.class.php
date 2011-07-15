<?php
class CDN_DB{
   static $db = NULL;

   public static function Factory(){
      if(!self::$db !== NULL){
         self::$db = new CDNConnectionClass();
      }
      return self::$db;
   }
   public static function Query($sql){
      return self::Factory()->query($sql);
   }
   public static function Escape($data){
      return self::Factory()->escape($data);
   }
}