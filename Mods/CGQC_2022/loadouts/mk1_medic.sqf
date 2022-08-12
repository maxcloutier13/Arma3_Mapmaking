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
_unit addWeapon "cgqc_gun_mk1_m4a1blkII";
_unit addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
_unit addPrimaryWeaponItem "Tier1_M4BII_NGAL_M300C_Black";
_unit addPrimaryWeaponItem "Tier1_Razor_Gen2_16_Geissele_Docter";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
_unit forceAddUniform "cgqc_uniform_mk1";
_unit addVest "cgqc_vest_mk1_tan_rf";
_unit addBackpack "CGQC_units_mk1_1_Medic_pack";

comment "Add binoculars";
_unit addWeapon "cgqc_item_rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 21 do {
	_unit addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_epinephrine";
};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_morphine";
};
_unit addItemToUniform "ACE_splint";
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_tourniquet";
};
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_CableTie";
};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 39 do {
	_unit addItemToVest "ACE_fieldDressing";
};
for "_i" from 1 to 7 do {
	_unit addItemToVest "ACE_salineIV_500";
};
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "G_mas_can_gasmask";
for "_i" from 1 to 5 do {
	_unit addItemToVest "ACE_salineIV";
};
for "_i" from 1 to 5 do {
	_unit addItemToVest "ACE_morphine";
};
for "_i" from 1 to 50 do {
	_unit addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 7 do {
	_unit addItemToBackpack "ACE_salineIV_500";
};
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "G_mas_can_gasmask";
for "_i" from 1 to 5 do {
	_unit addItemToBackpack "ACE_salineIV";
};
for "_i" from 1 to 20 do {
	_unit addItemToBackpack "ACE_morphine";
};
for "_i" from 1 to 20 do {
	_unit addItemToBackpack "ACE_epinephrine";
};
for "_i" from 1 to 4 do {
	_unit addItemToBackpack "ACE_splint";
};
for "_i" from 1 to 4 do {
	_unit addItemToBackpack "ACE_tourniquet";
};
_unit addItemToBackpack "ACE_Chemlight_HiRed";
_unit addItemToBackpack "ACE_Chemlight_IR";
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "SmokeShell";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "SmokeShellBlue";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "SmokeShellRed";
};
_unit addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 6 do {
	_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
_unit addItemToBackpack "HandGrenade";
_unit addHeadgear "cgqc_helmet_mk1_medic";
_unit addGoggles "G_mas_can_balaM_T";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_mas_can_hv";