// --- trainingKOTH ----------------------------------------------------------
// King of the hill stuff
_type  = _this select 0;
_static_target_todo = 0;
_sniper_target_todo = 0;
_inf_target_todo = 0;
_patrol_target_todo = 0;

switch (_type) do {
	case "start": {
		// Clear all things
		["clear"] execVM '\cgqc\functions\fnc_trainingKoth.sqf';
		// Setup stuff depending on difficulty 
		cgqc_training_koth_towers = [];
		// Amounts
		switch (cgqc_training_koth_difficulty) do {
			case 1: { // Easy
				_static_target_todo = 0;
				_sniper_target_todo = floor random [0, 0, 1];
				_inf_target_todo = floor random [2, 4, 6];
				_patrol_target_todo = 0;
			};
			case 2: { // Normal
				_static_target_todo = floor random [0, 0, 1];
				_sniper_target_todo = floor random [1, 2, 3];
				_inf_target_todo = floor random [4, 6, 8];
				_patrol_target_todo = 0;
			};
			case 3: { // Normal
				_static_target_todo = floor random [0, 0, 1];
				_sniper_target_todo = floor random [1, 2, 3];
				_inf_target_todo = floor random [4, 6, 8];
				_patrol_target_todo = 0;
			};
		};
		// Ask player for location---------------------------------------------------------------------
		hint "Click on map to choose KOTH Location.";  
		// Define the event handler function for MapSingleClick  
		onMapClick = {  
			params["_control", "_pos", "_shift", "_alt", "_ctrl"];  
			// Store the clicked position  
			y_clickedPos = _pos; 
			// Remove the MapSingleClick event handler  
			removeMissionEventHandler ["MapSingleClick", y_clickEvent];  
			openMap [false, false];  
			hintSilent "";
		}; 
		// Add the MapSingleClick event handler  
		y_clickEvent = addMissionEventHandler ["MapSingleClick", onMapClick];  
		openMap [true, true]; 
		// Wait for the player to click on the map  
		waitUntil {sleep 0.5; !(isNil "y_clickedPos") };

		//Find closest location to clicked position
		cgqc_training_koth_location = nearestLocation [y_clickedPos,""];
		// Marker   
		y_markerKoth = createMarker ["cgqc_koth_marker", _nearestCity_pos];
		"cgqc_koth_marker" setMarkerType "Contact_circle4"; 
		"cgqc_koth_marker" setMarkerText "KOTH";
		"cgqc_koth_marker" setMarkerColor "ColorRed"; 
		"cgqc_koth_marker" setMarkerSize [1.5, 1.5];
		if (cgqc_training_koth_towers_count > 0 && cgqc_training_koth_towers_count < 8) then {
			// For each tower, create everything. 
			for "_i" from 1 to cgqc_training_koth_towers_count do { 
				// Setup tower
				hint format ["KOTH tower %1: ON!", _i];
				// Find location for the tower 
				_safepos = (position cgqc_training_koth_location) findEmptyPosition [25,300, "Land_Cargo_Tower_V1_No1_F"];
				_towerNumbered = format ["Land_Cargo_Tower_V1_No%1_F", _i];
				_tower = createVehicle [_towerNumbered, _safepos, [], 0, "NONE"];
				cgqc_training_koth_towers pushBack _tower;
				// Create temporary groups
				_koth_group = createGroup [east, true];
				_koth_group setBehaviour "SAFE";
				_koth_group_statics = createGroup [east, true];
				_koth_group_statics setBehaviour "SAFE";

				// Create units --------------------------------------------------------------------------
				// Find all positions in tower 
				_positions = [_tower] call BIS_fnc_buildingPositions;
				
				// Officer ----------------------------------------
				// Pick random position
				_random_pos = selectRandom _positions;
				// Remove used position from array so it doesn't come back
				_positions = _positions - [_random_pos];
				// spawn unit, set rotation, and set standing
				_koth_1_officer = _koth_group createUnit [selectRandom cgqc_pax_opfor_lead, _random_pos, [], 0, "CAN_COLLIDE"];
				doStop _koth_1_officer;
				//_dir = getDir _random_pos;
				//_koth_1_officer setDir _dir;
				// Add to list 
				cgqc_training_koth_list pushBack _koth_1_officer;
				

				// Statics ----------------------------------------
				// Pick random position ans spawn unit until count is done
				koth_1_statics_count = 0;
				while { koth_1_statics_count <= _static_target_todo } do {
					hintSilent format ["Adding static %1", koth_1_statics_count];
					// Pick random position
					_random_pos = selectRandom _positions;
					// Remove used position from array so it doesn't come back
					_positions = _positions - [_random_pos];
					// spawn unit, set rotation, and set standing
					_static = createVehicle [ selectRandom cgqc_pax_opfor_fixed_light, _random_pos, [], 0, "CAN_COLLIDE"];
					_static allowCrewInImmobile true;
					//_dir = getDir _random_pos;
					//_static setDir _dir;
					createVehicleCrew _static;
					// count
					koth_1_statics_count = koth_1_statics_count + 1;
					{cgqc_training_koth_list pushBack _x;}forEach crew _static;
					cgqc_training_koth_list pushBack _static;
					hintSilent format ["%1 statics done", koth_1_statics_count];
				};

				// Snipers ----------------------------------------
				koth_1_snipers_count = 0;
				while { koth_1_snipers_count <= _sniper_target_todo } do {
					// Pick random position
					_random_pos = selectRandom _positions;
					// Remove used position from array so it doesn't come back
					_positions = _positions - [_random_pos];
					// spawn unit, set rotation, and set standing
					_unit = _koth_group createUnit [ selectRandom cgqc_pax_opfor_sniper, _random_pos, [], 0, "CAN_COLLIDE"];
					//_dir = getDir _random_pos;
					//_unit setDir _dir;
					_unit disableAI "PATH";
					doStop _unit;
					// count
					koth_1_snipers_count = koth_1_snipers_count + 1;
					cgqc_training_koth_list pushBack _unit;
				};

				// Infantry ----------------------------------------
				koth_1_infantry_count = 0;
				while { koth_1_infantry_count <= _inf_target_todo } do {
					// Pick random position
					_random_pos = selectRandom _positions;
					// Remove used position from array so it doesn't come back
					_positions = _positions - [_random_pos];
					// Pick random infantry waitUntil 
					_infantry_class = selectRandom cgqc_pax_opfor_soldier;
					// spawn unit, set rotation, and set standing
					_unit = _koth_group createUnit [ _infantry_class, _random_pos, [], 0, "CAN_COLLIDE"];
					//_dir = getDir _random_pos;
					//_unit setDir _dir;
					doStop _unit;
					// Sets unit as moving or not
					_move = selectRandom [0,1,1,1,1,1];
					if (_move > 0) then {
						_unit disableAI "PATH";
					};
					// count
					koth_1_infantry_count = koth_1_infantry_count + 1;
					cgqc_training_koth_list pushBack _unit;

				};

				// Patrols ----------------------------------------
				koth_1_patrol_count = 0;
				while { koth_1_patrol_count <= _patrol_target_todo } do {			
					// Pick random position
					_random_pos = selectRandom _positions;
					// Remove used position from array so it doesn't come back
					_positions = _positions - [_random_pos];
					_type = selectRandom [0, 1];
					// spawn unit, set rotation, and set standing
					if (_type > 0) then {
						// Full patrol
						hintSilent "KOTH: Tower: Full patrol";
						// sleep 1;
						koth_1_patrol_group = [ _random_pos, east, [selectRandom cgqc_pax_opfor_lead, selectRandom cgqc_pax_opfor_soldier, selectRandom cgqc_pax_opfor_soldier, selectRandom cgqc_pax_opfor_soldier]] call BIS_fnc_spawnGroup;
					} else {
						// 2 man patrol
						hintSilent "KOTH: Tower: 2-man patrol";
						// sleep 2;
						koth_1_patrol_group = [  _random_pos, east, [selectRandom cgqc_pax_opfor_lead, selectRandom cgqc_pax_opfor_sniper]] call BIS_fnc_spawnGroup;
					};
					[koth_1_patrol_group,  _random_pos, 50] call BIS_fnc_taskPatrol;
					// add all units to target list
					{
						cgqc_training_koth_list pushBack _x;
					} forEach units koth_1_patrol_group;

					// count
					koth_1_patrol_count = koth_1_patrol_count + 1;
				};

				//Set all dynamic 
				{
					_x enableDynamicSimulation true;
					_x removeAllEventHandlers "HandleDamage";
					_x addEventHandler ["HandleDamage", {
						params ["_x", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
						private _ret = damage _x;
						// Handle falling damage
						private _vehicle = vehicle _x;
						private _impactVelocity = (velocity _x) select 2;
						if ((_impactVelocity > 0) || {
							(_vehicle != _x) || {
								!((_source == _x) || {
									isNull _source
								}) || {
									(_projectile != "")
								}
							}
						}) then {
							_ret = _this call ace_medical_fnc_handleDamage;
						};
						_ret
					}];
				} forEach cgqc_training_koth_list;
				hint format ["KOTH: Tower:Done - %1 units ready", count cgqc_training_koth_list];
			};
		}else{
			hint "1-7 towers!";
			break;
		};
		hint "KOTH Ready. Bonne chan'";
	};
	case "stop": {
		cgqc_training_koth = false;
		["clear"] execVM '\cgqc\functions\fnc_trainingKoth.sqf';
	};
	case "clear": {
		// Delete marker
		if !(isNil "y_markerKoth") then {deleteMarker "cgqc_koth_marker";};	
		// Delete targets
		{deleteVehicle _x} forEach cgqc_training_koth_list;
		{deleteVehicle _x;} forEach cgqc_training_koth_towers;
	};
};