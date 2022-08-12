_source = _this select 0;
// load default mk1 arsenal 
[_source, ["cgqc_gun_mk1_hq_m4a1", "Tier1_KAC_556_QDC_CQB_Black", "Tier1_M4BII_NGAL_M600V_Black", "Tier1_EXPS3_0_3xMag_Black_Up", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", "cgqc_gun_glock19_wood", "Tier1_15Rnd_9x19_JHP", "cgqc_uniform_mk1", "ACRE_PRC343", "ACRE_PRC152", "ACE_fieldDressing", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item", "ACE_microDAGR", "ACE_M84", "cgqc_vest_mk1_tan", "MiniGrenade", "rhs_mag_m67", "CGQC_mk1_0_HQ_pack", "ACE_salineIV_500", "ACE_EntrenchingTool", "G_mas_can_gasmask", "ItemcTab", "MRH_FoldedSatcomAntenna", "MRH_TacticalDisplay", "ACE_Chemlight_HiRed", "ACE_Chemlight_IR", "SmokeShell", "SmokeShellBlue", "SmokeShellRed", "B_IR_Grenade", "rhsusf_m112_mag", "cgqc_helmet_mk1", "G_mas_can_shemag_gog_l", "Rangefinder", "ItemMap", "ItemGPS", "ItemCompass", "ItemWatch", "NVGoggles_mas_can_hv", "cgqc_gun_mk1_TL_m4a1", "Tier1_Razor_Gen2_16_Geissele_Docter", "1Rnd_HE_Grenade_shell", "ItemAndroid", "ItemcTabHCam", "HandGrenade", "CGQC_mk1_0_TeamLeader_Carbine_pack", "UGL_FlareRed_F", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "G_mas_can_wrap_gog_B", "cgqc_gun_mk1_mk18_gl", "Tier1_Eotech551_L3_Black_Up", "CGQC_mk1_0_TeamLeader_CQB_pack", "G_mas_can_balaM_b", "cgqc_gun_mk1_rifleman_m4a1", "Tier1_M4BII_NGAL_M300C_Black_FL", "rhsusf_acc_grip2", "cgqc_vest_mk1_tan_lr", "CGQC_mk1_1_Rifleman_Carbine_pack", "G_mas_can_balaM_T", "cgqc_gun_mk1_rifleman_mk18", "Tier1_Mk18_NGAL_M300C_Black", "cgqc_vest_mk1_tan_rf", "CGQC_mk1_1_Rifleman_CQB_pack", "cgqc_gun_mk1_medic_m4a1", "Tier1_M4BII_NGAL_M300C_Black", "CGQC_mk1_1_Medic_pack", "ACE_salineIV", "cgqc_helmet_mk1_medic", "cgqc_gun_mk1_engineer_m4a1", "cgqc_vest_mk1_tan_ar", "CGQC_mk1_1_Engineer_pack", "ToolKit", "ACE_DefusalKit", "ACE_M26_Clacker", "MineDetector", "rhsusf_m112x4_mag", "cgqc_gun_mk1_mk46", "Tier1_Mk46Mod1_LA5_M600V_Black", "rhsusf_100Rnd_556x45_M995_soft_pouch", "Tier1_SAW_Bipod_DD", "CGQC_mk1_2_LMG_pack", "cgqc_gun_mk1_mk48", "Tier1_SOCOM762MG_Black", "Tier1_Mk48Mod0_LA5_M600V_Black", "Tier1_100Rnd_762x51_Belt_M61_AP", "Tier1_SAW_Bipod_2_KAC", "CGQC_mk1_2_HMG_pack", "cgqc_gun_mk1_marksman_417", "cgqc_acc_silencer_wood", "cgqc_acc_anpeq15_laser_wood", "optic_AMS", "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", "cgqc_acc_bipod_wood", "ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500", "CGQC_mk1_2_Marksman_pack", "cgqc_gun_mk1_m200", "rhsusf_acc_nxs_5522x56_md_sun", "7Rnd_408_Mag", "CGQC_mk1_2_Sniper_pack", "ACE_VectorDay", "cgqc_gun_mk1_mp7", "optic_ACO_grn", "40Rnd_46x30SD_mas_can_mag", "Tier1_20Rnd_9x19_FMJ", "cgqc_vest_mk1_pilot", "CGQC_mk1_4_Tank_Driver_pack", "cgqc_helmet_mk1_tank", "U_mas_can_B_CombatUniform_S_SWAT", "cgqc_vest_mk1_pilot", "CGQC_mk1_4_Pilot_heli_pack", "cgqc_helmet_cgqc_black", "G_mas_can_wrap_B", "CGQC_mk1_4_crew_heli_pack", "cgqc_helmet_crew_cgqc_black", "U_I_pilotCoveralls", "CGQC_mk1_4_Pilot_Jet_pack", "H_PilotHelmetFighter_B", "cgqc_gun_mk1_MAAWS", "MRAWS_HEAT_F", "CGQC_mk1_3_AT_MAAWS_pack", "cgqc_gun_mk1_AT_m4a1", "cgqc_gun_mk1_Javelin", "jav_AT_mas_can", "CGQC_mk1_3_AT_Javelin_pack"]] call ace_arsenal_fnc_initBox;

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
[ "mk1_0_HQ", getUnitLoadout "CGQC_mk1_0_HQ" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_0_TeamLeader_Carbine", getUnitLoadout "CGQC_mk1_0_TeamLeader_Carbine" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_0_TeamLeader_CQB", getUnitLoadout "CGQC_mk1_1_Rifleman_Carbine" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Rifleman_CQB", getUnitLoadout "CGQC_mk1_1_Rifleman_CQB" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Medic", getUnitLoadout "CGQC_mk1_1_Medic" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_1_Engineer", getUnitLoadout "CGQC_mk1_1_Engineer" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_LMG", getUnitLoadout "CGQC_mk1_2_LMG" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_HMG", getUnitLoadout "CGQC_mk1_2_HMG" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_Marksman", getUnitLoadout "CGQC_mk1_2_Marksman" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_2_Sniper", getUnitLoadout "CGQC_mk1_2_Sniper" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_3_AT_MAAWS", getUnitLoadout "CGQC_mk1_3_AT_MAAWS" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_3_AT_Javelin", getUnitLoadout "CGQC_mk1_3_AT_Javelin" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Tank_Driver", getUnitLoadout "CGQC_mk1_4_Tank_Driver" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Pilot_helicopter", getUnitLoadout "CGQC_mk1_4_Pilot_heli" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_Pilot_Jet", getUnitLoadout "CGQC_mk1_4_Pilot_Jet" ] call ace_arsenal_fnc_addDefaultLoadout;
[ "mk1_4_crew_helicopter", getUnitLoadout "CGQC_mk1_4_crew_heli" ] call ace_arsenal_fnc_addDefaultLoadout;