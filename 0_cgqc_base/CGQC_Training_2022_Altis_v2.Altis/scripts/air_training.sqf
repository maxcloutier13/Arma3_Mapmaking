_arguments = _this select 3;
_type = _arguments select 0;
_spawn_truck = ["rhs_gaz66_vdv", "rhs_kamaz5350_vdv", "rhs_typhoon_vdv", "RHS_Ural_VDV_01", "rhs_zil131_vdv", "UK3CB_AAF_O_Tigr_FFV", "UK3CB_AAF_O_GAZ_Vodnik", "rhs_gaz66o_vdv", "rhs_kraz255b1_flatbed_msv", "rhs_zil131_msv", "rhs_kamaz5350_vv", "UK3CB_ARD_O_GAZ_Vodnik_MedEvac"];
_spawn_apc = ["rhs_btr70_vdv", "rhs_btr80_vdv", "rhsgref_ins_btr70", "rhsgref_tla_btr60", "rhsgref_BRDM2UM_vmf", "UK3CB_O_G_BTR60", "UK3CB_O_G_BTR40", "UK3CB_O_G_BMP1", "UK3CB_O_G_MTLB_PKT", "UK3CB_O_G_BMP2", "rhsgref_BRDM2_ins", "rhsgref_BRDM2UM_ins", "UK3CB_O_MTLB_PKT_CHK", "UK3CB_NFA_O_BMP1", "UK3CB_AAF_O_BTR80", "UK3CB_AAF_O_BMP2K"];
_spawn_tank = ["rhs_t72be_tv", "rhs_t72ba_tv", "rhs_t80", "rhs_t80um", "rhs_t90sm_tv", "UK3CB_LDF_O_Leopard_Camo", "rhs_t90a_tv", "rhs_t72be_vdv_des", "rhs_t80um", "rhs_t72bc_vdv_des", "UK3CB_MDF_O_M60A3", "rhs_t72bd_tv", "UK3CB_O_G_T34", "rhs_sprut_vdv", "rhs_t80bv", "rhsgref_ins_t72bb", "rhs_t80a", "O_T_MBT_04_cannon_F", "UK3CB_O_T55_CHK", "UK3CB_NFA_O_T72B", "UK3CB_NAP_O_T55", "UK3CB_KRG_O_M60A3", "UK3CB_LDF_O_Leopard", "UK3CB_KDF_O_T55", "UK3CB_CHD_W_O_T34", "UK3CB_CHD_O_T72B"];
_spawn_aa_zu = ["UK3CB_ADA_O_Ural_Zu23", "UK3CB_ADA_O_V3S_Zu23", "UK3CB_ARD_O_Ural_Zu23", "UK3CB_CW_SOV_O_EARLY_Gaz66_ZU23", "UK3CB_CW_SOV_O_LATE_MTLB_ZU23"];
_spawn_aa_shiilka = ["rhs_zsu234_vdv_des", "UK3CB_O_G_ZsuTank", "rhsgref_ins_zsu234", "UK3CB_TKA_O_ZsuTank"];
_spawn_aa_tonguska =  ["UK3CB_CW_SOV_O_LATE_2S6_Tunguska", "UK3CB_CW_SOV_O_EARLY_2S6_Tunguska", "UK3CB_ARD_O_2S6M_Tunguska", "UK3CB_AAF_O_2S6M_Tunguska"];
_vehicle_spawn_range = 1500;
_player_vehicle = vehicle player;
_spawn_now = "";
_spawn_type = "";
_positions = [];
_infantry = 0;
_skip = 0;
_msg = "";
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [air_training_zone, ["SignAd_Sponsor_ARMEX_F"], 500];

switch (_type) do {
	case "danger_on":{
		air_target_danger = true;
		//Switch the actions
		player removeAction air_act2;
		air_act2 = player addaction [("<t color=""#e30022"">" + "--- DangerMode: ON" + "</t>"), "scripts\air_training.sqf", ["danger_off"], 0, false, false];
		_skip = 1;
		_msg = "DangerMode: ON";
	};
	case "danger_off":{
		air_target_danger = false;
		//Switch the actions
		player removeAction air_act2;
		air_act2 = player addaction [("<t color=""#e30022"">" + "--- DangerMode: OFF" + "</t>"), "scripts\air_training.sqf", ["danger_on"], 0, false, false];
		_skip = 1;
		_msg =  "DangerMode: OFF";
	};
	case "delete_all":{
		{
			deleteVehicle _x
		} forEach air_target_list;
		_skip = 1;
		_msg =  "Deleted all targets";
	};
	case "reload":{
		_player_vehicle setDamage 0;
		_player_vehicle setFuel 1;
		_player_vehicle setVehicleAmmo 1;
		_skip = 1;
		_msg =  "Vehicle refueled/rearmed";
	};
	case "static_truck": {
		_spawn_now = selectRandom _spawn_truck;
		_spawn_type = "static";
		_msg =  "Spawn static truck";
	};
	case "patrol_truck": {
		_spawn_now = selectRandom _spawn_truck;
		_spawn_type = "patrol";
		_msg =  "Spawn patrol truck";
	};
	case "static_apc": {
		_spawn_now = selectRandom _spawn_apc;
		_spawn_type = "static";
		_msg =  "Spawn static APC";
	};
	case "patrol_apc": {
		_spawn_now = selectRandom _spawn_apc;
		_spawn_type = "patrol";
		_msg =  "Spawn patrol APC";
	};
	case "static_tank": {
		_spawn_now = selectRandom _spawn_tank;
		_spawn_type = "static";
		_msg =  "Spawn static tank";
	};
	case "patrol_tank": {
		_spawn_now = selectRandom _spawn_tank;
		_spawn_type = "patrol";
		_msg =  "Spawn patrol tank";
	};
	case "infantry":{
		_infantry = 1;
		_spawn_type = "patrol";
		_msg =  "Spawn patrol Infantry";
	};
	case "aa":{
		_infantry = 2;
		_spawn_type = "patrol";
		_msg =  "Spawn AA infantry";
	};
	case "zu":{
		_spawn_now = selectRandom _spawn_aa_zu;
		_spawn_type = "static";
		_msg =  "Spawn AA ZU-23";
	};
	case "shiilka":{
		_spawn_now = selectRandom _spawn_aa_shiilka;
		_spawn_type = "static";
		_msg =  "Spawn AA Shiilka";
	};
	case "tunguska":{
		_spawn_now = selectRandom _spawn_aa_tonguska;
		_spawn_type = "static";
		_msg =  "Spawn AA Tunguska";
	};
	default {
		_msg =  "woops";
	};
};

if (_skip == 0) then {

	// spawn whatever was chosen
	_air_group = createGroup [east, true];
	_air_group setBehaviour "CARELESS";
	_unit = "";
	_random_pos = selectRandom _positions;

	switch (_infantry) do {
		case 1:{
			// Infantry
			_inf_patrol_group = [ getPosATL _random_pos, east, ["rhs_vdv_flora_sergeant", "rhs_vdv_flora_junior_sergeant", "rhs_vdv_flora_rifleman", "rhs_vdv_flora_machinegunner", "rhs_vdv_flora_at", "rhs_vdv_flora_strelok_rpg_assist", "rhs_vdv_flora_medic"]] call BIS_fnc_spawnGroup;
			[_inf_patrol_group, getPosATL _random_pos, 500] call BIS_fnc_taskPatrol;
			{
				air_target_list pushBack _x;
			} forEach units _inf_patrol_group;
		};
		case 2:{
			// AA Infantry
			_inf_patrol_group = [ getPosATL _random_pos, east, ["rhs_vdv_flora_sergeant", "rhs_vdv_flora_junior_sergeant", "rhs_vdv_flora_rifleman", "rhs_vdv_flora_machinegunner", "rhs_vdv_flora_aa", "rhs_vdv_flora_aa", "rhs_vdv_flora_medic"]] call BIS_fnc_spawnGroup;
			[_inf_patrol_group, getPosATL _random_pos, 500] call BIS_fnc_taskPatrol;
			{
				air_target_list pushBack _x;
			} forEach units _inf_patrol_group;
		};
		default {
			// Not infantry 
			_unit = createVehicle [ _spawn_now, getPosATL _random_pos, [], _vehicle_spawn_range, "NONE"];
			createVehicleCrew _unit;
			_unit engineOn true;
			if (air_target_danger == true) then {
				_unit setVehicleAmmo 1;
				_msg = _msg + " - Danger";
			}else{
				_unit setVehicleAmmo 0;
				_msg = _msg + " - Safe";
			};
				// Add to target list
			air_target_list pushBack _unit;
			{
				air_target_list pushBack _x;
			} forEach crew _unit;
			// Starts patrol if needed
			switch (_spawn_type) do {
				//case "static": {
					//hint "static";
				//};
				case "patrol": {
					[group _unit, getPosATL air_training_zone, 1000] call BIS_fnc_taskPatrol;
					//hint "patrol";
				};
				default {
					hint "woops";
				};
			};
		};
	};

	
};
//_msg = _msg + " -Targets:" + (count air_target_list);
hintSilent _msg;
sleep 5; 