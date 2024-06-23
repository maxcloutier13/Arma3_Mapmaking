/*
Move static aerial spawn point - cup c130 on mapclick by RickOShay 2015
This script only works in conjunction with the ROS_GroupHalo.sqf system.

Legal stuff
You may use this and any dependant scripts without my permisssion as long as they retain this header and you must credit me in your mission and on the Steam Workshop.

Usage
Place a static C130 (CUP Core mod) on the map at suitable altitude ie. >=1000m. Name it C130.
Place the following addaction on a flag pole or a laptop or similar object.

this addAction ["<t color='#b2ff66'>Move C130</t>",{[C130] execVM "ROS_GroupHalo\scripts\ROS_MoveHaloPlane.sqf"},[],1.4,false,false,"","player distance _target <3 && count (((position C130) nearObjects ['CAManBase', 10]) select {alive _x}) ==0"];

Allow all units to move the C130 */
ROS_C130relocate = true;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
params ["_plane"];

if (!ROS_C130relocate && player != leader group player) exitWith {hint "Sorry !\nOnly group leaders are\nallowed to move the C130"};

// Play sound
_snd = selectRandom ["callingBB1","callingBB2","callingBB3","callingBB4","callingBB5"];
playsound _snd;

// Add global reference var for plane (EH etc)
ROS_Haloplane = _plane;
publicVariable "ROS_Haloplane";

if (!isnull _plane) then {

	[_plane] spawn {
		params ["_plane"];
		if (isnil "_markerC130") then {
			_markerC130 = createMarker ["Marker_C130", _plane];
	        _markerC130 setMarkerShape "ICON";
	        _markerC130 setMarkerType "respawn_para";
	        _markerC130 setMarkerText "C130";
	        _markerC130 setMarkerColor "ColorWest";
		};
	};

	ROS_Fnc_OMSC = {
		params ["_pos", "_thisEH"];

		hint "";
		// Map Click
		"Marker_C130" setmarkerpos _pos;
		_z = getPos ROS_Haloplane select 2;
		_pos set [2,_z];
	    ROS_Haloplane setPosATL _pos;
	    playSound "beep";
		hint "C130\nRELOCATING\nTO THE HALO POSITION SIR !";
		sleep 3;
		hint "";
		removeMissionEventHandler ["MapSingleClick", _thisEH];
		onMapSingleClick "";
    	openMap false;
    	true
	};

	openMap true;

	// Hint and Wind params
	hint format ["CLICK ON THE MAP TO\nSET THE HALO POSITION\n\nWIND\nHeading: %1 deg\nSpeed: %2 km/h\nGusts: %3\n\nNOTE\nHigh gust value (>0.5) can result\nin erratic wind speed & heading", windDir toFixed 0, (vectorMagnitude wind) toFixed 1, gusts tofixed 2];

	addMissionEventHandler ["MapSingleClick", {
	   	params ["", "_pos", "", ""];
	   	[_pos, _thisEventHandler] spawn ROS_Fnc_OMSC;
	}];
	waitUntil {!visibleMap};
	sleep 2;
	hint"";
};
