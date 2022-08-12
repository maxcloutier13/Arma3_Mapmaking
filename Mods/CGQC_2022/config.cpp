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
			"cgqc_box_mk1_rolebox",
			"cgqc_box_original",
			"CGQC_units_mk1_0_HQ_pack",
			"CGQC_units_mk1_0_TeamLeader_Carbine_pack",
			"CGQC_units_mk1_0_TeamLeader_CQB_pack",
			"CGQC_units_mk1_1_Rifleman_Carbine_pack",
			"CGQC_units_mk1_1_Rifleman_CQB_pack",
			"CGQC_units_mk1_1_Medic_pack",
			"CGQC_units_mk1_1_Engineer_pack",
			"CGQC_units_mk1_2_LMG_pack",
			"CGQC_units_mk1_2_HMG_pack",
			"CGQC_units_mk1_2_Marksman_pack",
			"CGQC_units_mk1_2_Sniper_pack",
			"CGQC_units_mk1_3_AT_MAAWS_pack",
			"CGQC_units_mk1_3_AT_Javelin_pack",
			"CGQC_units_mk1_4_Tank_Driver_pack",
			"CGQC_units_mk1_4_Pilot_heli_pack",
			"CGQC_units_mk1_4_Pilot_Jet_pack",
			"CGQC_units_mk1_4_crew_heli_pack",
			"cgqc_soldat_moderne",
			"CGQC_officer_moderne",
			"cgqc_pack_mk1_kitbag",
			"CGQC_units_mk1_0_HQ",
			"CGQC_units_mk1_0_TeamLeader_Carbine",
			"CGQC_units_mk1_0_TeamLeader_CQB",
			"CGQC_units_mk1_1_Rifleman_Carbine",
			"CGQC_units_mk1_1_Rifleman_CQB",
			"CGQC_units_mk1_1_Medic",
			"CGQC_units_mk1_1_Engineer",
			"CGQC_units_mk1_2_LMG",
			"CGQC_units_mk1_2_HMG",
			"CGQC_units_mk1_2_Marksman",
			"CGQC_units_mk1_2_Sniper",
			"CGQC_units_mk1_3_AT_MAAWS",
			"CGQC_units_mk1_3_AT_Javelin",
			"CGQC_units_mk1_4_Tank_Driver",
			"CGQC_units_mk1_4_Pilot_heli",
			"CGQC_units_mk1_4_Pilot_Jet",
			"CGQC_units_mk1_4_crew_heli"};
		weapons[] = {
			"cgqc_helmet_mk1",
			"cgqc_helmet_mk1_medic",
			"cgqc_helmet_mk1_tank",
			"cgqc_helmet_mk1_jetpilot",
			"cgqc_uniform_mk1",
			"cgqc_uniform_mk1_jetpilot",
			"cgqc_uniform_mk1_helipilot",
			"cgqc_vest_mk1_tan_lr",
			"cgqc_vest_mk1_tan_rf",
			"cgqc_vest_mk1_tan_ar",
			"cgqc_vest_mk1_pilot",
			"cgqc_gun_glock19_wood",
			"cgqc_gun_law_wood",
			"cgqc_acc_M8541A_wood",
			"cgqc_acc_bipod_wood",
			"cgqc_acc_anpeq15_laser_wood",
			"cgqc_acc_silencer_wood"
			"cgqc_gun_mk1_m4a1blkII",
			"cgqc_gun_mk1_m4a1blkII_gl",
			"cgqc_gun_mk1_mk18",
			"cgqc_gun_mk1_hq_m4a1",
			"cgqc_gun_mk1_TL_m4a1",
			"cgqc_gun_mk1_rifleman_m4a1",
			"cgqc_gun_mk1_rifleman_mk18",
			"cgqc_gun_mk1_mk46",
			"cgqc_gun_mk1_mk48",
			"cgqc_gun_mk1_marksman_417",
			"cgqc_gun_mk1_m200",
			"cgqc_gun_mk1_engineer_m4a1",
			"cgqc_gun_mk1_medic_m4a1",
			"cgqc_gun_mk1_MAAWS",
			"cgqc_gun_mk1_mp7",
			"cgqc_gun_mk1_mk18_gl",
			"cgqc_gun_mk1_AT_m4a1",
			"cgqc_gun_mk1_Javelin"};
	};
};

// Rails setup
#include "cfg_rails.cpp"

// Weapons ------------------------------------------------------------------------
class cfgWeapons
{
// Custom helmets ---------------------------------------
#include "cfg_helmets.cpp"
// Custom uniforms ---------------------------------------
#include "cfg_uniforms.cpp"
// Custom vests ---------------------------------------
#include "cfg_vests.cpp"
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
// Containers
#include "cfg_containers.cpp"
// Training units
#include "cfg_units_training.cpp"
// mk1 units
#include "cfg_units_mk1.cpp"
};
// Groups ---------------------------------------------------------------------------------
#include "cfg_groups.cpp"
