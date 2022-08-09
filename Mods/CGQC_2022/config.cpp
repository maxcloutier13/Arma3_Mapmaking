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
		requiredAddons[] = {"CGQC",
							"cTab",
							"ace_medical_treatment",
							"ace_hearing",
							"ace_captives",
							"ace_maptools",
							"cTab",
							"ace_attach",
							"acre_sys_prc343",
							"acre_sys_prc152",
							"ace_trenches",
							"ace_microdagr",
							"ace_tagging",
							"mas_can_lite_common"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {
			"CGQC_mk1_0_HQ_pack",
			"CGQC_mk1_0_TeamLeader_Carbine_pack",
			"CGQC_mk1_0_TeamLeader_CQB_pack",
			"CGQC_mk1_1_Rifleman_Carbine_pack",
			"CGQC_mk1_1_Rifleman_CQB_pack",
			"CGQC_mk1_1_Medic_pack",
			"CGQC_mk1_1_Engineer_pack",
			"CGQC_mk1_2_LMG_pack",
			"CGQC_mk1_2_HMG_pack",
			"CGQC_mk1_2_Marksman_pack",
			"CGQC_mk1_2_Sniper_pack",
			"CGQC_mk1_3_AT_MAAWS_pack",
			"CGQC_mk1_3_AT_Javelin_pack",
			"CGQC_mk1_4_Tank_Driver_pack",
			"CGQC_mk1_4_Pilot_heli_pack",
			"CGQC_mk1_4_Pilot_Jet_pack",
			"CGQC_mk1_4_crew_heli_pack",
			"cgqc_soldat_moderne",
			"CGQC_officer_moderne",
			"CGQC_pack_kitbag_green",
			"CGQC_mk1_0_HQ",
			"CGQC_mk1_0_TeamLeader_Carbine",
			"CGQC_mk1_0_TeamLeader_CQB",
			"CGQC_mk1_1_Rifleman_Carbine",
			"CGQC_mk1_1_Rifleman_CQB",
			"CGQC_mk1_1_Medic",
			"CGQC_mk1_1_Engineer",
			"CGQC_mk1_2_LMG",
			"CGQC_mk1_2_HMG",
			"CGQC_mk1_2_Marksman",
			"CGQC_mk1_2_Sniper",
			"CGQC_mk1_3_AT_MAAWS",
			"CGQC_mk1_3_AT_Javelin",
			"CGQC_mk1_4_Tank_Driver",
			"CGQC_mk1_4_Pilot_heli",
			"CGQC_mk1_4_Pilot_Jet",
			"CGQC_mk1_4_crew_heli"};
		weapons[] = {
			"cgqc_helmet_medic_green",
			"cgqc_helmet_cgqc_green",
			"cgqc_gun_glock19_wood",
			"cgqc_acc_M8541A_wood",
			"cgqc_acc_bipod_wood",
			"cgqc_acc_anpeq15_laser_wood",
			"cgqc_acc_silencer_wood"
			"cgqc_mk1_weap_hq_m4a1",
			"cgqc_mk1_weap_TL_m4a1",
			"cgqc_mk1_weap_rifleman_m4a1",
			"cgqc_mk1_weap_rifleman_mk18",
			"cgqc_mk1_weap_lmg_mk46",
			"cgqc_mk1_weap_hmg_mk48",
			"cgqc_mk1_weap_marksman_417",
			"cgqc_mk1_weap_sniper_m200",
			"cgqc_mk1_weap_engineer_m4a1",
			"cgqc_mk1_weap_medic_m4a1",
			"cgqc_mk1_weap_AT_MAAWS",
			"cgqc_mk1_weap_crew_mp7",
			"cgqc_mk1_weap_TL_mk18",
			"cgqc_mk1_weap_AT_m4a1",
			"cgqc_mk1_weap_AT_Javelin"};
	};
};

// Rails setup
#include "cfg_rails.cpp"

// Weapons ------------------------------------------------------------------------
class cfgWeapons
{
// Custom helmets ---------------------------------------
#include "cfg_helmets.cpp"
// Custom guns ---------------------------------------
#include "cfg_guns.cpp"
// Custom accessories ---------------------------------------
#include "cfg_acc.cpp"
};
// Custom Editor category for units ------------------------------------------------
class CfgEditorSubcategories
{
	class EdSubcat_cgqc_mk1
	{
		displayName = "Men (mk1)";
	};
};
// Custom units ----------------------------------------------------------------------------
class cfgVehicles
{
// Backpacks
#include "cfg_backpacks.cpp"
// Training units
#include "cfg_units_training.cpp"
// mk1 units
#include "cfg_units_mk1.cpp"
};
// Groups ---------------------------------------------------------------------------------
#include "cfg_groups.cpp"
