// Markers into grass cutters script by Sa-Matra
{
	if(
		markerShape _x == "RECTANGLE" &&
		toLower _x find "grasscutter" == 0
	) then {
		if(isServer) then {
			_sin = sin markerDir _x;
			_cos = cos markerDir _x;
			markerSize _x params ["_mw", "_mh"];
			markerPos _x params ["_mx", "_my"];
			for "_i" from -_mw to _mw step 7 do {
				for "_j" from -_mh to _mh step 7 do {
					createVehicle ["Land_ClutterCutter_large_F", [_mx + _cos * _i + _sin * _j, _my + -_sin * _i + _cos * _j, 0], [], 0, "CAN_COLLIDE"];
				};
			};
		};
		deleteMarkerLocal _x;
	};
} forEach allMapMarkers;

//Easy way out mod
murshun_easywayout_canSuicide = true;

//For ALIVE keeping AI members saved 
waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
sleep 2;
{
	if !(isPlayer _x) then {
		if !(_x getVariable ["Persistent_Teleport", false]) then {
			_x setPos (getPos player);
			_x setVariable ["Persistent_Teleport", true, true];
			sleep .5;
		};
	};
} forEach units group player;

//Ace fortify sets truck as construction
acex_fortify_locations pushBack [construction_van, 50, 50, 0, false];

