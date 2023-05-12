_mode = _this select 0;

switch (_mode)
do
{
	case 0:
	{
		hint "air training off";
		// Remove all targets 
		{
			deleteVehicle _x
		} forEach air_target_list;
		// Remove all dead Bodies 
		{
			deleteVehicle _x
		} forEach allDead;
		air_target_list = []; 
		air_target_danger = false; 
		player removeAction air_act1;
		player removeAction air_act2;
		player removeAction air_act3;
		player removeAction air_act4;
		player removeAction air_act5;
		player removeAction air_act6;
		player removeAction air_act7;
		player removeAction air_act8;
		player removeAction air_act9;
		player removeAction air_act10;
		player removeAction air_act11;
		player removeAction air_act12;
		player removeAction air_act13;
		player removeAction air_act14;
		player removeAction air_act15;
	};
	case 1:
	{
		hint "air training on";
		air_target_list = []; 
		air_target_danger = false;
		air_act1 = player addaction [("<t color=""#FF4444"">" + "--- Training: OFF" + "</t>"), "scripts\max_air_training_off.sqf", "", 0, false, false];
		air_act3 = player addaction [("<t color=""#999999"">" + "-- Delete targets" + "</t>"), "scripts\air_training.sqf", ["delete_all"], 0, false, false];
		air_act4 = player addaction [("<t color=""#999999"">" + "-- Refuel/Reload" + "</t>"), "scripts\air_training.sqf", ["reload"], 0, false, false];
		air_act5 = player addaction [("<t color=""#a4c639"">" + "Truck statique" + "</t>"), "scripts\air_training.sqf", ["static_truck"], 0, false, false];
		air_act6 = player addaction [("<t color=""#a4c639"">" + "Truck en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_truck"], 0, false, false];
		air_act7 = player addaction [("<t color=""#7fffd4"">" + "APC statique" + "</t>"), "scripts\air_training.sqf", ["static_apc"], 0, false, false];
		air_act8 = player addaction [("<t color=""#7fffd4"">" + "APC en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_apc"], 0, false, false];
		air_act9 = player addaction [("<t color=""#cb4154"">" + "Blindé statique" + "</t>"), "scripts\air_training.sqf", ["static_tank"], 0, false, false];
		air_act10 = player addaction [("<t color=""#cb4154"">" + "Blindé en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_tank"], 0, false, false];
		air_act11 = player addaction [("<t color=""#007aa5"">" + "Infanterie en mouvement" + "</t>"), "scripts\air_training.sqf", ["infantry"], 0, false, false];
		air_act12 = player addaction [("<t color=""#e30022"">" + "AA - Infanterie" + "</t>"), "scripts\air_training.sqf", ["aa"], 0, false, false];
		air_act13 = player addaction [("<t color=""#e30022"">" + "AA - ZU-23" + "</t>"), "scripts\air_training.sqf", ["zu"], 0, false, false];
		air_act14 = player addaction [("<t color=""#e30022"">" + "AA - Shiilka" + "</t>"), "scripts\air_training.sqf", ["shiilka"], 0, false, false];
		air_act15 = player addaction [("<t color=""#e30022"">" + "AA - Tunguska" + "</t>"), "scripts\air_training.sqf", ["tunguska"], 0, false, false];
		air_act2 = player addaction [("<t color=""#cc0000"">" + "--- DangerMode: turn ON" + "</t>"), "scripts\air_training.sqf", ["danger_on"], 0, false, false];
	};
	default
	{
		hint "woops";
	};
};
