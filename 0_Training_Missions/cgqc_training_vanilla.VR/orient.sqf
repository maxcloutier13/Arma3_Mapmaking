cgqc_orienteering = true;
["basic_orient"] execVM "\CGQC\loadouts\mk3_transition.sqf";
// Remove shits 
player unlinkItem "ItemGPS";
player removeItem "ACE_microDAGR";
player removeItem "ItemAndroid";
player removeWeapon "Laserdesignator_01_khk_F";
player removeWeapon "Laserdesignator_01_khk_F";
player removeWeapon "Laserdesignator_03";
player removeWeapon "Laserdesignator";
hint "Items removed";
sleep 2;
// Give Items 
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player addItem "ACE_MapTools";
// === Binos
player addWeapon "cgqc_item_rangefinder";
hint "Basic Items Given";
sleep 2;
_random_pos = [] call BIS_fnc_randomPos;
player setPos _random_pos;
hint "Teleported!";
sleep 2;
//List of all Village/Cities
/*
y_lcs = []; 
{ y_lct = _forEachIndex; 
{ y_lcs pushBack [text _x, y_lct, locationPosition _x, direction _x, size _x, rectangular _x]; 
} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize];  
} forEach ["NameVillage", "NameCity", "NameCityCapital"];
*/
y_targets = [];
{ 
	{ 
		if (_x distance player > 800 && _x distance player < 2000) then {
			y_targets pushBack [_x, text _x, locationPosition _x];
		};
	} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize];  
} forEach ["NameVillage", "NameCity", "NameCityCapital"];
y_target = selectRandom y_targets;

y_nearestCity_name = y_target select 1;
y_nearestCity_pos = y_target select 2;
y_markerstr = createMarker ["cgqc_orient_target", y_nearestCity_pos];
"cgqc_orient_target" setMarkerType "mil_objective"; 
"cgqc_orient_target" setMarkerText format["Target:%1", y_nearestCity_name];
"cgqc_orient_target" setMarkerColor "ColorRed"; 

y_markerstr = createMarker ["cgqc_orient_player", player];
"cgqc_orient_player" setMarkerType "mil_objective"; 
"cgqc_orient_player" setMarkerText "Player";
"cgqc_orient_player" setMarkerColor "ColorRed";