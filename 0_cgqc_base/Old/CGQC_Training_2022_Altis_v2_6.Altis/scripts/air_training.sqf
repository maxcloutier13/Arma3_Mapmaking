_arguments = _this select 3;
_type = _arguments select 0;
_spawn_truck = ["rhs_gaz66_vdv", "rhs_kamaz5350_vdv", "rhs_typhoon_vdv", "RHS_Ural_VDV_01", "rhs_zil131_vdv"];
_spawn_apc = ["rhs_btr70_vdv", "rhs_btr80_vdv", "rhsgref_ins_btr70"];
_spawn_tank = ["rhs_t72be_tv", "rhs_t72ba_tv", "rhs_t80", "rhs_t80um"];
_vehicle_spawn_range = 1000;
_spawn_now = "";
_spawn_type = "";
_positions = [];
_skip = 0;
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [air_training_zone, ["SignAd_Sponsor_ARMEX_F"], 20];

switch (_type) do {
	case "delete_all":{
		{
			deleteVehicle _x
		} forEach air_target_list;
		_skip = 1;
		hint "Deleted all targets";
	};
	case "static_truck": {
		_spawn_now = selectRandom _spawn_truck;
		_spawn_type = "static";
		hint "Spawn static truck";
	};
	case "patrol_truck": {
		_spawn_now = selectRandom _spawn_truck;
		_spawn_type = "patrol";
		hint "Spawn patrol truck";
	};
	case "static_apc": {
		_spawn_now = selectRandom _spawn_apc;
		_spawn_type = "static";
		hint "Spawn static APC";
	};
	case "patrol_apc": {
		_spawn_now = selectRandom _spawn_apc;
		_spawn_type = "patrol";
		hint "Spawn patrol APC";
	};
	case "static_tank": {
		_spawn_now = selectRandom _spawn_tank;
		_spawn_type = "static";
		hint "Spawn static tank";
	};
	case "patrol_tank": {
		_spawn_now = selectRandom _spawn_tank;
		_spawn_type = "patrol";
		hint "Spawn patrol tank";
	};
	default {
		hint "woops";
	};
};

if (_skip == 1) then {
	hint "skip all";
} else {
	// spawn whatever was chosen
	_air_group = createGroup [east, true];
	_air_group setBehaviour "CARELESS";
	_unit = "";
	_random_pos = selectRandom _positions;
	_unit = createVehicle [ _spawn_now, getPosATL _random_pos, [], _vehicle_spawn_range, "NONE"];
	createVehicleCrew _unit;
	_unit engineOn true;
	_unit setBehaviour "CARELESS";
	// Add to target list
	air_target_list pushBack _unit;
	{
		air_target_list pushBack _x;
	} forEach crew _unit;
	switch (_spawn_type) do {
		case "static": {
			doStop _unit;
			hint "static";
		};
		case "patrol": {
			[group _unit, getPosATL air_training_zone, 1000] call BIS_fnc_taskPatrol;
			hint "patrol";
		};
		default {
			hint "woops";
		};
	};
	
};