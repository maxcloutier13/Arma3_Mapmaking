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
		requiredAddons[] = {"A3_Functions_F"};
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
