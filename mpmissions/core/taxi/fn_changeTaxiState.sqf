/*
	File: fn_changeTaxiState\
	Author: © Cal Park
*/

_mode = _this select 0;

switch (_mode) do {
	case 1:
	{
		life_isOnDutyTaxi = true;[[player],"TON_fnc_goOnDuty",false,false] spawn life_fnc_mp;
	}; 
	case 0:
	{
		life_isOnDutyTaxi = false;[[player],"TON_fnc_goOffDuty",false,false] spawn life_fnc_mp;
	};
};


//init="this allowDamage false;  this enableSimulation false;  this addAction[format[""%1 ($%2)"",[""license_civ_taxi""] call life_fnc_varToStr,[([""taxi""] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,""taxi"",0,false,false,"""",' !license_civ_taxi && playerSide == civilian ']; this addAction [""go onduty"", {life_isOnDutyTaxi = true;[[player],""TON_fnc_goOnDuty"",false,false] spawn life_fnc_mp;}];    this addAction [""go offduty"", {life_isOnDutyTaxi = false;[[player],""TON_fnc_goOffDuty"",false,false] spawn life_fnc_mp;}];";