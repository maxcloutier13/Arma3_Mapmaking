cgqc_defense_timer = 0;
cgqc_defense_mode = false;
cgqc_defense_start = false;
cgqc_defense_target_list = [];
cgqc_defense_targets = [defense_mortar_pos_1,defense_mortar_pos_2,defense_mortar_pos_3,defense_mortar_pos_4,defense_mortar_pos_5];
hint "Something doesn't smell right...";
sleep 10;

[] spawn {
	while {cgqc_defense_timer < 600} do {
		sleep 1;
		cgqc_defense_timer = cgqc_defense_timer + 1;
	};
	// Finished!
	hint "Allright. The wave is slowing down.";
	cgqc_defense_mode = false;
};

[] spawn {
	waitUntil {sleep 1;cgqc_defense_start};
	//Spawn mortar guy 
	cgqc_defense_mortar = "uns_m1941_82mm_mortarVC" createVehicle (position defense_mortar_pos);
	cgqc_defense_mortar1 = "uns_m1941_82mm_mortarVC" createVehicle (position defense_mortar_pos_6);
	cgqc_defense_mortar2 = "uns_m1941_82mm_mortarVC" createVehicle (position defense_mortar_pos_7);
	cgqc_defense_mortar3 = "uns_m1941_82mm_mortarVC" createVehicle (position defense_mortar_pos_8);
	cgqc_defense_mortar4 = "uns_m1941_82mm_mortarVC" createVehicle (position defense_mortar_pos_9);
	createVehicleCrew cgqc_defense_mortar;
	createVehicleCrew cgqc_defense_mortar1;
	createVehicleCrew cgqc_defense_mortar2;
	createVehicleCrew cgqc_defense_mortar3;
	createVehicleCrew cgqc_defense_mortar4;
	//Shoot around the player 
	_random_target = selectRandom cgqc_defense_targets;
	cgqc_defense_mortar doArtilleryFire [getPos _random_target, "uns_8Rnd_82mmHE_M1941", 2];
	cgqc_defense_targets = cgqc_defense_targets - [_random_target];
	_random_target = selectRandom cgqc_defense_targets;
	sleep 2;
	cgqc_defense_mortar1 doArtilleryFire [getPos _random_target, "uns_8Rnd_82mmHE_M1941", 3];
	cgqc_defense_targets = cgqc_defense_targets - [_random_target];
	_random_target = selectRandom cgqc_defense_targets;
	cgqc_defense_mortar2 doArtilleryFire [getPos _random_target, "uns_8Rnd_82mmHE_M1941", 2];
	cgqc_defense_targets = cgqc_defense_targets - [_random_target];
	sleep 1;
	_random_target = selectRandom cgqc_defense_targets;
	cgqc_defense_mortar3 doArtilleryFire [getPos _random_target, "uns_8Rnd_82mmHE_M1941", 1];
	cgqc_defense_targets = cgqc_defense_targets - [_random_target];
	_random_target = selectRandom cgqc_defense_targets;
	cgqc_defense_mortar4 doArtilleryFire [getPos _random_target, "uns_8Rnd_82mmHE_M1941", 3]; 
	sleep 20;
	deleteVehicle cgqc_defense_mortar;
	deleteVehicle cgqc_defense_mortar1;
	deleteVehicle cgqc_defense_mortar2;
	deleteVehicle cgqc_defense_mortar3;
	deleteVehicle cgqc_defense_mortar4;
	hint "Here they come!!!";
};

[] spawn {
	cgqc_defense_mode = true;
	while {cgqc_defense_mode} do {
		_random_amount = selectRandom [1,2,3];
		for "_i" from 1 to _random_amount do { 
			_random_spawn = selectRandom [cgqc_orient_hunters, cgqc_orient_team, cgqc_orient_team, cgqc_orient_squad];
			_randomPos = [getPos player, 200, 300, 5, 0, 0, 0, [], []] call BIS_fnc_findSafePos;
			_randomTask = selectRandom [1,2,3];
			cgqc_defense_group = [ _randomPos, east, _random_spawn] call BIS_fnc_spawnGroup;
			cgqc_defense_group setBehaviour "AWARE";
			switch (_randomTask) do {
				case 1: {[cgqc_defense_group, getPos player, false, 10, 15, false] spawn lambs_wp_fnc_taskAssault;};
				case 2: {[cgqc_defense_group, 1000, 15, [], [], true, false, false] spawn lambs_wp_fnc_taskHunt;};
				case 3: {[cgqc_defense_group, 1000, 15, [], [], true] spawn lambs_wp_fnc_taskRush;};
			};
			// add all units to target list
			{cgqc_defense_target_list pushBack _x;} forEach units cgqc_defense_group;
		};
		//hint format ["%1 new groups", _random_amount];
		sleep 120;
	};
	// Finished!
	hint "Allright. The wave is slowing down.";
	waitUntil {sleep 1;cgqc_defense_done};
	hint "Good job viper. They're all dead";
	//Delete all units 
	{deleteVehicle _x;} forEach cgqc_defense_target_list;
	{deleteVehicle _x;} forEach allDead;
	{deleteVehicle _x;} forEach nearestObjects [getpos player, ["WeaponHolder", "GroundWeaponHolder"], 1000];

};
