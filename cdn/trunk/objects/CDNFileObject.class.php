<?php
class CDNFileObject{
   private $id;
   private $data;
   private $md5;

   public function set_id($id){
      $this->id = $id;
      return $this;
   }
   public function set_data($data){
      $this->data = $data;
      $this->generate_md5();
      return $this;
   }
   public function set_md5($md5){
      $this->md5 = $md5;
      return $this;
   }
   public function generate_md5(){
      $this->set_md5(md5($this->data));
      return $this;
   }

   public function save(){
      $escaped_data = CDN_DB::escape($this->data);
      if($this->id > 0){
         $sql = "UPDATE cdn_files SET `md5` = '{$this->md5}', `data` = '{$escaped_data}' WHERE `id` = {$this->id}";
         CDN_DB::Query($sql);
      }else{
         $sql = "INSERT INTO cdn_files (`md5`, `data`) VALUES ('{$this->md5}', '{$escaped_data}')";
         CDN_DB::Query($sql);
         $this->set_id(CDN_DB::Factory()->get_insert_id());
      }
      return $this;
   }
}