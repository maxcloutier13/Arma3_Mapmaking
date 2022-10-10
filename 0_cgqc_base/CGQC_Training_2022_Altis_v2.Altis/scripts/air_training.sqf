_arguments = _this select 3;
_type = _arguments select 0;
_spawn_truck = ["rhs_gaz66_vdv", "rhs_kamaz5350_vdv", "rhs_typhoon_vdv", "RHS_Ural_VDV_01", "rhs_zil131_vdv", "UK3CB_AAF_O_Tigr_FFV", "UK3CB_AAF_O_GAZ_Vodnik", "rhs_gaz66o_vdv", "rhs_kraz255b1_flatbed_msv", "rhs_zil131_msv", "rhs_kamaz5350_vv", "UK3CB_ARD_O_GAZ_Vodnik_MedEvac"];
_spawn_apc = ["rhs_btr70_vdv", "rhs_btr80_vdv", "rhsgref_ins_btr70", "rhsgref_tla_btr60", "rhsgref_BRDM2UM_vmf", "UK3CB_O_G_BTR60", "UK3CB_O_G_BTR40", "UK3CB_O_G_BMP1", "UK3CB_O_G_MTLB_PKT", "UK3CB_O_G_BMP2", "rhsgref_BRDM2_ins", "rhsgref_BRDM2UM_ins", "UK3CB_O_MTLB_PKT_CHK", "UK3CB_NFA_O_BMP1", "UK3CB_AAF_O_BTR80", "UK3CB_AAF_O_BMP2K"];
_spawn_tank = ["rhs_t72be_tv", "rhs_t72ba_tv", "rhs_t80", "rhs_t80um", "rhs_t90sm_tv", "UK3CB_LDF_O_Leopard_Camo", "rhs_t90a_tv", "rhs_t72be_vdv_des", "rhs_t80um", "rhs_t72bc_vdv_des", "UK3CB_MDF_O_M60A3", "rhs_t72bd_tv", "UK3CB_O_G_T34", "rhs_sprut_vdv", "rhs_t80bv", "rhsgref_ins_t72bb", "rhs_t80a", "O_T_MBT_04_cannon_F", "UK3CB_O_T55_CHK", "UK3CB_NFA_O_T72B", "UK3CB_NAP_O_T55", "UK3CB_KRG_O_M60A3", "UK3CB_LDF_O_Leopard", "UK3CB_KDF_O_T55", "UK3CB_CHD_W_O_T34", "UK3CB_CHD_O_T72B"];
_vehicle_spawn_range = 2000;
_spawn_now = "";
_spawn_type = "";
_positions = [];
_skip = 0;
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [air_training_zone, ["SignAd_Sponsor_ARMEX_F"], 2000];

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