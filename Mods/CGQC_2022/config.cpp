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
		requiredAddons[] = {"CGQC", "ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "cTab", "ace_attach", "acre_sys_prc343", "ace_trenches", "ace_microdagr", "ace_tagging", "mas_can_lite_common"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"CGQC_Soldat_Moderne", "CGQC_Officer_Moderne"};
		weapons[] = {
			"cgqc_gun_glock19_wood",
			"cgqc_acc_M8541A_wood", "cgqc_acc_bipod_wood", "cgqc_acc_anpeq15_laser_wood", "cgqc_acc_silencer_wood"};
	};
};

// Rails setup
#include "cfg_rails.cpp"

// Weapons ------------------------------------------------------------------------
class cfgWeapons
{
#include "cfg_guns.cpp"
#include "cfg_acc.cpp"
};

class cfgVehicles
{
#include "cfg_units.cpp"
};
