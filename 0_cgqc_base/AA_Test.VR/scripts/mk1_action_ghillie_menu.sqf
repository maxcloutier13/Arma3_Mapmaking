if (ghillie_menu == 0) then {
	_action = [ "menu_self_ghillie", "Ghillie up", "", {}, {ghillie_isOn == 0} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc"], _action ] call  ace_interact_menu_fnc_addActionToObject;
	//All types 
	_action = [ "menu_self_ghillie_arid", "Arid", "", {["arid"] execVM "scripts\mk1_action_ghillie.sqf"}, {ghillie_isOn == 0} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc", "menu_self_ghillie"], _action ] call  ace_interact_menu_fnc_addActionToObject;

	_action = [ "menu_self_ghillie_sarid", "Semi-Arid", "", {["sarid"]  execVM "scripts\mk1_action_ghillie.sqf"}, {ghillie_isOn == 0} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc", "menu_self_ghillie"], _action ] call  ace_interact_menu_fnc_addActionToObject;

	_action = [ "menu_self_ghillie_lush", "Lush", "", {["lush"]  execVM "scripts\mk1_action_ghillie.sqf"}, {ghillie_isOn == 0} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc", "menu_self_ghillie"], _action ] call  ace_interact_menu_fnc_addActionToObject;

	_action = [ "menu_self_ghillie_jungle", "Jungle", "", {["jungle"] execVM "scripts\mk1_action_ghillie.sqf"}, {ghillie_isOn == 0} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc", "menu_self_ghillie"], _action ] call  ace_interact_menu_fnc_addActionToObject;

	// Uniform 
	_action = [ "menu_self_ghillie_uniform", "Ghillie-> Uniforme", "", {["uniform"]  execVM "scripts\mk1_action_ghillie.sqf"}, {ghillie_isOn == 1} ] call ace_interact_menu_fnc_createAction;
	_adding = [ player, 1, ["ACE_SelfActions","menu_self_cgqc"], _action ] call  ace_interact_menu_fnc_addActionToObject;

	// Ghillie menu done booting 
	ghillie_menu = 1;
};




