cgqc_orienteering = true;
cgqc_orient_pos = getPosATL player;
y_targets = [];
y_target = [];
y_all_targets = [];
target_found = false;
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
// Give Items 
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player addItem "ACE_MapTools";
// === Binos
player addWeapon "cgqc_item_rangefinder";
hint "Basic Items Given";
while {!target_found} do {
	_random_pos = [] call BIS_fnc_randomPos;
	player setPos _random_pos;
	hint "Teleported!";
	{ 
		{ 
			_pos = locationPosition _x;
			_nearest = nearestObject _pos;
			if (_nearest distance player > 800 && _nearest distance player < 5000) then {
				y_targets pushBack [_x, text _x, _pos, _nearest distance player];
			};
			y_all_targets pushBack [_x, text _x, _pos, _nearest distance player];
		} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_x], worldSize];  
	} forEach ["NameVillage", "NameCity", "NameCityCapital"];
	if (count y_targets > 0) then {
		y_target = selectRandom y_targets;
		hint format ["Target: %1m", y_target select 3];
		target_found = true;
	}else{
		hint "Location unsuitable";
		sleep 2;
		hintSilent "";
	};
};
// Create trigger
_act = "hint 'Good job Viper!';sleep 10; player setPos cgqc_orient_pos; deleteVehicle cgqc_orient_trg";
_deAct = "";
_int = 2;
cgqc_orient_trg = createTrigger ["EmptyDetector",getPos player, false];
cgqc_orient_trg setTriggerArea [50, 50, getDir player, true];
cgqc_orient_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
cgqc_orient_trg setTriggerStatements ["this", _act, _deAct];
cgqc_orient_trg setTriggerInterval _int;
if !(isNil "y_markerTarget") then {deleteMarker "cgqc_orient_target";};	 
if !(isNil "y_markerPlayer") then {deleteMarker "cgqc_orient_player";};
y_nearestCity_name = y_target select 1;
y_nearestCity_pos = y_target select 2;
y_markerTarget = createMarker ["cgqc_orient_target", y_nearestCity_pos];
"cgqc_orient_target" setMarkerType "mil_objective"; 
"cgqc_orient_target" setMarkerText format["Target:%1", y_nearestCity_name];
"cgqc_orient_target" setMarkerColor "ColorRed"; 
//Player marker
y_markerPlayer = createMarker ["cgqc_orient_player", player];
"cgqc_orient_player" setMarkerType "mil_objective"; 
"cgqc_orient_player" setMarkerText "Player";
"cgqc_orient_player" setMarkerColor "ColorBlue";