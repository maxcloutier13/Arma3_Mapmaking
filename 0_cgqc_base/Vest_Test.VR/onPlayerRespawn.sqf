player setUnitLoadout(player getVariable["Saved_Loadout",[]]); //Load loadout saved on death
player enableStamina false; //Re-disable stamina, in-case 
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[ player, player_patch ] call BIS_fnc_setUnitInsignia; //Set insignia back 