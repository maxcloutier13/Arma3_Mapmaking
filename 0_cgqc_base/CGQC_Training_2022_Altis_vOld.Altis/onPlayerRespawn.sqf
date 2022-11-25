// Get loadout from death
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);
// Disable stamina
player enableStamina false;
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[ player, player_patch ] call BIS_fnc_setUnitInsignia; //Set insignia back 