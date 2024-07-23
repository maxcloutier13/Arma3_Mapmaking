params ["_laptop"];
cgqc_int_cqb_positions = [
    cgb_indoor_sign_1,
    cgb_indoor_sign_2,
    cgb_indoor_sign_3,
    cgb_indoor_sign_4,
    cgb_indoor_sign_5,
    cgb_indoor_sign_6,
    cgb_indoor_sign_7,
    cgb_indoor_sign_8,
    cgb_indoor_sign_9,
    cgb_indoor_sign_10,
    cgb_indoor_sign_11,
    cgb_indoor_sign_12,
    cgb_indoor_sign_13,
    cgb_indoor_sign_14,
    cgb_indoor_sign_15,
    cgb_indoor_sign_16,
    cgb_indoor_sign_17,
    cgb_indoor_sign_18,
    cgb_indoor_sign_19,
    cgb_indoor_sign_20,
    cgb_indoor_sign_21,
    cgb_indoor_sign_22,
    cgb_indoor_sign_23,
    cgb_indoor_sign_24,
    cgb_indoor_sign_25,
    cgb_indoor_sign_26,
    cgb_indoor_sign_27,
    cgb_indoor_sign_28,
    cgb_indoor_sign_29,
    cgb_indoor_sign_30,
    cgb_indoor_sign_31,
    cgb_indoor_sign_32,
    cgb_indoor_sign_33,
    cgb_indoor_sign_34,
    cgb_indoor_sign_35,
    cgb_indoor_sign_36,
    cgb_indoor_sign_37,
    cgb_indoor_sign_38,
    cgb_indoor_sign_39,
    cgb_indoor_sign_40,
    cgb_indoor_sign_41,
    cgb_indoor_sign_42
];


cgqc_int_cqb_listEvil = ["TargetP_Inf_F", "TargetP_Inf2_F", "TargetP_Inf3_F", "TargetP_Inf4_F", "TargetP_Inf9_F"];
cgqc_int_cqb_listCivil = ["TargetP_Civ_F", "TargetP_Civ2_F"];
cgqc_int_cqb_targets = [];
cgqc_int_cqb_started = false;
cgqc_int_cqb_targets_left = 0;
cgqc_int_cqb_hostage_down = 0;
cgqc_int_cqb_timeStart = 0;
cgqc_int_cqb_timeStop = 0;
cgqc_int_cqb_shotsTaken = 0;

["cqb_int_playSound", {
    params ["_source", "_sound", "_range"];
    _source say3D [_sound, _range];
}] call CBA_fnc_addEventHandler;

cgqc_int_spawnCqbTarget = {
	params ["_type", "_positionObject", "_evil"];
	_target = _type createVehicle [0, 0, 0];
	_position = getPosATL _positionObject;
	_target setPosATL [_position select 0, _position select 1, 0.0];
	_target setDir (getDir _positionObject + 180);
	_target setVariable ["nopop", true];
	_target setVariable ["evil", _evil];
	_target addEventHandler ["Hit", {
		if ((_this select 0) getVariable "evil") then {
			cgqc_int_cqb_targets_left = cgqc_int_cqb_targets_left - 1;
		} else {
			cgqc_int_cqb_hostage_down = cgqc_int_cqb_hostage_down + 1;
		};
	}];
	cgqc_int_cqb_targets pushBack _target;
};

cgqc_int_delCqbTarget = {
	{
		deleteVehicle _x;
	} forEach cgqc_int_cqb_targets;
};

cgqc_int_startCqb = {
	params ["_nbrEvil", "_nbrCivil", ["_random", false]];
    cgqc_int_cqb_targets_total_evil = _nbrEvil;
    cgqc_int_cqb_targets_total_civil = _nbrCivil;
	cgqc_int_cqb_started = true;
	while { _nbrCivil > 0 } do {
		_type = selectRandom cgqc_int_cqb_listCivil;
		_position = selectRandom cgqc_int_cqb_positions;
		cgqc_int_cqb_positions = cgqc_int_cqb_positions - [_position];
		[_type, _position, false] spawn cgqc_int_spawnCqbTarget;
		_nbrCivil = _nbrCivil -1;
	};
	while { _nbrEvil > 0 } do {
		_type = selectRandom cgqc_int_cqb_listEvil;
		_position = selectRandom cgqc_int_cqb_positions;
		cgqc_int_cqb_positions = cgqc_int_cqb_positions - [_position];
		[_type, _position, true] spawn cgqc_int_spawnCqbTarget;
        cgqc_int_cqb_targets_left = cgqc_int_cqb_targets_left + 1;
		_nbrEvil = _nbrEvil -1;
	};
    cqb_event_shot = player addEventHandler ["fired", {
        cgqc_int_cqb_shotsTaken = cgqc_int_cqb_shotsTaken + 1;
    }];
    _txt = format ["<br/><br/><br/><br/><br/><br/><t size='6'>CQB Started! </t><br/><t size='3'> %1 targets with %2 hostages</t>", cgqc_int_cqb_targets_total_evil, cgqc_int_cqb_targets_total_civil];
	cutText [_txt,"PLAIN", 1, false, true];
    cgqc_int_cqb_timeStart = floor time;
    ["cqb_int_playSound", [cqb_loudspeaker, "cgqc_sound_roundNew", 300]] call CBA_fnc_GlobalEvent;
};

cgqc_int_stopCqb = {
	cgqc_int_cqb_started = false;
    _title = "";
    _msg = "";
	[] spawn cgqc_int_delCqbTarget;
    _takeScreen = false;
	if (cgqc_int_cqb_hostage_down > 0) then {
        _title = "CQB Clear...";
        _msg = "but you shot the hostage!";
	} else {
        _title = "CQB Clear...";
        _msg = "Good job Viper!";
        _takeScreen = true;
	};
    cgqc_int_cqb_timeStop = floor time;
    _time = cgqc_int_cqb_timeStop - cgqc_int_cqb_timeStart;
    _minutes = floor (_time / 60);
    _seconds = _time mod 60;
    _timeFormatted = format ["Cleared in %1m:%2s", str _minutes, if (_seconds < 10) then {"0" + str _seconds} else {str _seconds}];
    // Accuracy
    _accuracy = (cgqc_int_cqb_targets_total_evil  / cgqc_int_cqb_shotsTaken ) * 100;
    _accuracy = floor _accuracy;
    _txt = format ["<t size='6'>%1</t><br/><t size='4'>%2</t><br/><t size='3'>%3</t><br/><t size='3'>Accuracy: %4 percent</t>", _title, _msg, _timeFormatted, _accuracy];
	cutText [_txt,"PLAIN", 2.5, false, true];
    ["cqb_int_playSound", [cqb_loudspeaker, "cgqc_sound_roundEnd", 300]] call CBA_fnc_GlobalEvent;
    player removeEventHandler ["fired", cqb_event_shot];
};

_action = [ "menu_cqb_start", "Standard - 12Tgt/2Civs", "", {[12, 2, false] spawn cgqc_int_startCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_cqb_starthi", "High pop - 20Tgt/5Civs", "", {[20, 5, false] spawn cgqc_int_startCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_cqb_stop", "Stop CQB", "", {[] spawn cgqc_int_stopCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;