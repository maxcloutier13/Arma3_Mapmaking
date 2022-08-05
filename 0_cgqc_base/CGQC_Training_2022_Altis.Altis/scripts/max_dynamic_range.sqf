// Here we go. This is some sweet stuff.
waitUntil {
	!isNull player
};

// Activate Alt+click teleport
/*
	["teleportHandler", "onMapSingleClick", {
		if (_alt) then {
			player setPosATL _pos;
		};
	}] call BIS_fnc_addStackedEventHandler;
*/

TrainingCourse_TargetList = [];
TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
TrainingCourse_BulletCameraAbort = false;

TrainingCourse_ShotsFired = 0;
TrainingCourse_TargetsHit = 0;
TrainingCourse_AverageDistance = 0;
TrainingCourse_AverageTargetScore = 0;
TrainingCourse_AverageImpactDeviation = 0;

/*
	range_act1 = player addaction [("<t color=""#FF4444"">" + "Open Virtual Arsenal" + "</t>"), {
		["Open", true] call ace_arsenal_fnc_initBox
	}, "", 0, false, false];
*/
range_act1 = player addaction [("<t color=""#FF4444"">" + "Open Virtual Arsenal" + "</t>"), {
	nul=execVM "scripts\max_dynamic_range_off.sqf";
}, "", 0, false, false];
range_act2 = player addaction [("<t color=""#BBBBBB"">" + "---Reset statistiques" + "</t>"), "scripts\fnc_reset_stats.sqf", "", 0, false, false];
range_act3 = player addaction [("<t color=""#BBBBBB"">" + "--Enlever les cibles" + "</t>"), "scripts\fnc_generate_targets.sqf", ["", 0, true, 50, 1500], 0, false, false];
range_act4 = player addaction [("<t color=""#BBBBBB"">" + "--Voir impact" + "</t>"), "scripts\fnc_check_impact.sqf", "", 0, false, false];
range_act5 = player addaction [("<t color=""#BBBBBB"">" + "--Changer le vent" + "</t>"), {
	setWind [random 4, random 4, true]
}, "", 0, false, false];
range_act8 = player addaction [("<t color=""#559999"">" + "Cible standard" + "</t>"), "scripts\fnc_create_target.sqf", ["TargetP_Inf2_Acc2_NoPop_F", false, false], 0, false, false];
range_act9 = player addaction [("<t color=""#559999"">" + "Cible Popup" + "</t>"), "scripts\fnc_create_target.sqf", ["TargetP_Inf2_Acc2_F", false, false], 0, false, false];
range_act10 = player addaction [("<t color=""#559999"">" + "Cible mouvante" + "</t>"), "scripts\fnc_create_target.sqf", ["TargetP_Inf2_Acc2_F", false, true], 0, false, false];
range_act16 = player addaction [("<t color=""#999999"">" + "Cibles aléatoire (Courte portée)" + "</t>"), "scripts\fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 100, false, 15, 500], 0, false, false];
range_act17 = player addaction [("<t color=""#999999"">" + "Cibles aléatoire (Moyenne portée)" + "</t>"), "scripts\fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 250, false, 50, 1500], 0, false, false];
range_act18 = player addaction [("<t color=""#999999"">" + "Cibles aléatoire (Longue portée)" + "</t>"), "scripts\fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 500, false, 100, 2500], 0, false, false];
// range_act11 = player addaction [("<t color=""#55CC66"">" + "Add Steel Plate" + "</t>"), "scripts\fnc_create_target.sqf", ["Land_Target_Oval_F", false, false], 0, false, false];
// range_act12 = player addaction [("<t color=""#55CC66"">" + "Add balloon target" + "</t>"), "scripts\fnc_create_balloon_target.sqf", ["Land_Balloon_01_water_F", false, false], 0, false, false];
range_act13 = player addaction [("<t color=""#CCAA44"">" + "Traçage de la balle" + "</t>"), "scripts\fnc_toggle_path_tracing.sqf", "", 0, false, false];
range_act14 = player addaction [("<t color=""#CCAA44"">" + "Caméra" + "</t>"), "scripts\fnc_toggle_bullet_camera.sqf", "", 0, false, false];
// player addaction [("<t color=""#AA9977"">" + "King of the hill" + "</t>"), "fnc_king_of_the_hill.sqf", "", 0, false, false];
range_act6 = player addaction [("<t color=""#995599"">" + "DANGER - Soldat" + "</t>"), "scripts\fnc_create_soldier.sqf", ["O_G_Soldier_F", false, false, false], 0, false, false];
range_act7 = player addaction [("<t color=""#995599"">" + "DANGER - Patrouille" + "</t>"), "scripts\fnc_create_soldier.sqf", ["I_G_Soldier_F", false, true, true], 0, false, false];
range_act15 = player addaction [("<t color=""#559999"">" + "DANGER - Char blindé" + "</t>"), "scripts\fnc_create_target.sqf", ["O_MBT_02_cannon_F", true, false], 0, false, false];
// player addaction [("<t color=""#559999"">" + "Tank Targets" + "</t>"), "fnc_generate_targets.sqf", ["O_MBT_02_cannon_F", 50, true, 50, 1500], 0, false, false];

range_event1 = player addEventHandler ["fired", {
	_this execVM "scripts\fnc_bullet_trace.sqf"
}];
range_event2 = player addEventHandler ["fired", {
	_this execVM "scripts\fnc_bullet_camera.sqf"
}];

Projectile_Impact_Aux = "Sign_Sphere10cm_F" createVehicle [0, 0, 0];