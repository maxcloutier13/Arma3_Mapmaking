
_time = _this select 0;
titleText [format ["Tu te repose pour %1 heures", _time], "BLACK IN",7]; 
[[{ skipTime _time; }], "BIS_fnc_call"] call BIS_fnc_MP;