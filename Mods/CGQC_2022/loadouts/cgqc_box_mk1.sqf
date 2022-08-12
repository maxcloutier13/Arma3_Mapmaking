_source = _this select 0;
// load default mk1 arsenal 
[_source, [["cgqc_gun_mk1_hq_m4a1", "Tier1_KAC_556_QDC_CQB_Black", "Tier1_M4BII_NGAL_M600V_Black", "Tier1_EXPS3_0_3xMag_Black_Up", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", "cgqc_gun_glock19_wood", "Tier1_15Rnd_9x19_JHP", "cgqc_uniform_mk1", "ACRE_PRC343", "ACRE_PRC152", "ACE_fieldDressing", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item", "ACE_microDAGR", "cgqc_vest_mk1_tan", "ACE_salineIV_500", "ACE_EntrenchingTool", "G_mas_can_gasmask", "ItemcTab", "MRH_FoldedSatcomAntenna", "MRH_TacticalDisplay", "ACE_M84", "MiniGrenade", "ACE_Chemlight_HiRed", "ACE_Chemlight_IR", "SmokeShell", "CGQC_units_mk1_0_HQ_pack", "ACRE_PRC77", "SmokeShellBlue", "SmokeShellRed", "B_IR_Grenade", "rhsusf_m112_mag", "cgqc_helmet_mk1", "G_mas_can_shemag_gog_l", "Laserdesignator_03", "ItemMap", "B_UavTerminal", "ItemCompass", "ItemWatch", "NVGoggles_mas_can_hv", "cgqc_gun_mk1_TL_m4a1", "Tier1_Razor_Gen2_16_Geissele_Docter", "1Rnd_HE_Grenade_shell", "ItemAndroid", "ItemcTabHCam", "HandGrenade", "CGQC_units_mk1_0_TeamLeader_Carbine_pack", "UGL_FlareRed_F", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "G_mas_can_wrap_gog_B", "cgqc_gun_mk1_mk18_gl", "Tier1_Eotech551_L3_Black_Up", "CGQC_units_mk1_0_TeamLeader_CQB_pack", "G_mas_can_balaM_b", "cgqc_gun_mk1_rifleman_m4a1", "Tier1_M4BII_NGAL_M300C_Black_FL", "rhsusf_acc_grip2", "cgqc_gun_law_wood", "cgqc_vest_mk1_tan_lr", "CGQC_units_mk1_1_Rifleman_Carbine_pack", "G_mas_can_balaM_T", "Rangefinder", "ItemGPS", "cgqc_gun_mk1_rifleman_mk18", "Tier1_Mk18_NGAL_M300C_Black", "cgqc_vest_mk1_tan_rf", "CGQC_units_mk1_1_Rifleman_CQB_pack", "cgqc_gun_mk1_medic_m4a1", "Tier1_M4BII_NGAL_M300C_Black", "ACE_salineIV", "CGQC_units_mk1_1_Medic_pack", "cgqc_helmet_mk1_medic", "cgqc_gun_mk1_engineer_m4a1", "cgqc_vest_mk1_tan_ar", "ToolKit", "ACE_DefusalKit", "ACE_M26_Clacker", "MineDetector", "CGQC_units_mk1_1_Engineer_pack", "rhsusf_m112x4_mag", "rhsusf_mine_m14_mag", "cgqc_gun_mk1_mk46", "Tier1_Mk46Mod1_LA5_M600V_Black", "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote", "Tier1_SAW_Bipod_DD", "CGQC_units_mk1_2_LMG_pack", "cgqc_gun_mk1_mk48", "Tier1_SOCOM762MG_Black", "Tier1_Mk48Mod0_LA5_M600V_Black", "Tier1_100Rnd_762x51_Belt_M993_AP", "Tier1_SAW_Bipod_2_KAC", "Tier1_250Rnd_762x51_Belt_M993_AP", "rhs_mag_m67", "CGQC_units_mk1_2_HMG_pack", "ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500", "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", "CGQC_units_mk1_2_Marksman_pack", "ACE_Vector", "cgqc_gun_mk1_m200", "rhsusf_acc_nxs_5522x56_md_sun", "7Rnd_408_Mag", "CGQC_units_mk1_2_Sniper_pack", "cgqc_gun_mk1_mp7", "optic_ACO_grn", "40Rnd_46x30SD_mas_can_mag", "cgqc_vest_mk1_pilot", "CGQC_units_mk1_4_Tank_Driver_pack", "cgqc_helmet_mk1_tank", "CGQC_units_mk1_4_Pilot_heli_pack", "G_mas_can_wrap_B", "cgqc_uniform_mk1_helipilot", "CGQC_units_mk1_4_crew_heli_pack", "Tier1_20Rnd_9x19_FMJ", "cgqc_uniform_mk1_jetpilot", "CGQC_units_mk1_4_Pilot_Jet_pack", "cgqc_helmet_mk1_jetpilot", "G_Combat", "cgqc_gun_mk1_MAAWS", "MRAWS_HEAT_F", "CGQC_units_mk1_3_AT_MAAWS_pack", "cgqc_gun_mk1_AT_m4a1", "cgqc_gun_mk1_Javelin", "jav_AT_mas_can", "CGQC_units_mk1_3_AT_Javelin_pack"]
]] call ace_arsenal_fnc_initBox;

// set up the role changer
_source addAction ["---- Change de rôle mk1------", ""];
_source addAction ["- Rifleman - Carbine", "\CGQC_2022\loadouts\mk1_rifleman_carbine.sqf"];
_source addAction ["- Rifleman - CQB", "\CGQC_2022\loadouts\mk1_rifleman_cqb.sqf"];
_source addAction ["- Medic", "\CGQC_2022\loadouts\mk1_medic.sqf"];
_source addAction ["- Engineer", "\CGQC_2022\loadouts\mk1_engineer.sqf"];
_source addAction ["- HQ", "\CGQC_2022\loadouts\mk1_hq.sqf"];
_source addAction ["- Team/Squad Leader", "\CGQC_2022\loadouts\mk1_tl.sqf"];
_source addAction ["- Team/Squad Leader CQB", "\CGQC_2022\loadouts\mk1_tl_cqb.sqf"];
_source addAction ["- MG (Light)", "\CGQC_2022\loadouts\mk1_lmg.sqf"];
_source addAction ["- MG (Heavy)", "\CGQC_2022\loadouts\mk1_hmg.sqf"];
_source addAction ["- Marksman", "\CGQC_2022\loadouts\mk1_marksman.sqf"];
_source addAction ["- Sniper", "\CGQC_2022\loadouts\mk1_sniper.sqf"];
_source addAction ["- Anti-Tank (MAAWS)", "\CGQC_2022\loadouts\mk1_at_maaws.sqf"];
_source addAction ["- Anti-Tank (Javelin)", "\CGQC_2022\loadouts\mk1_at_javelin.sqf"];
_source addAction ["- Helicopter Pilot", "\CGQC_2022\loadouts\mk1_heli_pilot.sqf"];
_source addAction ["- Helicopter Crew", "\CGQC_2022\loadouts\mk1_heli_crew.sqf"];
_source addAction ["- Jet Pilot", "\CGQC_2022\loadouts\mk1_at_jet_pilot.sqf"];
_source addAction ["- Tank Driver/Crew", "\CGQC_2022\loadouts\mk1_driver_tank.sqf"];

// set default loadouts for CGQC_mk1
[ "mk1_0_HQ", getUnitLoadout "CGQC_units_mk1_0_HQ" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_0_TeamLeader_Carbine", getUnitLoadout "CGQC_units_mk1_0_TeamLeader_Carbine" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_0_TeamLeader_CQB", getUnitLoadout "CGQC_units_mk1_1_Rifleman_Carbine" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Rifleman_CQB", getUnitLoadout "CGQC_units_mk1_1_Rifleman_CQB" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Medic", getUnitLoadout "CGQC_units_mk1_1_Medic" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Engineer", getUnitLoadout "CGQC_units_mk1_1_Engineer" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_LMG", getUnitLoadout "CGQC_units_mk1_2_LMG" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_HMG", getUnitLoadout "CGQC_units_mk1_2_HMG" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_Marksman", getUnitLoadout "CGQC_units_mk1_2_Marksman" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_Sniper", getUnitLoadout "CGQC_units_mk1_2_Sniper" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_3_AT_MAAWS", getUnitLoadout "CGQC_units_mk1_3_AT_MAAWS" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_3_AT_Javelin", getUnitLoadout "CGQC_units_mk1_3_AT_Javelin" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Tank_Driver", getUnitLoadout "CGQC_units_mk1_4_Tank_Driver" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Pilot_helicopter", getUnitLoadout "CGQC_units_mk1_4_Pilot_heli" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Pilot_Jet", getUnitLoadout "CGQC_units_mk1_4_Pilot_Jet" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_crew_helicopter", getUnitLoadout "CGQC_units_mk1_4_crew_heli" ] call ace_arsenal_fnc_addDefaultLoadout;