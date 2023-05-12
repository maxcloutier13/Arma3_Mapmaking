_type = _this select 0;

switch (_type) do {
	case 0: {cgqc_house1_on = false;publicVariable "cgqc_house1_on";hint "CQC Off";};
	case 1: {cqb_house1_hostile_class = ["rhsgref_tla_warlord"];};
	case 2: {cqb_house1_hostile_class = ["UK3CB_NAP_O_COM", "UK3CB_NAP_O_ENG", "UK3CB_NAP_O_GL"];};
	case 3: {cqb_house1_hostile_class = ["O_G_Soldier_F", "O_G_Soldier_lite_F", "O_G_Soldier_SL_F"];};
	case 4: {cqb_house1_hostile_class = ["DSF_WAG_Officer", "DSF_WAG_AutomaticRifleman", "DSF_WAG_Marksman", "DSF_WAG_Rifleman", "DSF_WAG_Rifleman_Lite"];};
	case 40: {cqb_house1_target_nbr = cqb_house1_target_nbr + 5; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 41: {cqb_house1_target_nbr = cqb_house1_target_nbr - 5; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 42: {cqb_house1_target_nbr = cqb_house1_target_nbr + 10; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 43: {cqb_house1_target_nbr = cqb_house1_target_nbr - 10; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 44: {cqb_house1_target_nbr = cqb_house1_target_nbr + 20; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 45: {cqb_house1_target_nbr = cqb_house1_target_nbr - 20; hint format["Targets:%1",cqb_house1_target_nbr];};
	case 50: {cqb_house1_move = 0; hint "No movement";};//Movement
	case 51: {cqb_house1_move = 1; hint "10% move";};
	case 52: {cqb_house1_move = 2; hint "25% move";};
	case 53: {cqb_house1_move = 3; hint "50% move";};
	case 54: {cqb_house1_move = 4; hint "75% move";};
	case 60: {cqb_house1_civ = true; hint "Civilian present";};//Civ presence
	case 61: {cqb_house1_civ = false; hint "No Civs";};
	case 62: {cqb_house1_nade = true; hint "Grenades: On";};
	case 63: {cqb_house1_nade = false; hint "Grenades: Off";};
	case 70: {cqb_house1_civ = false; hint "No Release";};
	case 71: {cqb_house1_civ = false; cqb_house1_timer = cqb_house1_timer + 30; hint format["Time until release:%1secs",cqb_house1_timer];};
	case 72: {cqb_house1_civ = false; cqb_house1_timer = cqb_house1_timer - 30; hint format["Time until release:%1secs",cqb_house1_timer];};
	case 73: {cqb_house1_civ = false; cqb_house1_timer = cqb_house1_timer + 60; hint format["Time until release:%1secs",cqb_house1_timer];};
	case 74: {cqb_house1_civ = false; cqb_house1_timer = cqb_house1_timer - 60; hint format["Time until release:%1secs",cqb_house1_timer];};
	
	default {
		hint "cqb_house_1 error";
	};
};

if (_type < 5) then {
	{deleteVehicle _x;} forEach cqb_house1_list;
	{deleteVehicle _x;} forEach cqb_house1_list_civ;
	{deleteVehicle _x;} forEach allDead;
	{deleteVehicle _x;} forEach nearestObjects [getpos player, ["WeaponHolder", "GroundWeaponHolder"], 100];
	cqb_house1_list_static = [];
	cqb_house1_list_moving = [];
	cqb_house1_list_civ = [];
	cqb_house1_tgt_static = 0;
	cqb_house1_tgt_move = 0;
	cqb_house1_tgt_civ = 0;
	if (_type >0) then {
		_building = nearestBuilding player; // Replace player with the unit you want to search for buildings near
		//Close all doors
		for "_i" from 1 to 22 do { 
			[_building, _i, 0] call BIS_fnc_door;
		};
		_positions = [_building] call BIS_fnc_buildingPositions;
		// Create Group for unit & set behavior
		_unit_group = createGroup [east, true];
		_unit_group setBehaviour "SAFE";
		_civ_group = createGroup [civilian, true];
		cqb_house1_list = [];
		for "_i" from 1 to cqb_house1_target_nbr do { 
			// Pick random position
			_random_pos = selectRandom _positions;
			_positions = _positions - _random_pos;
			_spawn_class = selectRandom cqb_house1_hostile_class;
			_unit = _unit_group createUnit [_spawn_class, _random_pos, [], 0, "CAN_COLLIDE"];
			if (_type == 2) then {
				_unit removeWeapon (primaryWeapon _unit);
			};
			doStop _unit;
			_move = 0;
			switch (cqb_house1_move) do {
				case 0: {_move = 0};
				case 1: {_move = selectRandom [0,0,0,0,0,0,0,0,0,1];};
				case 2: {_move = selectRandom [0,0,0,1];};
				case 3: {_move = selectRandom [0,1];};
				case 4: {_move = selectRandom [0,1,1];};
				default {
					hint "cqb_house1_move error";
				};
			};
			// Sets unit as moving or not
			if (_move == 0) then {
				_unit disableAI "PATH";
				cqb_house1_tgt_static = cqb_house1_tgt_static + 1;
				cqb_house1_list_static pushBack _unit;
			}else{
				cqb_house1_tgt_move = cqb_house1_tgt_move + 1;
				cqb_house1_list_moving pushBack _unit;
			};
			if !(cqb_house1_nade) then {
				// Remove grenades
				_unit removeMagazines "HandGrenade";
				_unit removeMagazines "MiniGrenade";
				_unit removeMagazines "rhs_mag_m67";
			};
			// Killed EventHandler 
			_unit addEventHandler ["Killed", {
				params ["_unit", "_killer"];
				cqb_house1_list = cqb_house1_list - [_unit];
				cqb_house1_list_moving = cqb_house1_list_moving - [_unit];
				cqb_house1_list_static = cqb_house1_list_static - [_unit];
				_left = count cqb_house1_list;
				systemChat format ["%1 killed by %2. %3 left", typeOf _unit, name _killer, _left];
				//cqb_house1_list = cqb_house1_list - _unit;
				if (_left < 1) then {
					_text = parseText ("Building clear..." + "<br/>" + "Good job Viper!");
					[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
				};
			}];
			cqb_house1_list pushBack _unit;
			sleep 0.2;
		};
		if (cqb_house1_civ) then {
			_civ_nbr = selectRandom [1,2,3];
			for "_i" from 1 to _civ_nbr do {
				// Pick random position
				_random_pos = selectRandom _positions;
				_positions = _positions - _random_pos;
				_spawn_class = selectRandom cqb_house1_civ_class;
				_unit = _civ_group createUnit [_spawn_class, _random_pos, [], 0, "CAN_COLLIDE"];
				_unit disableAI "PATH";
				_unit setUnitPos "UP";
				cqb_house1_tgt_civ = cqb_house1_tgt_civ + 1;
				// Killed EventHandler 
				_unit addEventHandler ["Killed", {
					params ["_unit", "_killer"];
					cqb_house1_list_civ = cqb_house1_list_civ - [_unit];
					_txt = format["Civilian DOWN! killed by %1!!!!!!!!", name _killer];
					systemChat _txt;
				}];
				cqb_house1_list_civ pushBack _unit;
			};
		};
		_txt = parseText format["-- Ready to go --"  + "<br/>" + "Total Units: %1" + "<br/>" + "Moving: %2" + "<br/>" + "Static: %3" + "<br/>" + "Civ: %4", count cqb_house1_list,cqb_house1_tgt_move,cqb_house1_tgt_static,cqb_house1_tgt_civ]; 
		hint _txt;
		cgqc_house1_on = true;
		publicVariable "cgqc_house1_on";
		if (cqb_house1_timer > 0) then {
			while {cgqc_house1_on} do {
				sleep cqb_house1_timer;
				if (count cqb_house1_list_static > 0) then {
					_random_pax = selectRandom cqb_house1_list_static;
					cqb_house1_list_static = cqb_house1_list_static - [_random_pax];
					cqb_house1_list_moving pushBack _random_pax;
					_random_pax enableAI "PATH";
					//systemChat format ["%1 started moving", typeOf _random_pax]; 
				};
			};
		};
		
	};
};