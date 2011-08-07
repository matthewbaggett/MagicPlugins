<?php

class CDNConnectionClass{
   private $db_connection;
   public function __construct(){
      $this->db_connection = new mysqli('centro.turbocrms.com','cdn','7ZpMdRxvvqs72AeQ','cdn');
      if ($this->db_connection->connect_error) {
         throw new MagicCDNException('Connect Error (' . $this->db_connection->connect_errno . ') '. $this->db_connection->connect_error);
      }
   }
   
   public function __destruct(){
      $this->db_connection->close();
   }

   public function query($sql){
      return $this->db_connection->query($sql);
   }

   public function escape($data){
      return $this->db_connection->real_escape_string($data);
   }

   public function get_insert_id(){
      return $this->db_connection->insert_id;
   }
}