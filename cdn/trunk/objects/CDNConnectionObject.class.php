<?php

class CDNConnectionClass{
   private $db_connection;
   public function __construct(){
      $this->db_connection = new mysqli('sql.turbocrms.com','magic_cdn','RJMh8W3V5y2JU0V2Bj3Kbk4dmxR8vW','magic_cdn');
      if ($this->db_connection->connect_error) {
         throw new MagicCDNException('Connect Error (' . $this->db_connection->connect_errno . ') '. $this->db_connection->connect_error);
      }
   }
}