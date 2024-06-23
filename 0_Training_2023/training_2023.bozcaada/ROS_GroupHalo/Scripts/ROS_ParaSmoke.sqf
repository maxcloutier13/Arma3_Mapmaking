/*
ROS_ParaSmokeRWB - Red White and Blue smoke trail for parachutist - by RickOshay
Part of ROS_Group Halo system
Credit when used in missions (or derivative work) on the Steam Workshop

[unit] execvm "ROS_GroupHalo\scripts\ROS_ParaSmoke.sqf";

Can be applied to all AI and player paras or just leader or players*/
_onlyLeader = false;
_onlyPlayers = true;
// Use all three colors (R W B) simultaneously (attached to chute edge)
_RWBSmoke = true;
// Or use one color attached to the players ankle _RWBsmoke must be false
_colorSmoke = "red"; // Either: "red" "white" "blue" "yellow" "purple" "green"
// Start smoke on free fall or when parachute opened?
_freeFallSmoke = false;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
params ["_unit"];

if (_onlyLeader && _unit != leader group _unit) exitWith {};
if (_onlyPlayers && !isPlayer _unit) exitWith {};

if (_freeFallSmoke) then {
	waitUntil {animationState _unit == "HaloFreeFall_non"};
} else {
	waitUntil {animationState _unit == 'para_pilot'};
};

// Allow chute to fully deploy
sleep 2;

// Create smoke
if (_RWBSmoke) then {
	waitUntil {animationState _unit == 'para_pilot'};
	[_unit,true,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-blue.sqf";
	[_unit,true,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-white.sqf";
	[_unit,true,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-red.sqf";
} else {
	if (_colorSmoke isEqualTo "blue") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-blue.sqf"};
	if (_colorSmoke isEqualTo "white") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-white.sqf"};
	if (_colorSmoke isEqualTo "red") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-red.sqf"};
	if (_colorSmoke isEqualTo "yellow") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-yellow.sqf"};
	if (_colorSmoke isEqualTo "purple") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-purple.sqf"};
	if (_colorSmoke isEqualTo "green") then {[_unit,false,_freeFallSmoke] execvm "ROS_GroupHalo\scripts\smoke-green.sqf"};
};

// Delete smoke
[_unit] spawn {
	params ["_unit"];
	waitUntil {((getPosATL _unit select 2) <=3 or isTouchingGround _unit)};
	{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_unit nearObjects 50);
};

