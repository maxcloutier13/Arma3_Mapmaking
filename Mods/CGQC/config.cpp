// Mod info ----------------------------------------------------------------------------------------------------------------
class CfgPatches
{
	class CGQC
	{
		// Meta information for editor
		name = "CGQC Core";
		author = "silent1";
		url = "Insert Github";
		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "ace_attach", "acre_sys_prc343",
							"ace_trenches", "ace_microdagr", "ace_tagging"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"CGQC_Soldat_Base", "CGQC_Officer_Base",
				   "CGQC_Soldat_Base_pack",
				   "Headgear_cgqc_beret_green", "Headgear_cgqc_beret_blue", "Headgear_cgqc_cap_green",
				   "Headgear_cgqc_helmet_cloutier_samurai", "Headgear_cgqc_helmet_crew_cloutier_samurai",
				   "Headgear_cgqc_helmet_villeneuve", "Headgear_cgqc_helmet_crew_villeneuve",
				   "Headgear_cgqc_helmet_audi", "Headgear_cgqc_helmet_crew_audi",
				   "Headgear_cgqc_helmet_cgqc_black", "Headgear_cgqc_helmet_cgqc_black",
				   "Headgear_cgqc_helmet_cgqc_green", "Headgear_cgqc_helmet_cgqc_green",
				   "Headgear_cgqc_helmet_cgqc_wood", "Headgear_cgqc_helmet_cgqc_wood",
				   "Weapon_cgqc_gun_p99_wood",
				   "Weapon_cgqc_gun_spar17_tremblay", "Weapon_cgqc_gun_spar17_canpat", "Weapon_cgqc_gun_spar17_wood"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {"cgqc_beret_vanilla", "cgqc_beret_green", "cgqc_beret_blue", "cgqc_cap_green",
					 "cgqc_helmet_cloutier_samurai", "cgqc_helmet_crew_cloutier_samurai",
					 "cgqc_uniform_instructeur",
					 "cgqc_gun_spar17_tremblay", "cgqc_gun_spar17_canpat", "cgqc_gun_spar17_wood",
					 "cgqc_gun_p99_wood"};
	};
};

// Faction definition ------------------------------------------------------------------------------------------------------
class cfgFactionClasses
{
#include "cfg_factions.cpp"
};

// Custom face definition --------------------------------------------------------------------------------------------------
class CfgFaces
{
#include "cfg_heads.cpp"
};

class cfgWeapons
{
// Custom helmets -----------------------------------------------------------------------------------------------------------
#include "cfg_helmets.cpp"
// Custom guns --------------------------------------------------------------------------------------------------------------
#include "cfg_guns.cpp"
};

// Custom patches -----------------------------------------------------------------------------------------------------------
class cfgUnitInsignia
{
#include "cfg_patches.cpp"
};

// Custom vehicles/objects --------------------------------------------------------------------------------------------------
class cfgVehicles
{
#include "cfg_units.cpp"
#include "cfg_items.cpp"
};
