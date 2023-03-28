_old = QGVAR(reduction);
[90, _this] call EFUNC(common,cbaSettings_settingChanged)


if (hasInterface) then {   
 _action = [ "menu_patient", "Nouveau patient", "", {[] execVM "scripts\createpatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;       
 _adding = [ patient1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;    
 _action = [ "menu_patient_del", "Retirer tout les patients", "", {[] execVM "scripts\deletepatient.sqf"}, {true} ] call ace_interact_menu_fnc_createAction;       
 _adding = [ patient1, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;    
};

