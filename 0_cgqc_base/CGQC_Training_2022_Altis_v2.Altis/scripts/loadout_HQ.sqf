[["", "", "",
"", ["", 30], [], ""], [],
["", "", "", "", ["", 15], [], ""],
["", [["ItemAndroid", 1], ["ItemcTabHCam", 1],
	["ACRE_PRC343", 1], ["ACE_fieldDressing", 10], ["ACE_epinephrine", 2], ["ACE_EarPlugs", 1],
	["ACE_morphine", 2], ["ACE_splint", 1], ["ACE_tourniquet", 2], ["ACE_CableTie", 2], ["ACE_MapTools", 1],
["ACE_IR_Strobe_Item", 1], ["ACE_microDAGR", 1], ["Tier1_15Rnd_9x19_JHP", 1, 15]]],

["V_mas_can_PlateCarrier1_tan", [["ACRE_PRC152", 1], ["Tier1_15Rnd_9x19_JHP", 1, 15],
	["MiniGrenade", 2, 1], ["rhs_mag_m67", 2, 1], ["ACE_M84", 2, 1],
["rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", 8, 30]]],

["CGQC_pack_kitbag_green",
	[["ACE_fieldDressing", 10], ["ACE_salineIV_500", 2], ["ACE_EntrenchingTool", 1],
		["ItemcTab", 1], ["MRH_FoldedSatcomAntenna", 1], ["MRH_TacticalDisplay", 1],
		["ACE_Chemlight_HiRed", 1, 1], ["ACE_Chemlight_IR", 1, 1], ["SmokeShell", 3, 1],
		["SmokeShellBlue", 3, 1], ["SmokeShellRed", 3, 1], ["B_IR_Grenade", 1, 1],
	["rhsusf_m112_mag", 1, 1]]], "cgqc_helmet_cgqc_green", "None",
	["Rangefinder", "", "", "", [], [], ""],
["ItemMap", "ItemGPS", "", "ItemCompass", "ItemWatch", "NVGoggles_mas_can_hv"]]

_unit = _this select 1;
// Remove all shits
removeAllWeapons unit;
removeAllItems unit;
removeAllAssignedItems unit;
removeUniform unit;
removeVest unit;
removeBackpack unit;
removeHeadgear unit;
removeGoggles unit;
// weapons
_unit addWeapon "rhs_weap_m4a1_blockII";
_unit addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
_unit addPrimaryWeaponItem "Tier1_M4BII_NGAL_M600V_Black";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_unit addPrimaryWeaponItem "Tier1_EXPS3_0_3xMag_Black_Up";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";
// headgear
_unit addHeadgear "rhsusf_opscore_mc_cover_pelt_cam";
// Facegear 
_unit addGoggles "rhsusf_shemagh2_tan";
// Linked items
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
_unit linkItem "ItemcTab";
// Binoculars
_unit addWeapon "Laserdesignator";
_unit addMagazine "Laserbatteries";
// uniform
_unit forceAddUniform "U_mas_can_B_CombatUniform_S_NTOG";
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ACE_Kestrel4500";
_unit addItemToUniform "optic_Nightstalker";
_unit addItemToUniform "rhsusf_acc_su230a_mrds_c";
// vest
_unit addVest "rhsusf_plateframe_marksman";
_unit addItemToVest "NVGoggles_mas_can_hv";
.
_unit addItemToVest "ACE_CableTie";
_unit addItemToVest "ACE_CableTie";
_unit addItemToVest "ACE_CableTie";
_unit addItemToVest "ACE_CableTie";
_unit addItemToVest "ACE_CableTie";
_unit addItemToVest "11Rnd_45ACP_Mag";
_unit addItemToVest "11Rnd_45ACP_Mag";
_unit addItemToVest "HandGrenade";
_unit addItemToVest "HandGrenade";
_unit addItemToVest "HandGrenade";
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShellYellow";
_unit addItemToVest "SmokeShellYellow";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "SmokeShellRed";
_unit addItemToVest "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
_unit addItemToVest "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
_unit addItemToVest "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
_unit addItemToVest "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
// backpack
_unit addBackpack "B_Carryall_cbr";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_fieldDressing";
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ACE_EarPlugs";
_unit addItemToBackpack "ACE_EarPlugs";
_unit addItemToBackpack "ItemcTabHCam";
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_Flashlight_MX991";
_unit addItemToBackpack "ACE_SpraypaintBlack";
_unit addItemToBackpack "ACE_SpraypaintRed";
_unit addItemToBackpack "ACE_tourniquet";
_unit addItemToBackpack "ACE_tourniquet";
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
_unit addItemToBackpack "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
_unit addItemToBackpack "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";