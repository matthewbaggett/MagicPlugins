<?php
if(!PriceTypeSearcher::Factory()->search_by_handle("DEFAULT")->count() > 0){
	PriceType::Factory()
		->set_name("Default")
		->set_description("Default price band")
		->set_handle("DEFAULT")
		->save();
}

if(!PriceTypeSearcher::Factory()->search_by_handle("TEST")->count() > 0){
	PriceType::Factory()
		->set_name("Test pricing")
		->set_description("The test price band")
		->set_handle("TEST")
		->save();
}

$oTestPriceType = PriceTypeSearcher::Factory()->search_by_handle("TEST")->execute_one();
foreach(PartSearcher::Factory()->execute() as $oPart){
	$oPart = Part::Cast($oPart);
	if(!$oPart->has_child_prices()){
		Price::Factory()
			->set_part($oPart->get_id())
			->set_pricetype($oTestPriceType->get_id())
			->set_amount(rand(5,50) + (rand(0,100)/100))
			->save();
	}
}