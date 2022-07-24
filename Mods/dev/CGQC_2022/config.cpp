// Default info
class CfgPatches
{
	class CGQC_2022
	{
		// Meta information for editor
		name = "CGQC 2022";
		author = "silent1";
		url = "Insert Github";
		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"CGQC", "acre_sys_prc343", "ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "ace_attach", "ace_trenches", "ace_microdagr", "A3_Weapons_F", "A3_Characters_F", "cTab", "mas_can_lite_common"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};
