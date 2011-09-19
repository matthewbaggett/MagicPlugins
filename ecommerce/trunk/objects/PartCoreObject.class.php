<?php

class PartCoreObject extends PartBaseObject implements PartInterface {

	public function get_price(){
		if($this->has_child_prices()){
			$prices = $this->get_child_prices();
			return end($prices)->get_amount();
		}else{
			return 0;
		}		
	}
}