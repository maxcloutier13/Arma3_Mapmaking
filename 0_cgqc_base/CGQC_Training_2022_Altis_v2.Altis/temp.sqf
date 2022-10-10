
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




