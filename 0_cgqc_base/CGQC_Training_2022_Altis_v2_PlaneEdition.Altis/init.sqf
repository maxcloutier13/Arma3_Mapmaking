["cgqc_change_fucking_wind", {
	params ["_type"];
	//hint format ["%1", _type];
	[_type] execVM "scripts\change_wind.sqf";
}] call CBA_fnc_addEventHandler;