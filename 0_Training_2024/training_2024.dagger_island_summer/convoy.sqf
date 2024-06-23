// --- trainingConvoy ----------------------------------------------------------
// Convoys shenanigans
_type = _this select 0;
_speed = _this select 1;

switch (_type) do {
	case "start": {
		// Default convoy composition
		cgqc_convoy_vic_lead_type = "UK3CB_TKM_O_Hilux_Pkm";
		cgqc_convoy_vic_troops_type = "UK3CB_TKM_O_V3S_Open";
		cgqc_convoy_vic_vip_type = "UK3CB_TKM_O_V3S_Reammo";
		cgqc_convoy_vic_last_type = "UK3CB_TKM_O_BRDM2";
		cgqc_convoy_all_units = [];
		cgqc_convoy = true;
		// Ask for start point
		hint "Click on map -> Convoy Start point";
		cgqc_convoy_start = nil;
		// Define the event handler function for MapSingleClick
		onMapClick = {
			params["_control", "_pos", "_shift", "_alt", "_ctrl"];
			// Store the clicked position
			cgqc_convoy_start = _pos;
			// Remove the MapSingleClick event handler
			removeMissionEventHandler ["MapSingleClick", y_clickEvent];
			openMap [false, false];
			hintSilent "";
		};

		// Add the MapSingleClick event handler
		y_clickEvent = addMissionEventHandler ["MapSingleClick", onMapClick];
		openMap [true, true];
		// Wait for the player to click on the map
		waitUntil {sleep 0.5; !(isNil "cgqc_convoy_start") };

		sleep 1;

		// Ask for destination point
		hint "Click on map -> Convoy destination point";
		cgqc_convoy_end = nil;
		// Define the event handler function for MapSingleClick
		onMapClick = {
			params["_control", "_pos", "_shift", "_alt", "_ctrl"];
			// Store the clicked position
			cgqc_convoy_end = _pos;
			// Remove the MapSingleClick event handler
			removeMissionEventHandler ["MapSingleClick", y_clickEvent];
			openMap [false, false];
			hintSilent "";
		};
		// Add the MapSingleClick event handler
		y_clickEvent = addMissionEventHandler ["MapSingleClick", onMapClick];
		openMap [true, true];
		// Wait for the player to click on the map
		waitUntil {sleep 0.5; !(isNil "cgqc_convoy_end") };


		// Spawn each vehicles with their own groups with crew on map target_1
		// Lead vic
		_validPos = cgqc_convoy_start findEmptyPosition [1, 20, cgqc_convoy_vic_lead_type];
		cgqc_convoy_vic_lead = cgqc_convoy_vic_lead_type createVehicle _validPos;
		// Point towards road
		_vicPos = getPos cgqc_convoy_vic_lead;
		//_roadPos = [_vicPos] call BIS_fnc_nearestRoad;
		_dir = _vicPos getDir cgqc_convoy_end;
		cgqc_convoy_vic_lead setDir _dir;
		//Create crew
		createVehicleCrew cgqc_convoy_vic_lead;
		_group_lead = createGroup east;
		[cgqc_convoy_vic_lead] joinSilent _group_lead;
		crew cgqc_convoy_vic_lead joinSilent _group_lead;
		sleep 1;

		// Second vic
		_validPos = position cgqc_convoy_vic_lead findEmptyPosition [1, 50, cgqc_convoy_vic_troops_type];
		cgqc_convoy_vic_troops = cgqc_convoy_vic_troops_type createVehicle _validPos;
		// Point towards road
		_vicPos = getPos cgqc_convoy_vic_troops;
		_dir = _vicPos getDir cgqc_convoy_end;
		cgqc_convoy_vic_troops setDir _dir;
		createVehicleCrew cgqc_convoy_vic_troops;
		// Add some soldiers
		_infantry = ["UK3CB_TKM_O_SL", "UK3CB_TKM_O_TL", "UK3CB_TKM_O_MD", "UK3CB_TKM_O_MK", "UK3CB_TKM_O_MG", "UK3CB_TKM_O_MG_ASST", "UK3CB_TKM_O_ENG", "UK3CB_TKM_O_RIF_1"];
		_infantry_group = [ _validPos, east, _infantry] call BIS_fnc_spawnGroup;
		{_x moveInCargo cgqc_convoy_vic_troops} forEach units _infantry_group;
		_group_troops = createGroup east;
		[cgqc_convoy_vic_troops] joinSilent _group_troops;
		crew cgqc_convoy_vic_troops joinSilent _group_troops;
		sleep 1;

		// Third vic
		_validPos = position cgqc_convoy_vic_lead findEmptyPosition [1, 50, cgqc_convoy_vic_vip_type];
		cgqc_convoy_vic_vip = cgqc_convoy_vic_vip_type createVehicle _validPos;
		// Point towards road
		_vicPos = getPos cgqc_convoy_vic_vip;
		_dir = _vicPos getDir cgqc_convoy_end;
		cgqc_convoy_vic_vip setDir _dir;
		createVehicleCrew cgqc_convoy_vic_vip;
		_group_vip = createGroup east;
		[cgqc_convoy_vic_vip] joinSilent _group_vip;
		crew cgqc_convoy_vic_vip joinSilent _group_vip;
		sleep 1;

		// Fourth Vic
		_validPos = position cgqc_convoy_vic_lead findEmptyPosition [1, 50, cgqc_convoy_vic_last_type];
		cgqc_convoy_vic_last = cgqc_convoy_vic_last_type createVehicle _validPos;
		// Point towards road
		_vicPos = getPos cgqc_convoy_vic_last;
		_dir = _vicPos getDir cgqc_convoy_end;
		cgqc_convoy_vic_last setDir _dir;
		createVehicleCrew cgqc_convoy_vic_last;
		_group_last = createGroup east;
		[cgqc_convoy_vic_last] joinSilent _group_last;
		crew cgqc_convoy_vic_last joinSilent _group_last;


		// Compile all units
		cgqc_convoy_all_units pushBack cgqc_convoy_vic_lead;
		{cgqc_convoy_all_units pushBack _x} forEach crew cgqc_convoy_vic_lead;
		cgqc_convoy_all_units pushBack cgqc_convoy_vic_troops;
		{cgqc_convoy_all_units pushBack _x} forEach crew cgqc_convoy_vic_troops;
		cgqc_convoy_all_units pushBack cgqc_convoy_vic_vip;
		{cgqc_convoy_all_units pushBack _x} forEach crew cgqc_convoy_vic_vip;
		cgqc_convoy_all_units pushBack cgqc_convoy_vic_last;
		{cgqc_convoy_all_units pushBack _x} forEach crew cgqc_convoy_vic_last;

		// create the logic (alternative to placing a synchronized module named Convoy_01)
		_logicCenter_01 = createCenter sideLogic;
		_logicGroup_01 = createGroup _logicCenter_01;
		Convoy_01 = _logicGroup_01 createUnit ["Logic", [0,0,0], [], 0, "NONE"];
		Convoy_01 setVariable ["maxSpeed", _speed];
		Convoy_01 setVariable ["convSeparation", 10];
		Convoy_01 setVariable ["stiffnessCoeff", 0.2]; //How much lead brakes to keep separation
		Convoy_01 setVariable ["dampingCoeff", 0.4]; // How much acceleration to keep separation
		Convoy_01 setVariable ["curvatureCoeff", 0.3]; // How much braking for winding roads
		Convoy_01 setVariable ["stiffnessLinkCoeff", 0.3]; // How much followers accelerate/brake
		Convoy_01 setVariable ["pathFrequecy", 0.05];
		Convoy_01 setVariable ["speedFrequecy", 0.2];
		Convoy_01 setVariable ["speedModeConv", "NORMAL"];
		Convoy_01 setVariable ["behaviourConv", "pushThroughContact"];
		Convoy_01 setVariable ["debug", false];

		// create the convoy
		call{ 0 = [Convoy_01,[cgqc_convoy_vic_lead,cgqc_convoy_vic_troops,cgqc_convoy_vic_vip, cgqc_convoy_vic_last]] execVM "\nagas_Convoy\functions\fn_initConvoy.sqf" };

		// Set waypoint on map target_2
		_group_lead addWaypoint [cgqc_convoy_end, 0];
		[_group_lead, 1] setWaypointType "MOVE";
		hint "Convoy created";
		sleep 1;
		_group_lead addWaypoint [cgqc_convoy_end, 0];
		[_group_lead, 1] setWaypointType "MOVE";
	};
	case "clear": {
		{deleteVehicle _x;} forEach cgqc_convoy_all_units;
		{deleteVehicle _x;} forEach allDead;
	};
	case "stop": {
		["clear"] execVm "convoy.sqf";
		cgqc_convoy = false;
	};
	default { };
};

/*

// create the logic (alternative to placing a synchronized module named Convoy_01)
_logicCenter_01 = createCenter sideLogic;
_logicGroup_01 = createGroup _logicCenter_01;
Convoy_01 = _logicGroup_01 createUnit ["Logic", [0,0,0], [], 0, "NONE"];
Convoy_01 setVariable ["maxSpeed", 40];
Convoy_01 setVariable ["convSeparation", 35];
Convoy_01 setVariable ["stiffnessCoeff", 0.2];
Convoy_01 setVariable ["dampingCoeff", 0.6];
Convoy_01 setVariable ["curvatureCoeff", 0.3];
Convoy_01 setVariable ["stiffnessLinkCoeff", 0.1];
Convoy_01 setVariable ["pathFrequecy", 0.05];
Convoy_01 setVariable ["speedFrequecy", 0.2];
Convoy_01 setVariable ["speedModeConv", "NORMAL"];
Convoy_01 setVariable ["behaviourConv", "pushThroughContact"];
Convoy_01 setVariable ["debug", false];

// create the convoy
call{ 0 = [Convoy_01,[vehicleLead,vehicle2,vehicle3]] execVM "\nagas_Convoy\functions\fn_initConvoy.sqf" };

// stop the convoy without erasing its waypoints
Convoy_01 setVariable ["maxSpeed", 0];
sleep 5; // wait for all vehicles to stop

// disband the convoy
vehicleLead setVariable ["convoy_terminate", true];
sleep .5; // wait for script to finish

// create a new convoy with only the first two vehicles
call{ 0 = [Convoy_01,[vehicleLead,vehicle2]] execVM "\nagas_Convoy\functions\fn_initConvoy.sqf" };

// resume
Convoy_01 setVariable ["maxSpeed", 40];

*/