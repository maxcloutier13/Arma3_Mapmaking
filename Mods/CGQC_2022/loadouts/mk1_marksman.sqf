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
this addWeapon "cgqc_gun_mk1_hk417";
this addPrimaryWeaponItem "Tier1_SandmanS_Black";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_light";
this addPrimaryWeaponItem "Tier1_Razor_Gen3_110_Geissele_Docter";
this addPrimaryWeaponItem "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
this addPrimaryWeaponItem "bipod_01_F_blk";
this addWeapon "cgqc_gun_glock19_wood";
this addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
this forceAddUniform "cgqc_uniform_mk1";
this addVest "cgqc_vest_mk1_tan_lr";
this addBackpack "CGQC_units_mk1_2_Marksman_pack";

comment "Add binoculars";
this addWeapon "ACE_Vector";

comment "Add items to containers";
this addItemToUniform "ItemAndroid";
this addItemToUniform "ItemcTabHCam";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 15 do {
	this addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_epinephrine";
};
for "_i" from 1 to 2 do {
	this addItemToUniform "ACE_EarPlugs";
};
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
this addItemToUniform "ACE_RangeCard";
this addItemToUniform "ACE_ATragMX";
this addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 5 do {
	this addItemToVest "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	this addItemToVest "ACE_salineIV_500";
};
this addItemToVest "ACE_EntrenchingTool";
this addItemToVest "G_mas_can_gasmask";
this addItemToVest "ACE_ATragMX";
this addItemToVest "ACE_Kestrel4500";
for "_i" from 1 to 2 do {
	this addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	this addItemToVest "ACE_M84";
};
for "_i" from 1 to 6 do {
	this addItemToVest "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
};
this addItemToVest "HandGrenade";
this addItemToVest "ACE_Chemlight_HiRed";
this addItemToVest "ACE_Chemlight_IR";
this addItemToVest "SmokeShell";
for "_i" from 1 to 10 do {
	this addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	this addItemToBackpack "ACE_salineIV_500";
};
this addItemToBackpack "ACE_EntrenchingTool";
this addItemToBackpack "G_mas_can_gasmask";
this addItemToBackpack "ACE_ATragMX";
this addItemToBackpack "ACE_Kestrel4500";
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
this addItemToBackpack "rhsusf_m112_mag";
for "_i" from 1 to 13 do {
	this addItemToBackpack "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
};
for "_i" from 1 to 3 do {
	this addItemToBackpack "HandGrenade";
};
this addHeadgear "cgqc_helmet_mk1";
this addGoggles "G_mas_can_balaM_T";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "B_UavTerminal";
this linkItem "NVGoggles_mas_can_hv";