// Clears units loadout and inserts the base items 

// Remove every item, in case 
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;

// uniform
for "_i" from 0 to 9 do {
	player addItemToUniform "ACE_fieldDressing";
};
for "_i" from 0 to 1 do {
	player addItemToUniform "ACE_epinephrine";
};
for "_i" from 0 to 1 do {
	player addItemToUniform "ACE_morphine";
};
for "_i" from 0 to 1 do {
	player addItemToUniform "ACE_splint";
};
for "_i" from 0 to 1 do {
	player addItemToUniform "ACE_tourniquet";
};
for "_i" from 0 to 1 do {
	player addItemToUniform "ACE_CableTie";
};
player addItemToUniform "ACE_EarPlugs";
// player addItemToUniform "ACE_RangeCard";
// player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACRE_PRC343";

// vest

// backpack
for "_i" from 0 to 9 do {
	player addItemToBackpack "ACE_fieldDressing";
};
for "_i" from 0 to 1 do {
	player addItemToBackpack "ACE_bloodIV_500";
};
for "_i" from 0 to 1 do {
	player addItemToBackpack "ACE_bloodIV_250";
};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_Flashlight_MX991";