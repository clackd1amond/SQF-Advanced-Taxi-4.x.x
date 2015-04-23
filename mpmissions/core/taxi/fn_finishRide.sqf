/*
	File: fn_finishRide.sqf
	Author: © Cal Park
*/

_cash = _this select 0;
_pricePerM = _this select 1;
_mode = _this select 2;
_totalDistance = (_cash/_pricePerM);
_totalDistance = floor _totalDistance;
life_cash = life_cash + _cash;
player removeAction taxi_ActionToLeave;
if (_mode==1) then {
_message = parseText format ["Your customer stopped using your service. You've got $%1 for transporting him %2 meters. You have been automatically added to the OnDuty list of taxidrivers again.",_cash,_totalDistance];
} else {
_message = parseText format ["You have stopped the service. You've got $%1 for transporting him %2 meters. You have been automatically added to the OnDuty list of taxidrivers again.",_cash,_totalDistance];
};
titleText[format["%1",_message],"PLAIN"];
life_isOnDutyTaxi = true;
[[player],"TON_fnc_goOnDuty",false,false] spawn life_fnc_mp;
life_calledTaxi = false;