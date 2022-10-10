_arguments = _this select 3;
_type = _arguments select 0;

titleText ["You rested for 6 hours", "BLACK IN",7]; [[{ skipTime 6; }], "BIS_fnc_call"] call BIS_fnc_MP;
titleText ["You rested for 3 hours", "BLACK IN",7]; [[{ skipTime 3; }], "BIS_fnc_call"] call BIS_fnc_MP;
titleText ["You rested for 1 hours", "BLACK IN",7]; [[{ skipTime 1; }], "BIS_fnc_call"] call BIS_fnc_MP;