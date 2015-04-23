/*
	File: fn_taxi_cancel.sqf
	Author: © Cal Park
*/

hint format ["You have stopped using the taxiservice, you payed $%1 for the ride.",life_taxiTotalPrice];
life_calledTaxi = false;
life_inTaxi = true;
/*if (life_atmcash<life_taxiTotalPrice) then {life_atmcash = 0;} else { life_atmcash = life_atmcash - life_taxiTotalPrice;};
[[life_taxiTotalPrice,pricePerM,1],"life_fnc_finishRide",life_taxiDriver,false] spawn life_fnc_mp;
*/