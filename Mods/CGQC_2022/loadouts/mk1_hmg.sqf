_unit = _this select 1;
execVM "\CGQC_2022\loadouts\transition.sqf";
sleep 2;
_unit setUnitTrait ["Medic", false];
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
_unit addWeapon "cgqc_gun_mk1_mk48";
_unit addPrimaryWeaponItem "Tier1_SOCOM762MG_Black";
_unit addPrimaryWeaponItem "Tier1_Mk48Mod0_LA5_M600V_Black";
_unit addPrimaryWeaponItem "Tier1_EXPS3_0_3xMag_Black_Up";
_unit addPrimaryWeaponItem "Tier1_100Rnd_762x51_Belt_M993_AP";
_unit addPrimaryWeaponItem "Tier1_SAW_Bipod_2_KAC";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
_unit forceAddUniform "cgqc_uniform_mk1";
_unit addVest "cgqc_vest_mk1_tan_ar";
_unit addBackpack "CGQC_units_mk1_2_HMG_pack";

comment "Add binoculars";
_unit addWeapon "cgqc_item_rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 19 do {
	_unit addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_epinephrine";
};
for "_i" from 1 to 3 do {
	_unit addItemToUniform "ACE_EarPlugs";
};
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
_unit addItemToVest "ACE_fieldDressing";
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_salineIV_500";
};
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "G_mas_can_gasmask";
for "_i" from 1 to 2 do {
	_unit addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_M84";
};
_unit addItemToVest "Tier1_250Rnd_762x51_Belt_M993_AP";
for "_i" from 1 to 2 do {
	_unit addItemToVest "rhs_mag_m67";
};
_unit addItemToVest "HandGrenade";
_unit addItemToVest "ACE_Chemlight_HiRed";
_unit addItemToVest "ACE_Chemlight_IR";
for "_i" from 1 to 3 do {
	_unit addItemToVest "SmokeShell";
};
for "_i" from 1 to 10 do {
	_unit addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "ACE_salineIV_500";
};
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "G_mas_can_gasmask";
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
_unit addItemToBackpack "rhsusf_m112_mag";
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "Tier1_250Rnd_762x51_Belt_M993_AP";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "HandGrenade";
};
_unit addHeadgear "cgqc_helmet_mk1";
_unit addGoggles "G_mas_can_balaM_T";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_mas_can_hv";