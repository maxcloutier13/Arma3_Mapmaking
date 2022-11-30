
_action = [ "menu_koth_1", "Activer - Tour:1", "", {execVM "scripts\koth_spawn_1.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
_action = [ "menu_koth_1", "Désactiver - Tour:1", "", {execVM "scripts\koth_spawn_1_clr.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_koth_1", "Activer - Toutes les tours", "", {execVM "scripts\koth_spawn_all.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
_action = [ "menu_koth_1", "Désactiver - Toutes les tours", "", {execVM "scripts\koth_spawn_all_clr.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ koth_laptop_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;


// Mk1 Camo Switcher ---------------------------------------------------------------------------------------------------------
_action = [ "menu_mk1_camo", "Change de Camo", "CGQC_2022\textures\cgqc_ace_icon", {""}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Base/Training uniform 
_action = [ "menu_mk1_camo_base", "Training - Vert", "", {["tan"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Desert uniform 
_action = [ "menu_mk1_camo_desert", "Desert", "", {["desert"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Multicam uniform 
_action = [ "menu_mk1_camo_multicam", "Multicam", "", {["mcam"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Woodland uniform 
_action = [ "menu_mk1_camo_woodland", "Cadpat", "", {["cadpat"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Black uniform 
_action = [ "menu_mk1_camo_black", "Black", "", {["black"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;
// Winter uniform 
_action = [ "menu_mk1_camo_winter", "Winter", "", {["white"] execVM "\scripts\aa_camo_switch.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [ _this, 0, ["ACE_MainActions", "menu_mk1_camo"], _action ] call  ace_interact_menu_fnc_addActionToObject;




// Time skipper
_action = [ "menu_timeskip_1", "Skip: 1 heure", "", {[1] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ timeskipper_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_timeskip_3", "Skip: 3 heures", "", {[3] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ timeskipper_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_timeskip_6", "Skip: 6 heures", "", {[6] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ timeskipper_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
_action = [ "menu_timeskip_12", "Skip: 12 heures", "", {[12] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ timeskipper_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 


// KOTH laptop
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







 if (hasInterface) then { 
	_action = [ "menu_CAS", "CAS Training -> On", "", {[1] execVM "scripts\max_air_training.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
	_action = [ "menu_CAS_off", "CAS Training -> Off", "", {[0] execVM "scripts\max_air_training.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
	_action = [ "menu_timeskip", "Skip Time", "", {}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
	_action = [ "menu_timeskip_1", "Skip: 1 heure", "", {[1] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions", "menu_timeskip"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
	_action = [ "menu_timeskip_3", "Skip: 3 heures", "", {[3] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions", "menu_timeskip"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
	_action = [ "menu_timeskip_6", "Skip: 6 heures", "", {[6] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions", "menu_timeskip"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
	_action = [ "menu_timeskip_12", "Skip: 12 heures", "", {[12] execVM "scripts\cgqc_skiptime.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;     
	_adding = [ laptop_air, 0, ["ACE_MainActions", "menu_timeskip"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
};

[_this] execVM "scripts\set_unlimited.sqf";


cgqc_event_CAS = player addEventHandler ["GetInMan", { 
 params ["_unit", "_role", "_vehicle", "_turret"];
 execVM "scripts\set_unlimited.sqf"; 
}];

this addEventHandler [
	"GetIn", { 
		[] spawn {
			while {true} do	{
				(_this select 0) setVehicleAmmo 1;
				(_this select 0) setFuel 1;
			};
			sleep 5;
		};
	}
]; 




_action = [ "menu_med_light", "Patient: Blessé Léger", "", {[1] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ laptop_med_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_med_med", "Patient: Blessé Moyen", "", {[2] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ laptop_med_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
_action = [ "menu_med_heavy", "Patient: Blessé Grave", "", {[3] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ laptop_med_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 

_action = [ "menu_med_legs", "Patient: Membres Cassés", "", {[4] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ laptop_med_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 


_action = [ "menu_med_del", "Retirer tout les patients", "", {[0] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ laptop_med_1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject; 
this attachTo[campTable_1];


{
	[] call ace_volume_fnc_lowerVolume;
} forEach (allUnits inAreaArray thisTrigger);

{ 
 [] call ace_volume_fnc_lowerVolume; 
} forEach thisList;


null = [this] spawn { 
 _unit = (_this select 0); 
 sleep 1; 
 _unit action ['SwitchWeapon', _unit, _unit, 100]; 
};
this addAction ["Training parachute: Saut 800m", "scripts\parachute_training.sqf", [800], 1, false, true, "", "_this distance _target < 3"]; 
this addAction ["Training parachute: Saut 3000m", "scripts\parachute_training.sqf", [3000], 1, false, true, "", "_this distance _target < 3"]; 
this addAction ["Training parachute: Saut 5000m", "scripts\parachute_training.sqf", [5000], 1, false, true, "", "_this distance _target < 3"];

null = [this] spawn { 
 _unit = (_this select 0); 
 sleep 1; 
 _unit action ['SwitchWeapon', _unit, _unit, 100]; 
};
_action = [ "menu_jump", "Training parachute", "", {}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_jump_800", "Jump: 800m", "", {[800] execVM "scripts\parachute_training.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_jump"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_jump_3000", "Jump: 3000m", "", {[3000] execVM "scripts\parachute_training.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_jump"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_jump_5000", "Jump: 800m", "", {[5000] execVM "scripts\parachute_training.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_jump"], _action ] call  ace_interact_menu_fnc_addActionToObject;



_source = _this select 0;
_source addAction ["Teleport: Base Principale", "scripts\teleport.sqf", [tp_spawn], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Aéroport",  "scripts\teleport.sqf", [tp_airport], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Heliport", "scripts\teleport.sqf", [tp_heli], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: CAS Training", "scripts\teleport.sqf", [tp_cas], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Vehicle circuit", "scripts\teleport.sqf", [tp_vic], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Sniping range", "scripts\teleport.sqf", [tp_snipe], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Weapons Range", "scripts\teleport.sqf", [tp_range], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: 9-hole Range", "scripts\teleport.sqf", [tp_9hole], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: CQC Training", "scripts\teleport.sqf", [tp_cqc], 1, false, true, "", "_this distance _target < 3"];
Dostop _source;

_source = _this select 0;
_action = [ "menu_tp", "Teleport", "", {}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_spawn", "Spawn Warehouse", "", {[tp_spawn] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_airport", "Aéroport", "", {[tp_airport] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_heliport", "Héliport", "", {[tp_heli] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_CAS", "Training: CAS", "", {[tp_cas] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_vic", "Training: Véhicules terrestres", "", {[tp_vic] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_snipe", "Tir: Sniping", "", {[tp_snipe] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_weapons", "Tir: Armes diverses", "", {[tp_range] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_9hole", "Tir: 9-hole", "", {[tp_9hole] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_cqc", "Training: CQC", "", {[tp_cqc] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_para", "Training: Parachute", "", {[tp_para] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_tp_med", "Training: Médical", "", {[tp_med] execVM "scripts\teleport.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_tp"], _action ] call  ace_interact_menu_fnc_addActionToObject;
Dostop _source;




_action = [ "menu_seb_spawn", "Holo: Spawn Warehouse", "", {[1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_heli", "Holo: Heliport", "", {[2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_snipe", "Holo: Sniper Training", "", {[3] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_vic", "Holo: Vehicle Training", "", {[4] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_weap", "Holo: Weapon range", "", {[5] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_house", "Holo: House", "", {[6] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_island", "Holo: Island", "", {[7] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_stop", "Holo: Stop", "", {[0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;