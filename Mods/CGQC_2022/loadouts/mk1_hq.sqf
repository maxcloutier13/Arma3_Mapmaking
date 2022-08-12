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
_unit addWeapon "cgqc_gun_mk1_m4a1blkII";
_unit addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
_unit addPrimaryWeaponItem "Tier1_M4BII_NGAL_M600V_Black";
_unit addPrimaryWeaponItem "Tier1_EXPS3_0_3xMag_Black_Up";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
_unit addWeapon "cgqc_gun_glock19_wood";
_unit addHandgunItem "Tier1_15Rnd_9x19_JHP";

comment "Add containers";
_unit forceAddUniform "cgqc_uniform_mk1";
_unit addVest "cgqc_vest_mk1_tan";
_unit addBackpack "CGQC_units_mk1_0_HQ_pack";

comment "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "cgqc_item_laserdesignator";

comment "Add items to containers";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC152";
for "_i" from 1 to 19 do {
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
_unit addItemToVest "ACE_fieldDressing";
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_salineIV_500";
};
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "G_mas_can_gasmask";
_unit addItemToVest "ItemcTab";
_unit addItemToVest "MRH_FoldedSatcomAntenna";
_unit addItemToVest "MRH_TacticalDisplay";
for "_i" from 1 to 2 do {
	_unit addItemToVest "ACE_M84";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
_unit addItemToVest "ACE_Chemlight_HiRed";
_unit addItemToVest "ACE_Chemlight_IR";
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 10 do {
	_unit addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "ACE_salineIV_500";
};
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "G_mas_can_gasmask";
_unit addItemToBackpack "ItemcTab";
_unit addItemToBackpack "MRH_FoldedSatcomAntenna";
_unit addItemToBackpack "MRH_TacticalDisplay";
_unit addItemToBackpack "ACRE_PRC117F";
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
_unit addHeadgear "cgqc_helmet_mk1";
_unit addGoggles "G_mas_can_shemag_gog_l";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "B_UavTerminal";
_unit linkItem "NVGoggles_mas_can_hv";