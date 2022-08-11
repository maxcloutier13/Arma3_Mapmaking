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
_unit addWeapon "arifle_mas_can_mp7_F";
_unit addPrimaryWeaponItem "optic_ACO_grn";
_unit addPrimaryWeaponItem "40Rnd_46x30SD_mas_can_mag";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_20Rnd_9x19_FMJ";

comment "Add containers";
_unit forceAddUniform "U_I_pilotCoveralls";
_unit addVest "UK3CB_V_Pilot_Vest";
_unit addBackpack "CGQC_mk1_4_Pilot_Jet_pack";

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
_unit addItemToUniform "Tier1_20Rnd_9x19_FMJ";
_unit addItemToUniform "ACE_M84";
for "_i" from 1 to 2 do {
	_unit addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "rhs_mag_m67";
};
_unit addItemToVest "ACE_M84";
for "_i" from 1 to 4 do {
	_unit addItemToVest "40Rnd_46x30SD_mas_can_mag";
};
_unit addHeadgear "H_PilotHelmetFighter_B";
_unit addGoggles "rhs_googles_yellow";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";

comment "Set identity";
[_unit, "WhiteHead_02", "male03eng"] call BIS_fnc_setIdentity;