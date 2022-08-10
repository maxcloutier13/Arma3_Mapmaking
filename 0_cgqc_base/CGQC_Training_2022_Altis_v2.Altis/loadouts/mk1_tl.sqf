_unit = _this select 1;
execVM "loadouts\transition.sqf";
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
_unit addWeapon "rhs_weap_m4a1_blockII_M203";
_unit addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
_unit addPrimaryWeaponItem "Tier1_M4BII_NGAL_M600V_Black";
_unit addPrimaryWeaponItem "Tier1_Razor_Gen2_16_Geissele_Docter";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
_unit forceAddUniform "U_mas_can_B_CombatUniform_S_NTOG";
_unit addVest "V_mas_can_PlateCarrier1_tan";
_unit addBackpack "CGQC_pack_kitbag_green";

comment "Add binoculars";
_unit addWeapon "Rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToUniform "ItemAndroid";
for "_i" from 1 to 10 do {
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
_unit addItemToVest "HandGrenade";
_unit addItemToVest "Tier1_15Rnd_9x19_JHP";
for "_i" from 1 to 2 do {
	_unit addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "rhs_mag_m67";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_M84";
};
for "_i" from 1 to 7 do {
	_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "1Rnd_HE_Grenade_shell";
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
for "_i" from 1 to 12 do {
	_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
for "_i" from 1 to 10 do {
	_unit addItemToBackpack "1Rnd_HE_Grenade_shell";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "UGL_FlareRed_F";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";
};
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";
};
_unit addItemToBackpack "HandGrenade";
_unit addHeadgear "cgqc_helmet_cgqc_green";
_unit addGoggles "G_mas_can_wrap_gog_B";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_mas_can_hv";

comment "Set identity";
[_unit, "WhiteHead_11", "male02eng"] call BIS_fnc_setIdentity;