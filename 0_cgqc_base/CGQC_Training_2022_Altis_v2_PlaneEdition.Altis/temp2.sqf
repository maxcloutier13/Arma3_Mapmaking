_action = [ "menu_seb_big", "Holo: Big", "", {}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_medium", "Holo: Medium", "", {}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_small", "Holo: Small", "", {}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;

_action = [ "menu_seb_spawn", "Holo: Spawn Warehouse", "", {[1,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_heli", "Holo: Heliport", "", {[2,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_snipe", "Holo: Sniper Training", "", {[3,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_vic", "Holo: Vehicle Training", "", {[4,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_weap", "Holo: Weapon range", "", {[5,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_house", "Holo: House", "", {[6,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_island", "Holo: Island", "", {[7,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;

_action = [ "menu_seb_spawn", "Holo: Spawn Warehouse", "", {[1,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_heli", "Holo: Heliport", "", {[2,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_snipe", "Holo: Sniper Training", "", {[3,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_vic", "Holo: Vehicle Training", "", {[4,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_weap", "Holo: Weapon range", "", {[5,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_house", "Holo: House", "", {[6,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_smenu_seb_mediumeb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_island", "Holo: Island", "", {[7,1] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_medium"], _action ] call  ace_interact_menu_fnc_addActionToObject;

_action = [ "menu_seb_spawn", "Holo: Spawn Warehouse", "", {[1,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_heli", "Holo: Heliport", "", {[2,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_snipe", "Holo: Sniper Training", "", {[3,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_vic", "Holo: Vehicle Training", "", {[4,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_weap", "Holo: Weapon range", "", {[5,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_house", "Holo: House", "", {[6,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_smenu_seb_mediumeb_big"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_seb_island", "Holo: Island", "", {[7,2] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions", "menu_seb_small"], _action ] call  ace_interact_menu_fnc_addActionToObject;

_action = [ "menu_seb_stop", "Holo: Stop", "", {[0,0] execVM "scripts\table.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;





_action = [ "menu_sniping_on", "Advanced sniping mode->ON", "", {execVM "scripts\max_dynamic_range.sqf";}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
_action = [ "menu_sniping_off", "Advanced sniping mode->OFF", "", {execVM "scripts\max_dynamic_range_off.sqf";}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;  
_action = [ "menu_sniping_wind_low", "Change Wind-> Low", "", {["cgqc_change_fucking_wind", ["low"]] call CBA_fnc_globalEvent;}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_sniping_wind_med", "Change Wind-> Medium", "", {["cgqc_change_fucking_wind", ["med"]] call CBA_fnc_globalEvent;}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_sniping_wind_hi", "Change Wind-> High", "", {["cgqc_change_fucking_wind", ["hi"]] call CBA_fnc_globalEvent;}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_sniping_wind_random", "Change Wind-> Random", "", {["cgqc_change_fucking_wind", ["random"]] call CBA_fnc_globalEvent;}, {true} ] call ace_interact_menu_fnc_createAction;    
_adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
this attachTo[shooting_bench];


