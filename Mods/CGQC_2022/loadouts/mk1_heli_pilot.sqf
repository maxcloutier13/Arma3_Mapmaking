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
_unit addWeapon "cgqc_gun_mk1_mp7";
_unit addPrimaryWeaponItem "optic_ACO_grn";
_unit addPrimaryWeaponItem "40Rnd_46x30SD_mas_can_mag";
_unit addWeapon "cgqc_gun_glock19_wood";

comment "Add containers";
_unit forceAddUniform "cgqc_uniform_mk1_helipilot";
_unit addVest "cgqc_vest_mk1_pilot_black";
_unit addBackpack "CGQC_units_mk1_4_Pilot_heli_pack";

comment "Add binoculars";
_unit addWeapon "cgqc_item_rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ItemcTabHCam";
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
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 3 do {
	_unit addItemToVest "HandGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_M84";
};
for "_i" from 1 to 3 do {
	_unit addItemToVest "40Rnd_46x30SD_mas_can_mag";
};
_unit addHeadgear "cgqc_helmet_heli_black";
_unit addGoggles "G_mas_can_wrap_B";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_mas_can_hv";