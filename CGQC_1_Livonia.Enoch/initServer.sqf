// ------------------------------------------------------
// Init Script on server start
// ------------------------------------------------------

// max not sure we need those with ACE and such... to check.
["Initialize"] call BIS_fnc_dynamicGroups; // call vanilla group function
["Initialize"] execVM "scripts\fn_advancedTowingInit.sqf"; // call Advanced Towing Script
["Initialize"] execVM "scripts\fn_advancedSlingLoadingInit.sqf"; // call Advanced Sling Loading Script
["Initialize"] execVM "scripts\ambientAir.sqf"; // call random Air Ambient FlyBy Script

// Custom ACE Fortify list
[west, -1, [
	["Land_CncBarrierMedium_F", 1],
	["Land_HBarrier_3_F", 1],
	["Land_HBarrier_5_F", 1],
	["Land_HBarrier_Big_F", 1],
	["Land_HBarrier_1_F", 1],
	["Land_Plank_01_4m_F", 1],
	["Land_Plank_01_8m_F", 1],
	["Land_CncShelter_F", 1],
	["Land_BagBunker_Small_F", 1],
	["Land_BagBunker_Tower_F", 1],
	["Land_BagFence_Long_F", 1],
	["Land_BagFence_Short_F", 1],
	["Land_BagFence_Round_F", 1],
	["Land_SandbagBarricade_01_half_F", 1],
	["Land_SandbagBarricade_01_F", 1],
	["Land_SandbagBarricade_01_hole_F", 1],
	["Land_HelipadCircle_F", 1],
	["Land_MedicalTent_01_MTP_closed_F", 1],
	["CamoNet_BLUFOR_big_F", 1],
	["CamoNet_BLUFOR_open_F", 1],
	["CamoNet_BLUFOR_F", 1]
]] call acex_fortify_fnc_registerObjects;