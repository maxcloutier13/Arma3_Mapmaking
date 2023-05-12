cqb_house1_list = [];
cqb_house1_list_moving = [];
cqb_house1_list_static = [];
cqb_house1_list_civ = [];
cgqc_house1_on = false;
cqb_house1_target_nbr = 10;
cqb_house1_move = 0;
cqb_house1_timer = 0;
cqb_house1_civ = false;
cqb_house1_nade = false;
cqb_house1_tgt_move = 0;
cqb_house1_tgt_static = 0;
cqb_house1_hostile_class = ["O_G_Soldier_F", "O_G_Soldier_lite_F", "O_G_Soldier_SL_F"];
cqb_house1_civ_class = ["C_journalist_F", "C_Journalist_01_War_F"];
if (hasInterface) then {   
    _action = [ "menu_house1_clear", "Stop CQB", "", {[0] execVM 'scripts\cqb_house_1.sqf'}, {cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;    

    _action = [ "menu_house1_settings", "Show Current Settings", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_option", "Options", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    
    _action = [ "menu_house1_nbr", "Target number", "", {}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbr5", "+5", "", {[40] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbrm5", "-5", "", {[41] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbr10", "+10", "", {[42] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbrm10", "-10", "", {[43] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbr20", "+20", "", {[44] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nbrm20", "-20", "", {[45] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_nbr"], _action ] call  ace_interact_menu_fnc_addActionToObject;

    _action = [ "menu_house1_static", "Target movement", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nomove", "All static", "", {[50] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_static"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_m10", "10% move", "", {[51] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_static"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_m25", "25% move", "", {[52] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_static"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_m10", "50% move", "", {[53] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_static"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_m25", "75% move", "", {[54] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_static"], _action ] call  ace_interact_menu_fnc_addActionToObject;

    _action = [ "menu_house1_civ", "Civilian presence", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_civ_on", "On", "", {[60] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_civ"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_civ_off", "Off", "", {[61] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_civ"], _action ] call  ace_interact_menu_fnc_addActionToObject;

    _action = [ "menu_house1_gren", "Grenades on PAX", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_gren_on", "On", "", {[62] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_gren"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_gren_off", "Off", "", {[63] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_gren"], _action ] call  ace_interact_menu_fnc_addActionToObject;

     _action = [ "menu_house1_timer", "Timer to release PAX", "", {}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_timer0", "No release", "", {[70] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_timer"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_timer30", "+30secs", "", {[71] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_timer"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_timerm30", "-30secs", "", {[72] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_timer"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_timer30", "+60secs", "", {[73] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_timer"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_timerm30", "-60secs", "", {[74] execVM 'scripts\cqb_house_1.sqf'}, {true} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions", "menu_house1_option", "menu_house1_timer"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    
    _action = [ "menu_house1_easy", "CQB: Easy - Unarmed", "", {[1] execVM 'scripts\cqb_house_1.sqf'}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_nrml", "CQB: Normal - Pistols", "", {[2] execVM 'scripts\cqb_house_1.sqf'}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_med", "CQB: Medium - SMG's", "", {[3] execVM 'scripts\cqb_house_1.sqf'}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_house1_hard", "CQB: Hard - Full Equip", "", {[4] execVM 'scripts\cqb_house_1.sqf'}, {!cgqc_house1_on} ] call ace_interact_menu_fnc_createAction;       
    _adding = [ this, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
};