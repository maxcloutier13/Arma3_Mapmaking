_unit = _this select 1;
execVM "loadouts\transition.sqf";
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
_unit addWeapon "cgqc_gun_spar17_wood";
_unit addPrimaryWeaponItem "cgqc_acc_silencer_wood";
_unit addPrimaryWeaponItem "cgqc_acc_anpeq15_laser_wood";
_unit addPrimaryWeaponItem "optic_AMS";
_unit addPrimaryWeaponItem "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_unit addPrimaryWeaponItem "cgqc_acc_bipod_wood";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
_unit forceAddUniform "U_mas_can_B_CombatUniform_S_NTOG";
_unit addVest "V_mas_can_PlateCarrierLR_tan";
_unit addBackpack "CGQC_pack_kitbag_green";

comment "Add binoculars";
_unit addWeapon "Rangefinder";

comment "Add items to containers";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 10 do {
	_unit addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	_unit addItemToUniform "ACE_epinephrine";
};
for "_i" from 1 to 2 do {
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
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ACE_ATragMX";
_unit addItemToUniform "ACE_Kestrel4500";
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
	_unit addItemToVest "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
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
for "_i" from 1 to 15 do {
	_unit addItemToBackpack "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "HandGrenade";
};
_unit addHeadgear "cgqc_helmet_cgqc_green";
_unit addGoggles "G_mas_can_balaM_T";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_mas_can_hv";

comment "Set identity";
[_unit, "WhiteHead_07", "male08eng"] call BIS_fnc_setIdentity;