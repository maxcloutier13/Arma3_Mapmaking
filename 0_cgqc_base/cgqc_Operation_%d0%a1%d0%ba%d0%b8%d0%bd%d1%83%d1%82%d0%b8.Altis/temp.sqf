if (hasInterface) then {
	this addAction ["Advanced sniping mode->ON", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "scripts\max_dynamic_range.sqf";
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode->OFF", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "scripts\max_dynamic_range_off.sqf";
	}, [], 10, true, true];
};

hintSilent format["RemV: %1 m/s\nDistance: %2 m\nScore: %3/5\n\n---- Moyenne ----\nScore: %4/5\nPrécision: %5/100\nScore: %6/100",

	hintSilent format["RemV: %1 m/s\nDistance: %2 m\nTarget score: %3/5\n\n---- Average ----\nTarget score: %4/5\nAccuracy: %5/100\nScore: %6/100",
	round(_velocity call BIS_fnc_magnitude), round(_distance * 10) / 10, _targetScore, round(TrainingCourse_AverageTargetScore * 100) / 100, round(_accuracy * 10000) / 100, round(_score * 100) / 100];
} else {
	hintSilent format["RemV: %1 m/s\nDistance: %2 m\n\n---- Average ----\nAccuracy: %3/100\nScore: %4/100",
	round(_velocity call BIS_fnc_magnitude), round(_distance * 10) / 10, round(_accuracy * 10000) / 100, round(_score * 100) / 100];
};

// CGQC Teleport
this addAction ["Teleport vers: Airport", "scripts\teleportation1.sqf", [], 1, false, true, "", "_this distance _target < 3"];
this addAction ["Teleport vers: Base Principale", "scripts\teleportation2.sqf", [], 1, false, true, "", "_this distance _target < 3"];
this addAction ["Teleport vers: Karting", "scripts\teleportation3.sqf", [], 1, false, true, "", "_this distance _target < 3"];
this addAction ["Teleport vers: Heliport", "scripts\teleportation4.sqf", [], 1, false, true, "", "_this distance _target < 3"];
this addAction ["Teleport vers: Formation:Sniping", "scripts\teleportation5.sqf", [], 1, false, true, "", "_this distance _target < 3"];

// Medical training 

call{
	this addAction["Nouveau patient", "scripts\createpatient.sqf"];
	this addAction["Enlever le patient", "{
		if ((typeOf _x == 'b_survivor_F') && (!isPlayer _x)) then {
			deleteVehicle _x
		}
	} forEach allUnits;
	{
		if ((typeOf _x == 'b_g_survivor_F') && (!isPlayer _x)) then {
			deleteVehicle _x
		}
	} forEach allUnits;
"];
this attachTo[campTable];
}

// Delete patient 
this addAction["Nouveau patient", "scripts\createpatient.sqf"];
this addAction["Retirer tout les patients", "scripts\deletepatient.sqf"];
this attachTo[campTable];

// Iterate trough items within trigger area 
forEach thislist

// Check if parachute
if (backpack player isEqualTo "B_Parachute") then {
	player moveInCargo insertion_plane;
};
if (backpack player isEqualTo "B_Parachute") then {
	this addAction ["Training parachute: Saut 800m", "scripts\parachute_training.sqf", [800], 1, false, true, "", "_this distance _target < 3"];
	this addAction ["Training parachute: Saut 3000m", "scripts\parachute_training.sqf", [3000], 1, false, true, "", "_this distance _target < 3"];
	this addAction ["Training parachute: Saut 5000m", "scripts\parachute_training.sqf", [5000], 1, false, true, "", "_this distance _target < 3"];
};

// 
if (isTouchingGround player) then {};
deleteVehicle (class object du parachute)

// Loadout selection
this addAction ["HQ", "loadouts\mk1_hq.sqf"];
this addAction ["Team/Squad Leader", "loadouts\mk1_tl.sqf"];
this addAction ["Team/Squad Leader CQB", "loadouts\mk1_tl_cqb.sqf"];
this addAction ["Rifleman - Carbine", "loadouts\mk1_rifleman_carbine.sqf"];
this addAction ["Rifleman - CQB", "loadouts\mk1_rifleman_cqb.sqf"];
this addAction ["Medic", "loadouts\mk1_medic.sqf"];
this addAction ["Engineer", "loadouts\mk1_engineer.sqf"];
this addAction ["MG (Light)", "loadouts\mk1_lmg.sqf"];
this addAction ["MG (Heavy)", "loadouts\mk1_hmg.sqf"];
this addAction ["Marksman", "loadouts\mk1_marksman.sqf"];
this addAction ["Sniper", "loadouts\mk1_sniper.sqf"];
this addAction ["Anti-Tank (MAAWS)", "loadouts\mk1_at_maaws.sqf"];
this addAction ["Anti-Tank (Javelin)", "loadouts\mk1_at_javelin.sqf"];
this addAction ["Helicopter Pilot", "loadouts\mk1_heli_pilot.sqf"];
this addAction ["Helicopter Crew", "loadouts\mk1_heli_crew.sqf"];
this addAction ["Jet Pilot", "loadouts\mk1_at_jet_pilot.sqf"];
this addAction ["Tank Driver/Crew", "loadouts\mk1_driver_tank.sqf"];

// Holster on init
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};

// Holster + set rank
// set rank according to player name prefix
// Subalternes: Sdt-Cpl-CplC
// Sous officiers: Sgt-Adju-AdjuM-AdjuC
// Officiers: Slt-Lt.-Capt-Maj-Lcol-Col
null = execVM "scripts\initialize_player.sqf";

_text = ("<t size='2' >Sup Cloutier</t>");


this addAction ["Cible proche", "scripts\vest_test.sqf", [1]];
this addAction ["Cible loin", "scripts\vest_test.sqf", [2]];


// Shoothouse
- Switch ->ON 
- Pick random position in list 
- Spawn target there 
- 

cqb_1_target_list = [];  
this addAction ["CQB: Random targets", "null = execVM 'scripts\cqb_spawn_1.sqf'",[1]]; 
SignAd_SponsorS_Vrana_F




cqb_2_target_list = [];   
this addAction ["CQB 2: Commencer la session", "null = execVM 'scripts\cqb_spawn_2.sqf'",[1]]; 
this addAction ["Enlever les cibles", "{deleteVehicle _x} forEach cqb_2_target_list;"]; 

// --- Ace actions ---------------------------------------------------------------------------------------------------------
_action = [ "menu_cgqc_koth", "CGQC", "textures\cgqc_ace_icon", {""}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_koth_1", "Spawn KOTH tour 1", "", {""}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;

_action = [ "menu_koth_1", "Spawn KOTH tour 1", "", {execVM "\cgqc\factions\koth_spawn_1.sqf"}, {true} ] call ace_interact_menu_fnc_createAction; 
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;


// ------ Get heli
_action = [ "max_getheli", "Get heli", "", {execVM "\cgqc\factions\get_heli.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ player, 1, ["ACE_SelfActions","menu_cloutier", "menu_spawn"], _action ] call ace_interact_menu_fnc_addActionToObject;	

// KOTH Laptop
koth_1_target_list = []; 
koth_2_target_list = [];
koth_3_target_list = [];
koth_4_target_list = [];
_action = [ "menu_koth_1", "Activer - Tour:1", "", {execVM "scripts\koth_spawn_1.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;   
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_koth_1", "Désactiver - Tour:1", "", {execVM "scripts\koth_spawn_1_clr.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;   
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_koth_1", "Activer - Toutes les tours", "", {execVM "scripts\koth_spawn_all.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;   
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_koth_1", "Désactiver - Toutes les tours", "", {execVM "scripts\koth_spawn_all_clr.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;   
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;




this addAction ["Teleport KOTH Nord-Ouest", "scripts\teleportation_koth_1.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
this addAction ["Teleport KOTH Nord-Est", "scripts\teleportation_koth_2.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
this addAction ["Teleport KOTH Sud-Ouest", "scripts\teleportation_koth_3.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
this addAction ["Teleport KOTH Sud-Est", "scripts\teleportation_koth_4.sqf", [], 1, false, true, "", "_this distance _target < 3"];