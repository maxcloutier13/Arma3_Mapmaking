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
		requiredAddons[] = {"acre_sys_prc343", "ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "ace_attach", "ace_trenches", "ace_microdagr", "A3_Weapons_F", "A3_Characters_F"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"CGQC_Soldat_Base", "CGQC_Soldat_Base_pack"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {"cgqc_beret_green", "cgqc_beret_blue", "cgqc_helmet_test", "cgqc_helmet_crew_test",
					 "cgqc_helmet_cloutier_samurai", "cgqc_helmet_crew_cloutier_samurai", "cgqc_cap_green",
					 "cgqc_uniform_instructeur", "cgqc_gun_spar17_tremblay", "cgqc_gun_spar17_tremblay_75",
					 "CGQC_pistol_p99"};
	};
};

// Faction definition ------------------------------------------------------------------------------------------------------
class cfgFactionClasses
{
#include "cfg_factions.hpp"
};

// Custom face definition --------------------------------------------------------------------------------------------------
class CfgFaces
{
#include "cfg_heads.hpp"
};

class cfgWeapons
{
// Custom helmets -----------------------------------------------------------------------------------------------------------
#include "cfg_helmets.hpp"
// Custom uniforms ----------------------------------------------------------------------------------------------------------
#include "cfg_uniforms.hpp"
// Custom guns --------------------------------------------------------------------------------------------------------------
#include "cfg_guns.hpp"
};

// Custom patches -----------------------------------------------------------------------------------------------------------
class cfgUnitInsignia
{
#include "cfg_patches.hpp"
};

// Custom vehicles/objects --------------------------------------------------------------------------------------------------
class cfgVehicles
{
#include "cfg_vehicles.hpp"
};
