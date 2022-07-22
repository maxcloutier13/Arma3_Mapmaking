// Default info
class CfgPatches
{
	class MyAddon
	{
		// Meta information for editor
		name = "CGQC";
		author = "silent1";
		url = "Insert Github";
		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "ace_attach", "ace_trenches", "ace_microdagr", "ace_tagging", "A3_Weapons_F", "A3_Weapons_F_Pistols_P07", "A3_Characters_F", "CuratorOnly_Characters_F_BLUFOR"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

// Custom face definition --------------------------------------------------------
class CfgFaces
{
#include "cfg_heads.hpp"
};

// Custom helicopter helmet --------------------------------------------------------
class cfgWeapons
{
#include "cfg_helmets.hpp"
};

// Custom patches ------------------------------------------------------------------
class cfgUnitInsignia
{
#include "cfg_patches.hpp"
};
