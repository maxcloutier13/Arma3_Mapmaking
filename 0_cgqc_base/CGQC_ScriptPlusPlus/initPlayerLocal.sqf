//------------------------------------------------------
// Init Script on player connect
//------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------
[] execVM "scripts\intro.sqf";
[] execVM "scripts\CGQCInfoBriefing.sqf";
//-------------------------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------
// Grad Persistence - Fortification / ACE interaction (SELF) / (MENU vehicle)
//------------------------------------------------------
/*
//-------------------------------------------------------------------------------------------------------------------------------------------------
[for_truck,"Land_BagFence_Long_F",10] call grad_fortifications_fnc_addFort;
[for_truck,"Land_Cargo_Patrol_V1_F",2] call grad_fortifications_fnc_addFort;
[for_truck,"Land_Cargo_House_V1_F",1] call grad_fortifications_fnc_addFort;
[for_truck,"Land_BagBunker_Small_F",4] call grad_fortifications_fnc_addFort;
[for_truck,"O_HMG_01_high_F",4] call grad_fortifications_fnc_addFort;

[exemple1,"Land_BagFence_Long_F",40] call grad_fortifications_fnc_addFort;

//-------------------------------------------------------------------------------------------------------------------------------------------------
*/