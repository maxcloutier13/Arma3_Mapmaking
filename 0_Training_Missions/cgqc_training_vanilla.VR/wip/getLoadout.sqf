// Equipment
_loadout_player_helmet = headgear player;
_loadout_player_goggles = goggles player;
_loadout_player_uniform = uniform player;
_loadout_player_vest = vest player;
_loadout_player_backpack = backpack player;
_loadout_player_primary = primaryWeapon  player;
_loadout_player_primary_acc = primaryWeaponItems player;
_loadout_player_primary_mag = primaryWeaponMagazine player;
_loadout_player_secondary = handgunWeapon  player;
_loadout_player_secondary_acc = handgunItems player;
_loadout_player_secondary_mag = handgunMagazine player;
_loadout_player_launcher = secondaryWeapon  player;
_loadout_player_launcher_acc = secondaryWeaponItems player;
_loadout_player_launcher_mag = secondaryWeaponMagazine player;

// Items
_loadout_player_items_uniform = uniformItems player; 
_loadout_player_mags_uniform = uniformMagazines player; 
_loadout_player_items_vest = vestItems player;
_loadout_player_mags_vest = vestMagazines player; 
_loadout_player_items_pack = backpackItems player;
_loadout_player_mags_pack = backpackMagazines player; 
_loadout_player_items_assigned = assignedItems player;

remove_txt = "
	//Remove stuff;
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
";

//Export text format
uniform_txt = "";
uniform_txt = parseText format["
	//Uniform;
	player addHeadgear ""%1"";
	player addGoggles ""%2"";
	player forceAddUniform ""%3"";
	player addVest ""%4"";
	player addBackpack ""%5"";"
, _loadout_player_helmet,
_loadout_player_goggles,
_loadout_player_uniform,
_loadout_player_vest,
_loadout_player_backpack
];

// Uniform items
uniform_items_txt = "//Uniform Items;";
{_str = format ["player addItemToUniform ""%1"";", _x];
	uniform_items_txt = uniform_items_txt + _str;
}forEach _loadout_player_items_uniform;
{_str = format ["player addItemToUniform ""%1"";", _x];
	uniform_items_txt = uniform_items_txt + _str;
}forEach _loadout_player_mags_uniform;

// Vest items
vest_items_txt = "//Vest Items;";
{_str = format ["player addItemToVest ""%1"";", _x];
	vest_items_txt = vest_items_txt + _str;
}forEach _loadout_player_items_vest;
{_str = format ["player addItemToVest ""%1"";", _x];
	vest_items_txt = vest_items_txt + _str;
}forEach _loadout_player_mags_vest;

//Backpack items
pack_items_txt = "//Backpack Items;";
{_str = format ["player addItemToBackpack ""%1"";", _x];
	pack_items_txt = pack_items_txt + _str;
}forEach _loadout_player_items_pack;
{_str = format ["player addItemToBackpack ""%1"";", _x];
	pack_items_txt = pack_items_txt + _str;
}forEach _loadout_player_mags_pack;

//Assigned items
assigned_items_txt = "//Assigned Items;";
{_str = format ["player assignItem ""%1"";", _x];
	assigned_items_txt = assigned_items_txt + _str;
}forEach _loadout_player_items_assigned;

//Guns
weapons_txt = "//Weapons;";
//Primary
if (_loadout_player_primary != "") then {
	_str = format ["
		player addWeapon ""%1"";
	", 
		_loadout_player_primary
	];
	weapons_txt = weapons_txt + _str;
};
// Accessories
{_str = format ["player addPrimaryWeaponItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_primary_acc;
// Magazines
{_str = format ["player addPrimaryWeaponItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_primary_mag;

//Handgun
if (_loadout_player_secondary != "") then {
	_str = format ["
		player addWeapon ""%1"";
	", 
		_loadout_player_secondary
	];
	weapons_txt = weapons_txt + _str;
};
// Accessories
{_str = format ["player addHandgunItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_secondary_acc;
// Magazines
{_str = format ["player addHandgunItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_secondary_mag;

//Launcher
if (_loadout_player_launcher != "") then {
	_str = format ["
		player addWeapon ""%1"";
	", 
		_loadout_player_launcher
	];
	weapons_txt = weapons_txt + _str;
};
// Accessories
{_str = format ["player addSecondaryWeaponItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_launcher_acc;
// Magazines
{_str = format ["player addSecondaryWeaponItem ""%1"";", _x];
	weapons_txt = weapons_txt + _str;
}forEach _loadout_player_launcher_mag;


// String prep
items_txt = uniform_items_txt + vest_items_txt + pack_items_txt + assigned_items_txt + weapons_txt;
_loadout_string = remove_txt + str uniform_txt + items_txt;

//Copy result to clipboard
copyToClipboard _loadout_string;

/*


comment "Add weapons";
player addWeapon "cgqc_gun_mk1_m4a1blkII";
player addPrimaryWeaponItem "Tier1_KAC_556_QDC_CQB_Black";
player addPrimaryWeaponItem "Tier1_Mk18_NGAL_M300C_Black";
player addPrimaryWeaponItem "tier1_atacr18_geissele_docter_black";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "cgqc_gun_mk1_Javelin";
player addSecondaryWeaponItem "jav_AT_mas_can";
player addWeapon "cgqc_gun_glock19_wood";
player addHandgunItem "Tier1_15Rnd_9x19_JHP";
player addHandgunItem "tier1_dbalpl";

comment "Add containers";
player forceAddUniform "cgqc_uniform_mk1";
player addVest "cgqc_vest_mk1_tan_lr";
player addBackpack "cgqc_pack_mk1_kitbag";

comment "Add binoculars";
player addWeapon "cgqc_item_rangefinder";

comment "Add items to containers";
for "_i" from 1 to 5 do {
	player addItemToUniform "FF_Painkiller";
};
player addItemToUniform "ACRE_PRC343";
player addItemToUniform "ItemAndroid";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
 
for "_i" from 1 to 10 do {
	player addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 2 do {
	player addItemToUniform "ACE_epinephrine";
};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {
	player addItemToUniform "ACE_morphine";
};
player addItemToUniform "ACE_splint";
for "_i" from 1 to 2 do {
	player addItemToUniform "ACE_tourniquet";
};
for "_i" from 1 to 2 do {
	player addItemToUniform "ACE_CableTie";
};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {
	player addItemToVest "Tier1_15Rnd_9x19_JHP";
};
for "_i" from 1 to 2 do {
	player addItemToVest "ACE_M84";
};
for "_i" from 1 to 10 do {
	player addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
for "_i" from 1 to 10 do {
	player addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 1 to 5 do {
	player addItemToBackpack "FF_Painkiller";
};
for "_i" from 1 to 2 do {
	player addItemToBackpack "ACE_salineIV_500";
};
player addItemToBackpack "ACE_EntrenchingTool";
 
player addItemToBackpack "WBK_HeadLampItem";
player addItemToBackpack "G_mas_can_gasmask";
for "_i" from 1 to 3 do {
	player addItemToBackpack "SmokeShell";
};
for "_i" from 1 to 3 do {
	player addItemToBackpack "SmokeShellBlue";
};
for "_i" from 1 to 3 do {
	player addItemToBackpack "SmokeShellRed";
};
player addItemToBackpack "B_IR_Grenade";
 
player addItemToBackpack "jav_AT_mas_can";
player addItemToBackpack "jav_AT_mas_can";
player addItemToBackpack "jav_AT_mas_can";
player addHeadgear "cgqc_helmet_mk1";
player addGoggles "G_mas_can_balaM_T";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "JAS_GPNVG18_blk";

*/

