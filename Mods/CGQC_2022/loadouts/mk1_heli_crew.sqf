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
this addWeapon "cgqc_gun_mk1_mp7";
this addPrimaryWeaponItem "optic_ACO_grn";
this addPrimaryWeaponItem "40Rnd_46x30SD_mas_can_mag";
this addWeapon "cgqc_gun_glock19_wood";

comment "Add containers";
this forceAddUniform "cgqc_uniform_mk1_helipilot";
this addVest "UK3CB_V_Pilot_Vest_Black";
this addBackpack "CGQC_units_mk1_4_crew_heli_pack";

comment "Add binoculars";
this addWeapon "cgqc_item_rangefinder";

comment "Add items to containers";
this addItemToUniform "ItemAndroid";
this addItemToUniform "ItemcTabHCam";
this addItemToUniform "ACRE_PRC152";
for "_i" from 1 to 10 do {
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
this addItemToUniform "HandGrenade";
for "_i" from 1 to 2 do {
	this addItemToVest "MiniGrenade";
};
for "_i" from 1 to 2 do {
	this addItemToVest "ACE_M84";
};
for "_i" from 1 to 3 do {
	this addItemToVest "40Rnd_46x30SD_mas_can_mag";
};
for "_i" from 1 to 4 do {
	this addItemToVest "HandGrenade";
};
this addHeadgear "cgqc_helmet_crew_black";
this addGoggles "G_mas_can_wrap_B";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "NVGoggles_mas_can_hv";