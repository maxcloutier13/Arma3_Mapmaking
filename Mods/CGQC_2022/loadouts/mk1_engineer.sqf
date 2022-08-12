_unit = _this select 1;
execVM "\CGQC_2022\loadouts\transition.sqf";
sleep 2;
_unit setUnitTrait ["Medic", false];
_unit setUnitTrait ["engineer", true];
_unit setUnitTrait ["explosiveSpecialist", true];
comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add weapons";
this addWeapon "cgqc_gun_mk1_m4a1blkII";
this addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
this addPrimaryWeaponItem "Tier1_M4BII_NGAL_M300C_Black";
this addPrimaryWeaponItem "Tier1_EXPS3_0_3xMag_Black_Up";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
this addPrimaryWeaponItem "rhsusf_acc_grip2";
this addWeapon "cgqc_gun_glock19_wood";
this addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
this forceAddUniform "cgqc_uniform_mk1";
this addVest "cgqc_vest_mk1_tan_ar";
this addBackpack "CGQC_units_mk1_1_Engineer_pack";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUniform "ItemAndroid";
this addItemToUniform "ItemcTabHCam";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 20 do {
	this addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_epinephrine";
};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_morphine";
};
this addItemToUniform "ACE_splint";
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_tourniquet";
};
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_CableTie";
};
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "G_mas_can_gasmask";
for "_i" from 1 to 2 do {
	this addItemToVest "ACE_salineIV_500";
};
this addItemToVest "ACE_EntrenchingTool";
this addItemToVest "ToolKit";
this addItemToVest "ACE_DefusalKit";
this addItemToVest "ACE_M26_Clacker";
this addItemToVest "MineDetector";
for "_i" from 1 to 2 do {
	this addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	this addItemToVest "ACE_M84";
};
this addItemToVest "ACE_Chemlight_HiRed";
this addItemToVest "ACE_Chemlight_IR";
for "_i" from 1 to 2 do {
	this addItemToVest "SmokeShell";
};
for "_i" from 1 to 10 do {
	this addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	this addItemToBackpack "ACE_salineIV_500";
};
this addItemToBackpack "ACE_EntrenchingTool";
this addItemToBackpack "G_mas_can_gasmask";
this addItemToBackpack "ToolKit";
this addItemToBackpack "ACE_DefusalKit";
this addItemToBackpack "ACE_M26_Clacker";
this addItemToBackpack "MineDetector";
this addItemToBackpack "ACE_Chemlight_HiRed";
this addItemToBackpack "ACE_Chemlight_IR";
for "_i" from 1 to 2 do {
	this addItemToBackpack "SmokeShell";
};
for "_i" from 1 to 2 do {
	this addItemToBackpack "SmokeShellBlue";
};
for "_i" from 1 to 2 do {
	this addItemToBackpack "SmokeShellRed";
};
this addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 2 do {
	this addItemToBackpack "rhsusf_m112_mag";
};
for "_i" from 1 to 4 do {
	this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
this addItemToBackpack "rhsusf_m112x4_mag";
for "_i" from 1 to 2 do {
	this addItemToBackpack "HandGrenade";
};
for "_i" from 1 to 4 do {
	this addItemToBackpack "rhsusf_mine_m14_mag";
};
this addHeadgear "cgqc_helmet_mk1";
this addGoggles "G_mas_can_balaM_T";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "NVGoggles_mas_can_hv";