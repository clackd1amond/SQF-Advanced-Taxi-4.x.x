/*
	File: fn_taxiCheck.sqf
	Author: © Cal Park
*/

disableSerialization;

sleep 0.1;

_display = findDisplay 88888;
_ctrl = _display displayCtrl 13372;
_onduty = _display displayCtrl 920001;
_offduty = _display displayCtrl 920002;
_taximenu = _display displayCtrl 1337;


if (!license_civ_taxi) then {
	_offduty ctrlShow false;
	_onduty ctrlShow false;
	_taximenu ctrlShow false;
};

if (!life_calledTaxi) then {
	_ctrl ctrlShow false;
};

if (license_civ_taxi&&!life_isOnDutyTaxi) then {
	_offduty ctrlShow false;
};

if (license_civ_taxi&&life_isOnDutyTaxi) then {
	_onduty ctrlShow false;
};