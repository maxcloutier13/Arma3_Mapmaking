_unit = _this select 1;
execVM "\CGQC_2022\loadouts\transition.sqf";
sleep 2;
_unit setUnitTrait ["Medic", true];
_unit setUnitTrait ["engineer", false];
_unit setUnitTrait ["explosiveSpecialist", false];
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
this addPrimaryWeaponItem "Tier1_Razor_Gen2_16_Geissele_Docter";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
this addPrimaryWeaponItem "rhsusf_acc_grip2";
this addWeapon "cgqc_gun_glock19_wood";
this addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
this forceAddUniform "cgqc_uniform_mk1";
this addVest "cgqc_vest_mk1_tan_rf";
this addBackpack "CGQC_units_mk1_1_Medic_pack";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUniform "ItemAndroid";
this addItemToUniform "ItemcTabHCam";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 21 do {
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
for "_i" from 1 to 39 do {
	this addItemToVest "ACE_fieldDressing";
};
for "_i" from 1 to 7 do {
	this addItemToVest "ACE_salineIV_500";
};
this addItemToVest "ACE_EntrenchingTool";
this addItemToVest "G_mas_can_gasmask";
for "_i" from 1 to 5 do {
	this addItemToVest "ACE_salineIV";
};
for "_i" from 1 to 5 do {
	this addItemToVest "ACE_morphine";
};
for "_i" from 1 to 50 do {
	this addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 7 do {
	this addItemToBackpack "ACE_salineIV_500";
};
this addItemToBackpack "ACE_EntrenchingTool";
this addItemToBackpack "G_mas_can_gasmask";
for "_i" from 1 to 5 do {
	this addItemToBackpack "ACE_salineIV";
};
for "_i" from 1 to 20 do {
	this addItemToBackpack "ACE_morphine";
};
for "_i" from 1 to 20 do {
	this addItemToBackpack "ACE_epinephrine";
};
for "_i" from 1 to 4 do {
	this addItemToBackpack "ACE_splint";
};
for "_i" from 1 to 4 do {
	this addItemToBackpack "ACE_tourniquet";
};
this addItemToBackpack "ACE_Chemlight_HiRed";
this addItemToBackpack "ACE_Chemlight_IR";
for "_i" from 1 to 3 do {
	this addItemToBackpack "SmokeShell";
};
for "_i" from 1 to 3 do {
	this addItemToBackpack "SmokeShellBlue";
};
for "_i" from 1 to 3 do {
	this addItemToBackpack "SmokeShellRed";
};
this addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 6 do {
	this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
this addItemToBackpack "HandGrenade";
this addHeadgear "cgqc_helmet_mk1_medic";
this addGoggles "G_mas_can_balaM_T";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "NVGoggles_mas_can_hv";