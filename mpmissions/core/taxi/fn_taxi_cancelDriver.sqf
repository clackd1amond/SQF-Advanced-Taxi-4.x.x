/*
	File: fn_taxi_cancelDriver.sqf
	Author: © Cal Park
*/

if (alive life_taxiCustomer) then {
	[[6],"life_fnc_taxi_respond",life_taxiCustomer,false] spawn life_fnc_mp;
} else {
	_message = parseText format ["You stopped the ride, but the customer seems to be either dead or not connected anymore. You got the last backup of the price ($%1).",life_taxiTotalPriceBACKUP];
	titleText[format["%1",_message],"PLAIN"];
	life_cash = life_cash + life_taxiTotalPriceBACKUP;
	life_isOnDutyTaxi = true;
	[[player],"TON_fnc_goOnDuty",false,false] spawn life_fnc_mp;
};