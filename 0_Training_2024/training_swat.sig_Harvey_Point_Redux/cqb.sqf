params ["_laptop"];

missionNamespace setVariable ["cgqc_int_cqb_positions",
[
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
], true];

missionNamespace setVariable ["cgqc_int_cqb_listEvil",
    ["TargetP_Inf_F", "TargetP_Inf2_F", "TargetP_Inf3_F", "TargetP_Inf4_F", "TargetP_Inf9_F"],
    true
];

missionNamespace setVariable ["cgqc_int_cqb_listCivil",
    ["TargetP_Civ_F", "TargetP_Civ2_F"],
    true
];
missionNamespace setVariable ["cgqc_int_cqb_targets", [], true];
missionNamespace setVariable ["cgqc_int_cqb_started", false, true];
missionNamespace setVariable ["cgqc_int_cqb_targets_left", 100, true];
missionNamespace setVariable ["cgqc_int_cqb_hostage_down", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_timeStart", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_timeStop", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_shotsTaken", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_targets_total_evil", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_targets_total_civil", 0, true];
missionNamespace setVariable ["cgqc_int_cqb_hostage_down", 0, true];

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
	_target setVariable ["nopop", true, true];
	_target setVariable ["evil", _evil, true];
	_target addEventHandler ["Hit", {
		if ((_this select 0) getVariable "evil") then {
            _left = missionNamespace getVariable ["cgqc_int_cqb_targets_left", 0];
			_left = _left - 1;
            missionNamespace setVariable ["cgqc_int_cqb_targets_left", _left, true];
		} else {
            _down = missionNamespace getVariable ["cgqc_int_cqb_hostage_down", 0];
			_down = _down + 1;
            missionNamespace setVariable ["cgqc_int_cqb_hostage_down", _down, true];
		};
	}];
    _targets = missionNamespace getVariable ["cgqc_int_cqb_targets", []];
	_targets pushBack _target;
     missionNamespace setVariable ["cgqc_int_cqb_targets", _targets, true];
};

cgqc_int_delCqbTarget = {
     _targets = missionNamespace getVariable ["cgqc_int_cqb_targets", []];
	{
		deleteVehicle _x;
	} forEach _targets;
    missionNamespace setVariable ["cgqc_int_cqb_targets", [], true];
};

cgqc_int_startCqb = {
	params ["_nbrEvil", "_nbrCivil", ["_random", false]];
    missionNamespace setVariable ["cgqc_int_cqb_targets_total_evil", _nbrEvil, true];
    missionNamespace setVariable ["cgqc_int_cqb_targets_total_civil", _nbrCivil, true];
    missionNamespace setVariable ["cgqc_int_cqb_started", true, true];

    _listCivil = missionNamespace getVariable ["cgqc_int_cqb_listCivil", []];
    _listEvil = missionNamespace getVariable ["cgqc_int_cqb_listEvil", []];
    _positions = missionNamespace getVariable ["cgqc_int_cqb_positions", []];
    _targetsLeft = 0;
	while { _nbrCivil > 0 } do {
		_type = selectRandom _listCivil;
		_position = selectRandom _positions;
		_positions = _positions - [_position];
		[_type, _position, false] spawn cgqc_int_spawnCqbTarget;
		_nbrCivil = _nbrCivil -1;
	};
	while { _nbrEvil > 0 } do {
		_type = selectRandom _listEvil;
		_position = selectRandom _positions;
		_positions = _positions - [_position];
		[_type, _position, true] spawn cgqc_int_spawnCqbTarget;
        _targetsLeft = _targetsLeft + 1;
		_nbrEvil = _nbrEvil -1;
	};
    missionNamespace setVariable ["cgqc_int_cqb_targets_left", _targetsLeft, true];
   // cqb_event_shot = player addEventHandler ["fired", {
    //    cgqc_int_cqb_shotsTaken = cgqc_int_cqb_shotsTaken + 1;
   // }];
    _nbrEvil = missionNamespace getVariable ["cgqc_int_cqb_targets_total_evil", 0];
    _nbrCivil = missionNamespace getVariable ["cgqc_int_cqb_targets_total_civil", 0];
    _txt = format ["<br/><br/><br/><br/><br/><br/><t size='6'>CQB Started! </t><br/><t size='3'> %1 targets with %2 hostages</t>", _nbrEvil, _nbrCivil];
	cutText [_txt,"PLAIN", 1, false, true];
    missionNamespace setVariable ["cgqc_int_cqb_timeStart", floor time, true];
    ["cqb_int_playSound", [cqb_loudspeaker, "cgqc_sound_roundNew", 300]] call CBA_fnc_GlobalEvent;
};

cgqc_int_stopCqb = {
    params [["_cancel", false]];
    missionNamespace setVariable ["cgqc_int_cqb_started", false, true];
    missionNamespace setVariable ["cgqc_int_cqb_targets_left", 100, true];
    _title = "";
    _msg = "";
	[] spawn cgqc_int_delCqbTarget;
    _takeScreen = false;
    _hostageDown = missionNamespace getVariable ["cgqc_int_cqb_hostage_down", 0];
	if (_hostageDown > 0) then {
        _title = "CQB Clear...";
        _msg = "but you shot a hostage!";
	} else {
        _title = "CQB Clear...";
        _msg = "Good job Viper!";
        _takeScreen = true;
	};
    cgqc_int_cqb_timeStop = floor time;
    _start = missionNamespace getVariable ["cgqc_int_cqb_timeStart", 0];
    _time = cgqc_int_cqb_timeStop - _start;
    _minutes = floor (_time / 60);
    _seconds = _time mod 60;
    _timeFormatted = format ["Cleared in %1m:%2s", str _minutes, if (_seconds < 10) then {"0" + str _seconds} else {str _seconds}];
    // Accuracy
    //_accuracy = (cgqc_int_cqb_targets_total_evil  / cgqc_int_cqb_shotsTaken ) * 100;
    //_accuracy = floor _accuracy;
    if !(_cancel) then {
        //_txt = format ["<t size='6'>%1</t><br/><t size='4'>%2</t><br/><t size='3'>%3</t><br/><t size='3'>Accuracy: %4 percent</t>", _title, _msg, _timeFormatted, _accuracy];
	    _txt = format ["<t size='6'>%1</t><br/><t size='4'>%2</t><br/><t size='3'>%3</t>", _title, _msg, _timeFormatted];
        cutText [_txt,"PLAIN", 2.5, false, true];
    };

    ["cqb_int_playSound", [cqb_loudspeaker, "cgqc_sound_roundEnd", 300]] call CBA_fnc_GlobalEvent;
};

_action = [ "menu_cqb_start", "Light - 8gt/1Civs", "", {[8, 1, false] spawn cgqc_int_startCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_cqb_start", "Standard - 12Tgt/2Civs", "", {[12, 2, false] spawn cgqc_int_startCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_cqb_starthi", "High pop - 20Tgt/5Civs", "", {[20, 5, false] spawn cgqc_int_startCqb}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_cqb_stop", "Stop CQB", "", {[true] spawn cgqc_int_stopCqb}, {!(missionNamespace getVariable ["cgqc_int_cqb_started", false])} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;