/*
ROS Group Halo from a moveable C130 - by Rickoshay (c) V1.5

Description
===========
The ROS Halo system is a more immersive HALO insertion to the default Halo systems whereby you are just telported into the air. This system allows players and AI to Halo from a moveable C130 aerial insertion point.

Some of the main features are:

* Realistic sound and lighting effects
* C130 ramp opens with sfx (configurable)
* Red / Green light GO condition (lights on during the day as well)
* Moveable C130 based on map click position
* Backpack on your chest - optional
* Auto save and restore inventory after landing
* Groups of players with or without AI team members can jump at the same time
* ROS Group Halo supports up to 15 paratroopers per drop (max positions in C130)
* Default parachute can be changed based on which chute mod is being used ie BHZ parachutes etc
* Manual or auto deploy chute at 150m (adjustable below)
* Option to parachute with smoke trails. See ROS_ParaSmoke.sqf for more smoke options
* Optionally leave the C130 ramp open after the first jump for faster successive jumps
* Option to increase total and object view distance (can negatively impact fps)
* Mod dependency - Required: Cup Core for the C130 and Optionally: BHZ parachutes or similar chute mod

Method
======
All group units (players and AI) within 52m of the player who used the Halo addaction can jump at the same time.
The ramp will then open with sfx and lights - then the AI will run out the back and Halo followed by the players.
The maximum number of units per jump is 15 (limited by number of available positions in the back of the C130).
Players can move around in the plane prior to jumping - or jump backwards etc.
If there is a Halo jump currently taking place (i.e. plane busy) the action to jump will not be availble until the plane is cleared - normally with would be a wait time of just a few seconds.

Mobile Insertion point
======================
A second action placed on the laptop (or similar object) allows the player to move the C130 to any Halo position prior to jumping. The C130 is a mobile aerial insertion point allowing you to select the optimal position based on your objective needs. If AI in your group allow for wind direction and velocity when setting the C130 position so that AI move towards the IP.

Legal Stuff
===========
If you use the ROS Group Halo system in your mission you need to credit me in your mission and on the Steam Workshop.
Any derivative script(s) based on the ROS Group Halo system must contain original credit to Rickoshay. Thanks for your support.

Usage and Mod dependency - Cup Core
===================================
Copy the ROS_GroupHalo folder to your mission folder.
Add a static C130 from the Cup Core mod and name it C130 then set it at a suitable altitude i.e. >=1000m

Required
========
1) Add the following two action to a laptop or other suitable object and change the C130 variable name below to the var name you gave the C130 in Editor:

this addAction ["<t color='#ff9900'>HALO C130</t>",{params ["_target", "_caller"]; [_caller, C130] execVM "ROS_GroupHalo\scripts\ROS_GroupHalo.sqf"},[],1.5,false,false,"","player distance _target <3 && count (((position C130) nearObjects ['CAManBase', 10]) select {alive _x}) ==0"];
this addAction ["<t color='#b2ff66'>Move C130</t>",{[C130] execVM "ROS_GroupHalo\scripts\ROS_MoveHaloPlane.sqf"},[],1.4,false,false,"","player distance _target <3 && count (((position C130) nearObjects ['CAManBase', 10]) select {alive _x}) ==0"];

2) Add the following line to the init field of the C130:

[this] execvm "ROS_GroupHalo\scripts\c130LightsandEngine.sqf";

3) Add the following code to your initPlayerLocal.sqf file:

[missionNamespace, "arsenalOpened", {
	player setVariable ["PlayerReady",false,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
[missionNamespace, "arsenalClosed", {
	player setVariable ["PlayerReady",true,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
player setVariable ["PlayerReady",true,true];

4) Add the sound classes to CFGSounds in your description.ext - see example description.ext for reference.

Optional
========
Weather and wind report:
Place the following addaction on a laptop or similar object's init field.

this addAction ["<t color='#3399ff'>Weather Report</t>", "ROS_GroupHalo\scripts\ROS_weatherReport.sqf",[], 1.3, false, false,"","_this distance _target < 4"];

Options
=======
Leave the ramp down after the first Halo jump (speeds up subsequent Halo jumps)*/
_leaveRampOpen = true;

// Default parachute (player)
_chute = "B_Parachute"; // "BHZ_Para_US_Pack", "BHZ_Para_UK_Pack"; (BHZ parachutes mod)

// BackPack On Chest whilst Haloing
_bpackChest = false;

// Maunally deploy chute or auto open?
_manualChute = true;

// If auto open chute selected above - what altitude should player chutes open? (minimum is 120 default 150)
_deployAlt = 150;

// Enable coloured smoke attached to player (See ROS_ParaSmoke.sqf for more smoke options)
_enableSmoke = false;

// Set viewDistance and ObjectViewDistance (impacts FPS and maybe overridden by the server in MP - typical VD is <5000 and Object VD <2500)
_changeVD = false;

// Values below are only applied if the above option is true (Note server may overide these values)
_viewDist = 10000;
_objViewDist = 2500;



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////// DONT CHANGE ANYTHING BELOW THIS LINE //////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

params ["_caller", "_plane"];

// This script is run on the callers machine

// Max distance units can be from the player calling the addaction - in order to be selected to HALO jump with the player
_callDistance = 52; // (default 52m - wedge edge to player with 15 units)

_index = 0;
_aiUnits = [];
_players = [];
_haloUnits = [];
_curWind = wind;

// Adjust view distance on client in SP. Note: In MP it will be overridden by the server - see server config
if (_changeVD) then {
	[_viewDist] remoteExec ["setViewDistance", 0];
	[_objViewDist] remoteExec ["setObjectViewDistance", 0];
};

// Check _deployAlt is not below min 120m or above C130 alt-200
_c130Alt = getPosATL _plane select 2;
If (_deployAlt <120 or _deployAlt > _c130Alt -200) then {_deployAlt = 150};

// Create a list of all eligible group units near the player (within the callDistance) and not in the VA - max 15 units
_nearAIUnits = allUnits select {!isplayer _x && _x distance _caller < _callDistance && group _x == group _caller && isTouchingGround _x && vehicle _x == _x};
_nearPlayers = allPlayers select {isPlayer _x && _x distance _caller < _callDistance && group _x == group _caller && isTouchingGround _x && vehicle _x == _x && _x getVariable ["PlayerReady",false]};
{if (_foreachindex <=15) then {_haloUnits pushBack _x}} foreach (_nearAIUnits + _nearPlayers);

// Check units currently in the C130 - ie Halo busy ---> EXIT
_inPlane = allUnits select {_x distance _plane < 10};
if (count _inPlane >0) exitWith {["THE C130 IS BUSY RIGHT NOW\nTry again in a few seconds"] remoteExec ["hint", _caller];};

//// AI UNITS - Create array ////
{if (!isplayer _x) then {_aiUnits pushback _x}} foreach _haloUnits;

//// PLAYER UNITS - Create array ////
_players = _haloUnits - _aiUnits;

// Reorientate Plane to face away from nearest enemy within 2km if they exist
_punit = (_players select 0);
_eSides = _punit call BIS_fnc_enemySides;
_nearestEnemies = (nearestObjects [player, ["CAManBase"], 2000]) select {side _x in _esides && alive _x};
_nearestEnemy = _nearestEnemies select 0;
if (count _nearestEnemies >0) then {_plane setdir (_plane getdir _nearestEnemy)};

// Fade out screen during teleport, reposition, stance, orientation, loadout switch etc
[_players] spawn {
 	params ["_players"];
 	[["TRANSFERRING TO THE C130", "BLACK", 1]] remoteExec ["cuttext", _players];
 	sleep 1;
};

sleep 1;

// 15 positions in C130
_attachpositions = [
	[-0.9,-7,-4.8], // L back
	[-0.1,-7,-4.8], // C
	[0.9,-7,-4.8], // R
	[-0.9,-5,-4.8], // L
	[-0.1,-5,-4.8], // C
	[0.9,-5,-4.8], // R
	[-0.9,-3,-4.8], // L
	[-0.1,-3,-4.8], // C
	[0.9,-3,-4.8], // R
	[0.9,-1,-4.8], // L
	[-0.1,-1,-4.8], // C
	[-0.9,-1,-4.8], // R
	[-0.9,1,-4.8], // L
	[-0.1,1,-4.8], // C
	[0.9,1,-4.8] // R front
];

//// Reorder array so players are at back of plane (otherwise AI will run through players)
_haloUnits = [];
{_haloUnits pushBack _x} forEach _players;
{_haloUnits pushBack _x} forEach _aiUnits;

// Save all group unit loadouts
{_inv = name _x; [_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_SaveInventory;} foreach _haloUnits;

/////////////////////////////////////////////////////////////////////

// Conditionally add front backpack on units
if (_bpackChest) then {
	{
		[_x, _chute] spawn {
			params ["_x", "_chute"];
			// Switch out backpack for chute
			_bpack = backPack _x;
			removeBackpackGlobal _x;
			_x addBackpackGlobal _chute;
			// Add dummy backpack on chest
			_packHolder = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"];
			_packHolder addBackpackCargoGlobal [_bpack, 1];

			//Backpack on Front while walking around
			_packHolder attachTo [vehicle _x,[-0.07,0.67,-0.3],"pelvis"];
			[_packHolder, [[0,-0.2,-1],[0,1,0]]] remoteExec ["setVectorDirAndUp", _x];

			//Backpack on Front while in HALO Freefall
			waitUntil {animationState _x == "haloFreeFall_non"};
			_packHolder attachTo [_x,[-0.12,-0.02,-.74],"pelvis"];
			[_packHolder, [[0,-1,-0.05],[0,0,-1]]] remoteExec ["setVectorDirAndUp", _x];

			//Backpack on Front while Chute is OPEN
			waitUntil {animationState _x == "para_pilot"};
			_packHolder attachTo [vehicle _x,[-0.07,0.67,-0.3],"pelvis"];
			[_packHolder, [[0,-0.2,-1],[0,1,0]]] remoteExec ["setVectorDirAndUp", _x];

			//Remove chest bpack when on ground
			waitUntil {(getposatl _x select 2) < 1.5 or isTouchingGround _x};
			detach _packHolder;
			deleteVehicle _packHolder;
		};
	} forEach _haloUnits;
} else {
	{
		removeBackpackGlobal _x;
		_x addBackpackGlobal _chute;
 	} forEach _haloUnits;
};

// Transfer group units to plane
{
	_selectedPos = (_attachpositions select _foreachindex);
	_x attachTo [_plane, _selectedPos];
	[_x,"up"] remoteExec ["setUnitPos",_x];
	[_x,"HubStandingUA_idle1"] remoteExec ["switchMove", _x];
	[_x, "move"] remoteExec ["disableAI", _x];
	if (_enableSmoke) then {
		[_x] execvm "ROS_GroupHalo\scripts\ROS_ParaSmoke.sqf";
	};
	sleep 0.1;
} forEach _haloUnits;

sleep 1;
[["", "BLACK IN", 5]] remoteExec ["cuttext", _players];

sleep 0.5;

// 10 second warning
if (_plane animationPhase "ramp_bottom" < 0.2) then {["10secs"] remoteExec ["playSound", _players]};

// Let players move around after positioning AI
{detach _x; [_x, "amovpercmstpslowwrfldnon"] remoteExec ["switchmove",_x]; [_x, "up"] remoteExec ["setUnitPos", _x]} forEach _players;

if (_plane animationPhase "ramp_bottom" < 0.2) then {sleep 5};

// Open c130 ramp - rampopen 10secs
if (_plane animationPhase "ramp_bottom" < 0.2) then {
	["rampopen"] remoteExec ["playSound", _players];
	["doorwind"] remoteExec ["playSound", _players];
};

// AnimationName, phase, speed
if (_plane animationPhase "ramp_bottom" < 0.2) then {
	_plane animate ["ramp_top",1,0.7];
	_plane animate ["ramp_bottom",1,0.7];
};

if (_plane animationPhase "ramp_bottom" < 0.2) then {sleep 6};

// Change light colour - see ROS_GroupHalo\scripts\c130LightsandEngine.sqf
[lightR, [0,0.2,0.1]] remoteExec ["setLightAmbient", 0];
[lightR, [0,0.4,0.1]] remoteExec ["setLightColor", 0];

sleep 1;

// Detach NPC's and run them out with some random velocity
if (count _aiUnits > 0) then {
	reverse _aiUnits;
	{
		[_x] spawn {
			params ["_x"];
			detach _x;
			[_x, "move"] remoteExec ["enableAI", _x];
			[_x, "AmovPercMrunSnonWnonDf"] remoteExec ["switchMove", _x]; // AmovPercMrunSnonWnonDf 0.8 run
			[_x, "anim"] remoteExec ["disableAI", _x];
			[_x, false] remoteExec ["allowdamage", _x];
			waitUntil {animationState _x == "HaloFreeFall_non"};
			// Make them jump slightly when they exit ramp and spread them out to avoid collisions
			[_x, [(12 + random 8) * (sin (direction _x)), (12 + random 8) * (cos (direction _x)), 5]] remoteExec ["setvelocity",_x];
			//sleep 2.5; // run anim 0.8x2
			[_x, "anim"] remoteExec ["enableAI", _x];
			waitUntil {getPosATL _x select 2 <350};
			[_x] remoteExec ["removebackpack",_x];
			waitUntil {getPosATL _x select 2 <=100};
			_pos = position _x;
			_chute = createVehicle ["NonSteerable_Parachute_F", _pos, [], 0, "fly"];
			//_chute setdir (_chute getDir (getMarkerPos "Marker_C130")) +random 50;
			[_x, _chute] remoteExec ["moveInDriver", _x];
		};
		// interleave delay - to limit collisions
		sleep 0.1;
	} foreach _aiUnits;
};

waitUntil {_caller distance _plane > 30};

// Manual chute deployment
if (_manualChute) then {
	if (animationState _caller != "para_pilot") then {["Reminder!\nDeploy your chute at around 130m"] remoteExec ["hint", _players]};
} else {
	// Auto deploy chutes
	{
		[_x, _deployAlt] spawn {
			params ["_unit", "_deployAlt"];
			if (animationState _unit != "para_pilot") then {["Chute will auto deploy around 130m"] remoteExec ["hint", _unit]};
			waitUntil {(getPosATL _unit select 2) <=_deployAlt};
			[_unit, ["openParachute", _unit]] remoteExec ["action", _unit];
		};
	} forEach _players;
};

// Close doors and change light colour
if !(_leaveRampOpen) then {
	_plane animate ["ramp_top",0,0.7];
	_plane animate ["ramp_bottom",0,0.7];
	[_plane, "rampopen"] remoteExec ["say3D", _players];
	// Change light colour
	[lightR, [0.2,0,0]] remoteExec ["setLightAmbient", 0];
	[lightR, [1,0.1,0]] remoteExec ["setLightColor", 0];
};

// Load player inventory on landing
[_players] spawn {
	params ["_players"];
	{
		//Load Inventory when on ground
		waitUntil {(getposatl _x select 2) < 2 or isTouchingGround _x};
		_inv = name _x;
		[_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;
	} foreach _players;
};

// Load AI inventory on landing
[_aiUnits] spawn {
	params ["_aiUnits"];
	if (count _aiUnits >= 1) then {
		{
			waitUntil {(getposatl _x select 2) < 2 or isTouchingGround _x};
			_inv = name _x;
			[_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;
		} forEach _aiUnits;
	};
};

// Wait until all Halo units are on the ground
waitUntil {{isTouchingGround _x} foreach _haloUnits};

// Reset original wind speed and direction on server = global effect
[[_curWind select 0,_curwind select 1,true]] remoteExec ["setWind",2];
