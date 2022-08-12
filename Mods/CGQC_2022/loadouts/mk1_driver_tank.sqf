_unit = _this select 1;
execVM "\CGQC_2022\loadouts\transition.sqf";
sleep 2;
_unit setUnitTrait ["Medic", false];
_unit setUnitTrait ["engineer", true];
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
_unit addWeapon "arifle_mas_can_mp7_F";
_unit addPrimaryWeaponItem "optic_ACO_grn";
_unit addPrimaryWeaponItem "40Rnd_46x30SD_mas_can_mag";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_20Rnd_9x19_FMJ";

comment "Add containers";
_unit forceAddUniform "cgqc_uniform_mk1";
_unit addVest "cgqc_vest_mk1_pilot";
_unit addBackpack "cgqc_pack_mk1_magic";

comment "Add binoculars";
_unit addWeapon "Rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACRE_PRC152";
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
for "_i" from 1 to 2 do {
	_unit addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "HandGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_M84";
};
for "_i" from 1 to 4 do {
	_unit addItemToVest "40Rnd_46x30SD_mas_can_mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "HandGrenade";
};
_unit addItemToBackpack "ToolKit";
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "HandGrenade";
};
_unit addHeadgear "cgqc_helmet_mk1_tank";
_unit addGoggles "G_mas_can_balaM_b";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";

comment "Set identity";
[_unit, "WhiteHead_17", "male02eng"] call BIS_fnc_setIdentity;