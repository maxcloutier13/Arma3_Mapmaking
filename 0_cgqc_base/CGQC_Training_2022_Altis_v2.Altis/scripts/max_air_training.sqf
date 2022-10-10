hint "air training";
air_target_list = []; 
air_act1 = player addaction [("<t color=""#FF4444"">" + "---Air training: OFF" + "</t>"), "scripts\max_air_training_off.sqf", "", 0, false, false];
air_act2 = player addaction [("<t color=""##999999"">" + "Delete targets" + "</t>"), "scripts\air_training.sqf", ["delete_all"], 0, false, false];
air_act3 = player addaction [("<t color=""#559999"">" + "Truck statique" + "</t>"), "scripts\air_training.sqf", ["static_truck"], 0, false, false];
air_act4 = player addaction [("<t color=""#559999"">" + "Truck en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_truck"], 0, false, false];
air_act5 = player addaction [("<t color=""#559999"">" + "APC statique" + "</t>"), "scripts\air_training.sqf", ["static_apc"], 0, false, false];
air_act6 = player addaction [("<t color=""#559999"">" + "APC en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_apc"], 0, false, false];
air_act7 = player addaction [("<t color=""#559999"">" + "Blindé statique" + "</t>"), "scripts\air_training.sqf", ["static_tank"], 0, false, false];
air_act8 = player addaction [("<t color=""#559999"">" + "Blindé en mouvement" + "</t>"), "scripts\air_training.sqf", ["patrol_tank"], 0, false, false];
//