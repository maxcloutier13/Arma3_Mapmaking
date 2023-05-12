_timeskip = _this select 0;

switch (_timeskip) do {
	case 1: {
		[[{ skipTime 1; }], "BIS_fnc_call"] call BIS_fnc_MP;
	};
	case 3: {
		[[{ skipTime 3; }], "BIS_fnc_call"] call BIS_fnc_MP;
	};
	case 6: {
		[[{ skipTime 6; }], "BIS_fnc_call"] call BIS_fnc_MP;
	};
	case 12: {
		[[{ skipTime 12; }], "BIS_fnc_call"] call BIS_fnc_MP;
	};
	default {
		hint "cgqc_skiptime.sqf problem";
	};
};
_text = format ["Tu t'es reposé %1 heures", _timeskip];
titleText [_text, "BLACK IN",7]; 

