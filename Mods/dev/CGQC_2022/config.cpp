// Default info
class CfgPatches
{
	class MyAddon
	{
		// Meta information for editor
		name = "CGQC Setting:2022";
		author = "silent1";
		url = "Insert Github";
		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "cTab", "ace_attach", "acre_sys_prc343", "ace_trenches", "ace_microdagr", "ace_tagging", "A3_Weapons_F", "Tier1_Weapons_cfg", "mas_can_lite_common", "A3_Characters_F"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};
