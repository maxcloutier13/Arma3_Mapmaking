// Fuck music in vehicle. Ace fucks it up. 
// Sorting zeus menu. 
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};

this addAction ["-- Start boarding", {
	start_boarding = true;
	parachute_light = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];

this addAction ["---- Insertion!", {
	if (( {
		alive _x && !(_x in insertion_plane)
	} count allPlayers ) == 0) then {
		[] execVM "scripts\cgqc_insertion_plane.sqf";
		phase_mission_started = true;
	} else {
		hint "Il manque quelqu'un..";
	};
}];

this addAction [
	"------ Play Abierto", {
		if (!isNull playing_song) then {
			deleteVehicle playing_song;
		};
		while { true } do {
			playing_song = qg_radio say3D "abierto";
			sleep 239;
		};
	}
];

this addAction [
	"------ Insert music OFF", {
		deleteVehicle playing_song;
	}
];
this addAction [
	"---------- Remove Zeus Actions", {
		removeAllActions player;
	}
];

// Stops ace from updating music volume all the time
ace_hearing_disableVolumeUpdate = true;

// Always plays super loud. Oh shit it's because of ace hearing!! WTF!
ace_hearing_disableVolumeUpdate = true;
playMusic "01_roll_right";
insertion_plane say3D ["roll_right", 50, 1];

// Music 
// Description.ext
class CfgMusic
{
	sounds[] = {
		01, 02
	};
	class music_roll_right
	{
		name = "music_roll_right";
		sound[] = {
			"sounds\roll_right.ogg", 0.2, 1.0
		};
		titles[] = {
			0, ""
		};
	};
};

// Zeus menu updated 
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["-- Start boarding", {
	start_boarding = true;
	parachute_light = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];
this addAction ["---- Insertion!", {
	if (( {
		alive _x && !(_x in insertion_plane)
	} count allPlayers ) == 0) then {
		[] execVM "scripts\cgqc_insertion_plane.sqf";
		phase_mission_started = true;
	} else {
		hint "Il manque quelqu'un..";
	};
}];
this addAction [
	"------ Insert music ON", {
		song_insertion = [insertion_plane, player] say2D ["roll_right", 100, 1];
	}
];
this addAction [
	"------ Insert music OFF", {
		deleteVehicle song_insertion;
	}
];
this addAction [
	"---------- Remove Zeus Actions", {
		removeAllActions player;
	}
];

// Getting close
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["-- Start boarding", {
	start_boarding = true;
	parachute_light = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];
this addAction ["---- Insertion!", {
	if (( {
		alive _x && !(_x in insertion_plane)
	} count allPlayers ) == 0) then {
		[] execVM "scripts\cgqc_insertion_plane.sqf";
		phase_mission_started = true;
	} else {
		hint "Il manque quelqu'un..";
	};
}];
this addAction [
	"Insertion music on", {
		insertion_plane say3D ["roll_right", 300, 1];
	}
];
this addAction [
	"Remove Zeus Actions", {
		removeAllActions player;
	}
];

// Play song in insertion 
if (phase_mission_started) then {
	insertion_song = insertion_plane say3D "roll_right";
};

// CBA version of say3D works great apparently 
if (isServer) then {
	[unit, "sound", 200] call CBA_fnc_globalSay3d;
};

// find name of player to tell him to chute up 

hint format ["%1 ramasse un parachute!", (name player)];

// if parachute then loadup
if (backpack player isEqualTo "B_Parachute") then {
	player moveInCargo insertion_plane;
};

// Check if player has parachute
!()

// Cut volume on radio init?
// Cut volume here?
if (hasInterface) then {
	0.1 fadeSound 0;
	0.1 fadeMusic 0;
};
[this] spawn {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
};

// Zeus menu auto-deleting action after triggering it 
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["Insertion!", {
	if (( {
		alive _x && !(_x in insertion_plane)
	} count allPlayers ) == 0) then {
		[] execVM "scripts\cgqc_insertion_plane.sqf";
		phase_mission_started = true;
		removeAllActions player;
	} else {
		hint "Il manque quelqu'un..";
	};
}];

// Play music only on server-side 
this addAction ["Play Music", {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
}];
this addAction ["Stop Music", {
	deleteVehicle playing_song;
}];
if (isServer) then {
	[this] spawn {
		while { true } do {
			playing_song = (_this select 0) say3D "abierto";
			sleep 239;
		};
	};
};

// Check if exfil vehicle prent in marker 
this && exfil_heli in thisList

// Check if player has parachute 
boarding_started = true;
if ("B_Parachute" in (unitBackpack player)) then {
	player moveInCargo insertion_plane;
};
} else {
titleText ["Ramasse un parachute...", "PLAIN DOWN", 3];
titleFadeOut 2;

// Latest version 
// Destroy zone
// Can be static, building, house 
if (isServer) then {
	_buildingArray = (getPos destroy_1) nearObjects ["building", 500];
	{
		_x setDamage 0.95;
	} forEach _buildingArray;
};

// Destroy radius. Put this in init: 
// Destroy zone
// Can be static, building, house 
if (isServer) then {
	_check = true;
	_houseArray = (getPos destroy_1) nearObjects ["building", 500];
	{
		// completely destroy one
		if (_check) then {
			_x setDamage 1;
			_check = false;
		} else {
			// Only half destroy the other
			_x setDamage 0.8;
			_check = true;
		};
	} forEach _houseArray;
};

// Detroy the insertion plane and other insertion stuffs. 
{
	deleteVehicle _x
} forEach crew (insertion_plane) + [insertion_plane];
deleteVehicle trg_insertion_1;
deleteVehicle trg_insertion_2;
deleteVehicle trg_insertion_3;
deleteVehicle trg_insertion_4;
deleteVehicle trg_insertion_5;

// Separate trigger 
_null = [] spawn {
	while { fire_arty_1 } do {
		_arty = arty_1;
		_target = arty_1_target;
		_artyAmmo = getArtilleryAmmo [_arty] select 0;
		_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
		_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
		if (_artyETA > 0 and _inRange) then {
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 15;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
			sleep 11;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 15;
		};
	};
};
// arty_2
_null = [] spawn {
	while { fire_arty_1 } do {
		_arty = arty_2;
		_target = arty_1_target;
		_artyAmmo = getArtilleryAmmo [_arty] select 0;
		_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
		_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
		if (_artyETA > 0 and _inRange) then {
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
			sleep 11;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 19;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 7;
		};
	};
};
// Wow I code like a retard 
_null = [] spawn {
	while { fire_arty_1 } do {
		_arty = arty_1;
		_target = arty_1_target;
		_artyAmmo = getArtilleryAmmo [_arty] select 0;
		_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
		_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
		if (_artyETA > 0 and _inRange) then {
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 15;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
			sleep 11;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 15;
		};
		_arty2 = arty_2;
		_target2 = arty_1_target;
		_artyAmmo2 = getArtilleryAmmo [_arty2] select 0;
		_artyETA2 = _arty2 getArtilleryETA [getPosATL _target2, _artyAmmo2];
		_inRange2 = (getPosATL _target2) inRangeOfArtillery [[_arty2], _artyAmmo2];
		if (_artyETA2 > 0 and _inRange2) then {
			_arty2 commandArtilleryFire [getPosATL _target2, _artyAmmo2, 2];
			sleep 15;
			_arty2 commandArtilleryFire [getPosATL _target2, _artyAmmo2, 1];
			sleep 11;
			_arty2 commandArtilleryFire [getPosATL _target2, _artyAmmo2, 3];
			sleep 12;
		};
	};
};
// Add more 
_null = [] spawn {
	while { fire_arty_1 } do {
		_arty = arty_1;
		_arty2 = arty_2;
		_target = arty_1_target;
		_artyAmmo = getArtilleryAmmo [_arty] select 0;
		_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
		_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
		if (_artyETA > 0 and _inRange) then {
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 2;
			_arty2 commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 15;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
			sleep 3;
			_arty2 commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 11;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 15;
			sleep 2;
			_arty2 commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
		};
	};
};

// Artillery
_null = [] spawn {
	while { fire_arty_1 } do {
		_arty = this;
		_target = arty_1_target;
		_artyAmmo = getArtilleryAmmo [_arty] select 0;
		_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
		_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
		if (_artyETA > 0 and _inRange) then {
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
			sleep 15;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 3];
			sleep 11;
			_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 2];
			sleep 15;
		};
	};
};

// Destroy towns 
["destroyed_airfield", 100, 92, "", ]

// Fix artillery 
[this] spawn {
	_Myobject = _this select 0;
	while { true } do {
		createVehicle [ "Bo_GBU12_LGB", getPos _this, [], 0, "CAN_COLLIDE"];
		sleep 2;
	};
};

// Radio auto-play 
this addAction ["Play Music", {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
}];
this addAction ["Stop Music", {
	deleteVehicle playing_song;
}];
[this] spawn {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
};

// Light inside the blackfish 
private _light = "#lightpoint" createVehicleLocal [0, 0, 0];
_light setLightIntensity 0.5;
_light setLightBrightness 0.8;
_light setLightUseFlare true;
_light setLightFlareSize 3.0;
_light setLightFlareMaxDistance 1000;
_light setLightDayLight true;
_light lightAttachObject [this, [0, 0, -2]];

[this, _light] spawn {
	params ["_plane", "_light"];
	waitUntil {
		_light setLightColor [0.5, 0, 0];
		_light setLightAmbient [0.5, 0, 0];
		sleep 2;

		_light setLightColor [0, 0.5, 0];
		_light setLightAmbient [0, 0.5, 0];
		sleep 2;

		!alive _plane
	};
	deleteVehicle _light;
};

// Cleaned up laptop menu
this addAction ["Lights:Start presentation", {
	start_presentation = true;
	stop_presentation = false;
	deleteVehicle playing_song;
	hint "Briefing";
}];
this addAction ["Lights:Stop presentation", {
	stop_presentation = true;
	start_presentation = false;
	hint "Au repos";
}];
this addAction ["Start boarding", {
	start_boarding = true;
	parachute_light = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];

// play music
this addAction ["Play Music", {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
}];
this addAction ["Stop Music", {
	deleteVehicle playing_song;
}];

[laptop_briefing, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// Put that shit in ace interaction my friend 
_play_fortunate = ["playFortunate", "Play Fortunate", "", {
	[this] spawn {
		while { true } do {
			playing_song = (_this select 0) say3D "fortunate";
			sleep 181;
		};
	};
}, {
	true
}] call ace_interact_menu_fnc_createAction;
[qg_radio, 0, ["ACE_MainActions"], _play_fortunate] call ace_interact_menu_fnc_addActionToObject;
// NOOO-oooo. Doesn't like the "sleep" part and starts crashing hard.

_var = ["_Action name", "_Name of action", "_Icon", {
	_code
}, {
	_condition
}] call ace_interact_menu_fnc_createAction;

["PlayFortunate", "Play Fortunate", "", {
	_target setDamage 1;
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;

[qg_radio, 0, ["ACE_MainActions"], _play_fortunate] call ace_interact_menu_fnc_addActionToObject;

this addAction ["Play Abierto", {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
	hint "Playing abierto";
}];
this addAction ["Stop", {
	deleteVehicle playing_song;
	hint "Stopping";
}];

this addAction ["Play abierto", {
	while { true } do {
		playing_song = (_this select 0) say3D "abierto";
		sleep 239;
	};
	hint "Playing";
}];
this addAction ["Play Fortunate", {
	while { true } do {
		playing_song = (_this select 0) say3D "fortunate";
		sleep 181;
	};
	hint "Playing";
}];
this addAction ["Stop", {
	deleteVehicle playing_song;
	hint "Stopping";
}];

// start artillery just when mission is started. 
if (phase_mission_started) then {
	[this] spawn {
		Myobject = _this select 0;
		while { true } do {
			createVehicle [ "R_80mm_HE", getPos Myobject, [], 0, "CAN_COLLIDE"];
			sleep 17;
		};
	};
};

// start artillery at dawn 
if (phase_mission_started_dawn) then {};

// Zeus menu : Add check that everyone is on board before triggering insertion 
this removeWeapon (primaryWeapon this);
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["Insertion!", {
	if (( {
		alive _x && !(_x in insertion_plane)
	} count allPlayers ) == 0) then {
		[] execVM "scripts\cgqc_insertion_plane.sqf";
		phase_mission_started = true;
		player removeAction 0;
	} else {
		hint "Il manque quelqu'un..";
	};
}];

// Cut off environment sounds when in base 
enableEnvironment [false, false];

// spawn a bomb every X seconds 
// Put this in the init of the target object. 

[this] spawn {
	Myobject = _this select 0;
	while { true } do {
		createVehicle [ "Bo_GBU12_LGB", getPos Myobject, [], 0, "CAN_COLLIDE"];
		sleep 30;
	};
};

// R_80mm_HE
[this] spawn {
	Myobject = _this select 0;
	while { true } do {
		createVehicle [ "R_80mm_HE", getPos Myobject, [], 0, "CAN_COLLIDE"];
		sleep 30;
	};
};
// R_57mm_HE
[this] spawn {
	Myobject = _this select 0;
	while { true } do {
		createVehicle [ "R_57mm_HE", getPos Myobject, [], 0, "CAN_COLLIDE"];
		sleep 30;
	};
};

// Ambient artillery shots on the horizon 
// Trigger that runs very 10 secs
null = [this] spawn {
	arty_fire_1 = true;
	sleep 10;
	arty_fire_1 = false;
	sleep 3;
};
// Naaah...

// Send presentation to laptop 

[laptop_briefing, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
this addAction ["Lights:Start presentation", {
	start_presentation = true;
	stop_presentation = false;
	hint "Briefing";
}];
this addAction ["Lights:Stop presentation", {
	stop_presentation = true;
	start_presentation = false;
	hint "Au repos";
}];
this addAction ["Lights:Parachute", {
	parachute_light = true;
}];
this addAction ["Start boarding", {
	start_boarding = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];

// Insertion action on Zeus. Deletes itself after use 
this addAction ["Insertion!", {
	[] execVM "scripts\cgqc_insertion_plane.sqf";
	player removeAction 0;
}];

// Skip time to a specific time 
_timeToSkipTo = 0;
skipTime ((_timeToSkipTo - dayTime + 24) % 24);

// Adding the trigger to start insertion to Zeus menu 
this removeWeapon (primaryWeapon this);
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["Lights:Start presentation", {
	start_presentation = true;
	stop_presentation = false;
	hint "Briefing";
}];
this addAction ["Lights:Stop presentation", {
	stop_presentation = true;
	start_presentation = false;
	hint "Au repos";
}];
this addAction ["Lights:Parachute", {
	parachute_light = true;
}];
this addAction ["Start boarding", {
	start_boarding = true;
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];
this addAction ["Insertion!", {
	[] execVM "scripts\cgqc_insertion_plane.sqf";
}];

// move to laptop 
_action = ["start_presentation", "Start Presentation", "", {
	start_presentation = true;
	stop_presentation = false;
	, true
}] call ace_interact_menu_fnc_createAction;
[laptop_briefing, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

this addAction ["Lights:Start presentation", {
	start_presentation = true;
	stop_presentation = false;
}];
this addAction ["Lights:Stop presentation", {
	stop_presentation = true;
	start_presentation = false;
}];
this addAction ["Lights:Parachute", {
	parachute_light = true;
}];
this addAction ["Insertion", {
	start_boarding = true;
}];

// v2  
this removeWeapon (primaryWeapon this);
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["Insertion!", {
	[] execVM "scripts\cgqc_insertion_plane.sqf";
	player removeAction 0;
}];

this addAction ["Lights:Start presentation", {
	start_presentation = true;
	stop_presentation = false;
}];
this addAction ["Lights:Stop presentation", {
	stop_presentation = true;
	start_presentation = false;
}];
this addAction ["Lights:Parachute", {
	parachute_light = true;
}];
this addAction ["Insertion", {
	start_boarding = true;
}];

// Zeus menu 
this removeWeapon (primaryWeapon this);
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["Lights:Start presentation", {
	turn_lights_off = true;
}];
this addAction ["Lights:Parachute", {
	turn_lights_on = true;
}];
this addAction ["Insertion", {
	start_boarding = true;
}];

// action menu to get on plane 
player addAction ["Ready to go", {
	start_boarding = true;
}];

// Insertion - 1 = Plane paradrop

// Warp plane to position 
insertion_plane setPos (getPos insertion_spawn);
// Make it go to waypoint   

[] execVM "scripts\CGQC_Intro.sqf";
[] execVM "scripts\cgqc_insertion_plane.sqf";

// Check if plane is in trigger area 
this && insertion_plane in thisList
// Delete insertion plane 
{
	deleteVehicle _x
} forEach crew (insertion_plane) + [insertion_plane]

// trigger 
hint "Boarding...";
if (( {
	alive _x && (vehicle _x) == _x
} count allPlayers ) == 0) then {
	hint "All in!";
	null = player execVM "scripts\cgqc_insertion_plane.sqf";
};

hint "Boarding...";
_boarding = true;
while { _boarding } do {
	if (( {
		alive _x && (vehicle _x) == _x
	} count allPlayers ) == 0) then {
		hint "All in!";
		_boarding = false;
		null = player execVM "scripts\cgqc_insertion_plane.sqf";
	};
};

// Returns true if all players are inside vehicles 
( {
	alive _x && (vehicle _x) == _x
} count allPlayers ) == 0
// Fixed version 
( {
	alive _x && !(_x in heli)
} count allPlayers ) == 0

if (( {
	alive _x && (vehicle _x) == _x
} count allPlayers ) == 0) then {
	null = this execVM "sripts/cgqc_insertion_plane.sqf";
};

// format string 
format ["In range: %1", _inRange]

// Paradrop on player detection:  
[]spawn{
	{
		_x action ["Eject", vehicle _x];
		sleep 0.25;
	}forEach allPlayers;
};

// Trigger if player present around plane
null = this execVM "sripts/cgqc_all_players.sqf";

// Trigger if all players are inside the plane 
allPlayers in insertion_plane;

// get all players in an array 
_allPlayers = [];
{
	if (alive player) then {
		_allPlayers = _allPlayers - [_x];
		_allPlayers pushBack _x;
	};
} forEach (allUnits - _allPlayers);

// Check all players are in the plane 
_checkPlaneFnc =
{
	if (_allPlayers in plane) exitWith {
		_readyToGo = true;
		null = [_readyToGo] execVM "startPlane.sqf";
	};
};

// Star the plane 
_startPlane = (_this select 0);

if (_startPlane) then {
	hint "Everyone is in!";
};

// Intel paper 
["init", [this, "textures\notepad.paa", "Artillery Positions - 0654, 1234 - 0634, 1420 - 0543, 4221 - 4321, 4223"]] call BIS_fnc_initLeaflet;

артиллерия
2 июня

// Intel on killed AI. Spawns the paper close
this addEventHandler[
	"Killed", {
		params["_unit", "_killer", "_instigator", "_useEffects"];
		private _leaflet= "Leaflet_05_Old_F" createVehicle(getPos _unit);
		["init", [_leaflet, "textures\notepad.paa", "Secret Intel"]] call BIS_fnc_initLeaflet;
	}
];

// ---------------------------------------------------------------------------------------------------------

// Make artillery fire on specific position 
this addAction ["Fire", {
	_arty = arty_1;
	_target = arty_1_target;

	_artyAmmo = getArtilleryAmmo [_arty] select 0;
	_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
	_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
	systemchat format ["In range: %1", _inRange];

	if (_artyETA > 0 and _inRange) then {
		systemchat "Cleared to fire!";
		systemchat format ["Impact ETA: %1s", _artyETA];
		_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 5];
	};
}];
this moveInCargo insertion_plane;
// Error, doesn't see arty_1_target ... wtf. Straiight positions. 

this addAction ["Fire", {
	_arty = arty_1;
	_target = [2088, 10832, 0];
	_artyAmmo = getArtilleryAmmo [_arty] select 0;
	_artyETA = _arty getArtilleryETA [_target, _artyAmmo];
	_inRange = (_target) inRangeOfArtillery [[_arty], _artyAmmo];
	systemchat format ["In range: %1", _inRange];

	if (_artyETA > 0 and _inRange) then {
		systemchat "Cleared to fire!";
		systemchat format ["Impact ETA: %1s", _artyETA];
		_arty commandArtilleryFire [_target, _artyAmmo, 5];
	};
}];
// YESS!!!

// Triger to keep firing 
// this in laptop
this addAction ["Start firing", {
	fire_arty_1 = true;
}];
this addAction ["Stop firing", {
	fire_arty_1 = false;
}];
// Trigger. Condition = fire_arty_1 . Code: 
while { true } do {
	_arty = arty_1;
	_target = [2088, 10832, 0];
	_artyAmmo = getArtilleryAmmo [_arty] select 0;
	_artyETA = _arty getArtilleryETA [_target, _artyAmmo];
	_inRange = (_target) inRangeOfArtillery [[_arty], _artyAmmo];
	systemchat format ["In range: %1", _inRange];

	if (_artyETA > 0 and _inRange) then {
		systemchat "Cleared to fire!";
		systemchat format ["Impact ETA: %1s", _artyETA];
		_arty commandArtilleryFire [_target, _artyAmmo, 5];
	};
};

// Fuck this. Artillery script.
// Parameters: artillery + target marker 
// call like this in trigger:
while { true } do {
	[arty_1, [2088, 10832, 0]] execVM "sripts/cgqc_artillery.sqf";
};

// Script version
while { true } do {
	[arty_1, arty_1_target] execVM "scripts/cgqc_artillery.sqf";
};

// Bleh. in unit init then. Make the function later. 
_null = [] spawn {
	_arty = arty_1
	_target = arty_1_target;
	// Finds the first ammo
	_artyAmmo = getArtilleryAmmo [_arty] select 0;
	_artyETA = _arty getArtilleryETA [_target, _artyAmmo];
	_inRange = (_target) inRangeOfArtillery [[_arty], _artyAmmo];
	systemchat format ["In range: %1", _inRange];

	if (_artyETA > 0 and _inRange) then {
		systemchat "Cleared to fire!";
		systemchat format ["Impact ETA: %1s", _artyETA];
		this commandArtilleryFire [_target, _artyAmmo, 1];
		sleep 10;
	};
};

// Good 
_null = [] spawn {
	_arty = arty_1;
	_target = arty_1_target;
	// Finds the first ammo
	_artyAmmo = getArtilleryAmmo [_arty] select 0;
	_artyETA = _arty getArtilleryETA [getPosATL _target, _artyAmmo];
	_inRange = (getPosATL _target) inRangeOfArtillery [[_arty], _artyAmmo];
	systemchat format ["In range: %1", _inRange];

	if (_artyETA > 0 and _inRange) then {
		systemchat "Cleared to fire!";
		systemchat format ["Impact ETA: %1s", _artyETA];
		_arty commandArtilleryFire [getPosATL _target, _artyAmmo, 1];
		sleep 10;
	};
};

// Play fortunate son (in object init)
nul = [this] spawn{
	while { true } do {
		(_this select 0) say3D "fortunate";
		sleep 181;
	};
};

// say3D [sound, maxDistance, pitch, isSpeech, offset]
// The sound source can be deleted as such
_soundSrc = helicopter1 say3D "Fortunateson";
sleep 5;
deleteVehicle _soundSrc;

// Turn radio on/off 
_play_music = true
this addAction ["Play", {
	while { true } do {
		(_this select 0) say3D "fortunate";
		sleep 181;
	};
	hint "Playing";
}];
this addAction ["Stop", {
	_play_music = false;
	hint "Stopping";
}];

// Alright getting there 
play_music = true;
this addAction ["Play", {
	while { play_music } do {
		playing_song = (_this select 0) say3D "fortunate";
		sleep 181;
	};
	hint "Playing";
}];
this addAction ["Stop", {
	play_music = false;
	deleteVehicle playing_song;
	hint "Stopping";
}];

this addAction ["Unlock", {
	building_2 setVariable ['bis_disabled_Door_1', 0, true];
	hint "Unlocked";
}];
this addAction ["Lock", {
	building_2 setVariable ['bis_disabled_Door_1', 1, true];
	hint "Locked";
}];

// CGQC stuff
// Declare identity in description.sqf 
// ---------------------------------------------------------------------------------------------------------
// identity
// ---------------------------------------------------------------------------------------------------------

class CfgIdentities
{
	class Landry
	{
		face = "WhiteHead_10";
		glasses = "G_EyeProtectors_F";
		name = "Landry";
		nameSound = "Adams";
		pitch = 1.0;
		speaker = "Male01ENG";
	};
};

// CGQC Base items laptop
this addAction ["Add base to <t color='#00FF00'>Uniform</t>",
	{
		for "_i" from 0 to 9 do {
			player addItemToUniform "ACE_fieldDressing";
		},
		for "_i" from 0 to 3 do {
			player addItemToUniform "ACE_epinephrine";
		},
		for "_i" from 0 to 3 do {
			player addItemToUniform "ACE_morphine";
		},
		for "_i" from 0 to 3 do {
			player addItemToUniform "ACE_splint";
		},
		for "_i" from 0 to 3 do {
			player addItemToUniform "ACE_tourniquet";
		},
		for "_i" from 0 to 1 do {
			player addItemToUniform "ACE_CableTie";
		},
		player addItemToUniform "ACE_EarPlugs";
	}
];

this addAction ["Add base to <t color='#00FF00'>BackPack</t>",
	{
		for "_i" from 0 to 9 do {
			player addItemToBackpack "ACE_fieldDressing";
		},
		for "_i" from 0 to 1 do {
			player addItemToBackpack "ACE_bloodIV_500";
		},
		for "_i" from 0 to 1 do {
			player addItemToBackpack "ACE_bloodIV_250";
		},
		player addItemToBackpack "ACE_EntrenchingTool",
		player addItemToBackpack "ACE_microDAGR",
		player addItemToBackpack "ACE_Flashlight_MX991";
	}
];

this addAction ["<t color='#FF0000'>Remove all base items from your inventory</t>", "removeAllItems player"];

this addAction ["<t color='#FF0000'>Remove ALL items from inventory</t>", "removeAllItemsWithMagazines player"];

// CGQC Base Healing stand
stand_1 setObjectTexture [0, "textures\red_cross.paa"];

_caller = _this select 1;

[
	stand_1,
	"Full Heal",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",
	"_this distance _target < 4",
	"_caller distance _target < 4",
	{},
	{},
	{
		_caller call ACE_medical_treatment_fnc_fullHealLocal;
	},
	{},
	[],
	3,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;

// Fast travel stand to heli spot  
stand_5 setObjectTexture [0, "textures\fast_travel2.paa"];

_caller = _this select 1;

[
	stand_5,
	"Fast Travel to Camp Sierra",
	"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",
	"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",
	"_this distance _target < 4",
	"_caller distance _target < 4",
	{},
	{},
	{
		_caller setPos (getPos (cgqc2));
	},
	{},
	[],
	3,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;

// Gate trigger blufor/present 
condition
call{
	this
}
Activation
call{
	gate_1 animate ["Door_1_rot", 1]
}

// On trigger activation 
[] spawn {
	bomb="Bo_GBU12_lgb" createVehicle (getPos exp1);
	bomb="Bo_GBU12_lgb" createVehicle (getPos exp2);
	sleep 3;
	_claymore = "SatchelCharge_Remote_Ammo_Scripted" createVehicle position exp1;
	_claymore spawn
	{
		sleep 1;
		_this setDamage 1;
	};
	sleep 3;
	_claymore1 = "SatchelCharge_Remote_Ammo_Scripted" createVehicle position exp2;
	_claymore1 spawn
	{
		sleep 1;
		_this setDamage 1;
	};
};

// call some stuff in trigger 
call{
	trigger5cargo = true;
	smoke2 attachTo [cargo1, [0, 0, 1]];
	smoke1 attachTo [cargo2, [0, 0, 1]];
};

// trigger condition, 2 cargos in inArea 
cargo1 inArea thisTrigger && cargo2 inArea thisTrigger;
// activation, delete delete stuff 
deleteVehicle smoke1;
deleteVehicle smoke2;

// Satellite access to laptop
[this] call MRH_fnc_IsSatelliteConsole;
// Show satellite on screens
[this] call MRH_fnc_IsSatMonitor;

// Players are read 
// CHeck if all players are withing zone 
// Add this to the init of every player: 
cgqc = group this;
// Now we can act on this group. Create a trigger with condition:
({
	alive _x
} count units cgqc) == ({
	_x in thisList
} count units cgqc)

// Activate mission 

// Trigger players ready
player_ready = true;
["TaskSucceeded", ["", "Let's go, bro."]] call BIS_fnc_showNotification;

// General settings ->airdrop 
// check if players are ready 
triggerActivated mx_players_ready;
// Will return true if trigger is activated

// Old code reference below

// Code in object to get menu
this addAction ["Parachute Training", {
	paradropReady = true;
	publicVariable "paradropReady";
}];

// v0.1 Trigger set to activate when variable set before is sprung

hint "Preparing for drop. Braces yourselves.";
_paraPlane = createVehicle ["UK3CB_ADA_B_C130J", getMarkerPos "spawn_paradrop", [], 0, "FLY"];
createVehicleCrew _paraPlane;
_paraPlane flyInHeight 5000;
paradropReady false;

// v0.2 Plane move to target

hint "Preparing for drop. Braces yourselves.";
_paraPlane = createVehicle ["UK3CB_ADA_B_C130J", getMarkerPos "spawn_paradrop", [], 0, "FLY"];
createVehicleCrew _paraPlane;
_paraPlane flyInHeight 5000;
_wp = _paraPlane addWaypoint [getMarkerPos "despawn_paradrop", 0];
_wp setWaypointType "MOVE";

// v0.3 set position and move to target 
hint "Preparing for drop. Braces yourselves.";
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle;
_paraPlane = _paraPlaneSpawn select 0;
_paraPlaneCrew = _paraPlaneSpawn select 1;
_paraGroup = _paraPlaneSpawn select 2;
_paraPlaneHeight = 1000;
_paraPlane flyInHeight _paraPlaneHeight;
_paraPlane setPos [getPosATL _paraPlane select 0, getPosATL _paraPlane select 1, _paraPlaneHeight];
_paraPlane setDir 220;
_wpDespawn = _paraGroup addWaypoint [(getMarkerPos "despawn_paradrop"), 0];
_wpDespawn setWaypointType "MOVE";
player assignAsCargoIndex [_paraPlane, 8];
player moveInCargo _paraPlane;

// v0.4 Fix waypoint + initial drop  
hint "Preparing for drop. Braces yourselves.";
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle;
_paraPlane = _paraPlaneSpawn select 0;
_paraPlaneCrew = _paraPlaneSpawn select 1;
_paraGroup = _paraPlaneSpawn select 2;
_paraPlaneHeight = 500;
_paraPlane setVelocity [-150, -150, _paraPlaneHeight];
_paraPlane flyInHeight _paraPlaneHeight;
_paraPlane setPos [getPosATL _paraPlane select 0, getPosATL _paraPlane select 1, _paraPlaneHeight];
_paraPlane move (getMarkerPos "despawn_paradrop");
player assignAsCargo _paraPlane;
player moveInCargo _paraPlane;

// Home made bullet tracing as laptop option (for init) + fancy bullet options

if (hasInterface) then {
	this addAction ["Activate basic tracing", {
		nul=execVM "max_basic_tracing.sqf";
		titleText ["Bullet tracing ON", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
	this addAction ["Deactivate basic tracing", {
		nul=execVM "max_basic_tracing_off.sqf";
		titleText ["Bullet tracing OFF", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode", {
		titleText ["Advanced mode on", "BLACK FADED", 2];
		titleFadeOut 1;
		nul=execVM "max_dynamic_range.sqf";
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode OFF", {
		titleText ["Advanced mode on", "BLACK FADED", 2];
		titleFadeOut 1;
		nul=execVM "max_dynamic_range_off.sqf";
	}, [], 10, true, true];
};

// Option on thing to quick reset setPylonLoadout
// Reset last Ace loadout

if (hasInterface) then {
	this addAction ["Reload current loadout", {
		player setUnitLoadout (player getVariable "loadout");
		titleText ["Bullet tracing ON", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
};

// ref 

if (!isServer) exitWith {};
drivers = createGroup east;
transport1 = [(getMarkerPos "mk20"), 180, "O_Truck_02_transport_F", drivers] call BIS_fnc_spawnVehicle;
truck = (transport1 select 0);
rifle21 = [getmarkerpos "mk21", EAST, ["O_Soldier_AR_F", "O_Soldier_AR_F", "O_Soldier_GL_F", "O_Soldier_GL_F", "O_Soldier_lite_F", "O_Soldier_lite_F"], [], [], [], [], [], 230] call BIS_fnc_spawnGroup;
{
	_x assignAsCargo truck;
	_x moveInCargo truck;
} forEach units rifle21;
wp20 = drivers addWaypoint [(getmarkerpos "wp20"), 0];
wp20 setWaypointType "MOVE";
wp20 setWaypointSpeed "NORMAL";
wp20 setWaypointBehaviour "AWARE";

titleText ["Bullet tracing ON", "BLACK FADED", 2];
titleFadeOut 1;
[player, 3] spawn BIS_fnc_traceBullets;

titleText ["Bullet tracing OFF", "BLACK FADED", 2];
titleFadeOut 1;
[player, 0] spawn BIS_fnc_traceBullets;

if (hasInterface) then {
	this addAction ["Activate tracing", {
		[player, 3] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing ON", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
	this addAction ["Deactivate tracing", {
		[player, 0] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing OFF", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
};

hint "Preparing for drop. Braces yourselves.";
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle;
_paraPlane = _paraPlaneSpawn select 0;
_paraPlaneCrew = _paraPlaneSpawn select 1;
_paraGroup = _paraPlaneSpawn select 2;
_paraPlaneHeight = 500;
_paraPlane setPos [getPosATL _paraPlane select 0, getPosATL _paraPlane select 1, _paraPlaneHeight];
_paraPlane flyInHeight _paraPlaneHeight;
player assignAsCargo _paraPlane;
player moveInCargo _paraPlane;
_paraGroup move getMarkerPos "despawn_paradrop";

player addBackpack "B_Parachute";
titleText ["You parachute is ready to go", "PLAIN DOWN", 3];
titleFadeOut 2;

player addBackpack "B_Parachute";
titleText ["Touche windows/Equipment/PutBackpackFront ... et pis après l'atterissage drop le parachute et fait l'inverse", "PLAIN DOWN", 3];
titleFadeOut 2;

if (hasInterface) then {
	this addAction ["Activate tracing", {
		[player, 0] spawn BIS_fnc_traceBullets;
		[player, 3] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing ON", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
	this addAction ["Deactivate tracing", {
		[player, 0] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing OFF", "BLACK FADED", 2];
		titleFadeOut 1;
	}, [], 10, true, true];
};

// Add virtual shit to box 
[this, true, false] call ace_arsenal_fnc_addVirtualItems;
[this, true] call ace_arsenal_fnc_initBox;

// Fix parachute trigger message
hint "Put your backpack on the front and walk to plane. You'll get a parachute";
sleep 60;

// Add chute 
player addBackpack "B_Parachute";
titleText ["You parachute is ready to go", "PLAIN DOWN", 3];
titleFadeOut 2;
sleep 60;

// Add sleep to UI popup
titleText ["Camp is cleared. Time to go home", "BLACK FADED", 3];
titleFadeOut 2;
uiSleep 5;

// Add advanced tracing

if (hasInterface) then {
	this addAction ["Activate basic tracing", {
		nul=execVM "max_basic_tracing.sqf";
		titleText ["Bullet tracing ON", "BLACK FADED", 5];
		titleFadeOut 2;
	}, [], 10, true, true];
	this addAction ["Deactivate basic tracing", {
		nul=execVM "max_basic_tracing_off.sqf";
		titleText ["Bullet tracing OFF", "BLACK FADED", 5];
		titleFadeOut 2;
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "max_dynamic_range.sqf";
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode OFF", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "max_dynamic_range_off.sqf";
	}, [], 10, true, true];
	this addAction ["WIP --- Activate advanced tracing", {
		[player, nil, nil, nil, nil, nil, true] call hyp_fnc_traceFire;
		 // Adding of the option to manually clear lines.  If you don't want the addAction, simply remove these 4 lines
		(player) addAction["Clear Lines", {
			{
				[_x] call hyp_fnc_traceFireClear;
			} forEach hyp_var_tracer_tracedUnits;
		}];// Clears the lines of all drawn projectiles
		titleText ["Advanced Tracing ON", "BLACK FADED", 5];
		titleFadeOut 2;
	}, [], 10, true, true];
	this addAction ["WIP --- Activate ALL tracing", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "max_color_tracing_all.sqf";
	}, [], 10, true, true];
};

 // Make passive target. Put this in unit Init
// Completely static
this disableAI "TARGET";
this disableAI "WEAPONAIM";
this disableAI "MOVE";
this disableAI "AUTOCOMBAT";
this disableAI "AUTOTARGET";
this disableAI "CHECKVISIBLE";
this disableAI "COVER";
this disableAI "RADIOPROTOCOL";

// Force move
this disableAI "TARGET";
this disableAI "WEAPONAIM";
this disableAI "AUTOCOMBAT";
this disableAI "AUTOTARGET";
this disableAI "CHECKVISIBLE";
this disableAI "COVER";
this disableAI "RADIOPROTOCOL";

// Real targets: activate/deActivateKey
spawn_static_menu1 = player addAction [
("Activate static soldier" + "</t>"), "max_real_spawn.sqf", ["O_G_Soldier_F", false, false, false], 0, false, false];
spawn_moving_menu1 = player addAction [
("Activate moving soldier" + "</t>"), "max_real_spawn.sqf", ["O_G_Soldier_F", false, false, false], 0, false, true];
// OnDeactivate
player removeAction spawn_static_menu1;
player removeAction spawn_moving_menu1;

// Custom texture 
// On the empty userTexture 
this setObjectTexture [0, "range_100.jpg"];
this attachTo [rangepost_100, [0, -0.06, 0.6]];

// Eject event catcher
player addEventHandler ["GetOutMan", {
	_this execVM "max_autochute.sqf"
}];

// Check backpack
_backpack = backpack player;
titleText [_backpack, "PLAIN DOWN", 2];

// Remove advanced tracing

if (hasInterface) then {
	this addAction ["Activate basic tracing", {
		nul=execVM "max_basic_tracing.sqf";
		titleText ["Bullet tracing ON", "BLACK FADED", 5];
		titleFadeOut 2;
	}, [], 10, true, true];
	this addAction ["Deactivate basic tracing", {
		nul=execVM "max_basic_tracing_off.sqf";
		titleText ["Bullet tracing OFF", "BLACK FADED", 5];
		titleFadeOut 2;
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "max_dynamic_range.sqf";
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode OFF", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "max_dynamic_range_off.sqf";
	}, [], 10, true, true];
};

// Custom antistasi box 
this addWeaponCargo ["rhs_weap_m38_rail", 20];
this addWeaponCargo ["rhs_weap_m1garand_sa43", 20];
this addItemCargo ["rhsusf_acc_LEUPOLDMK4", 20];
this addWeaponCargo ["rhs_weap_rpg7", 20];
this addWeaponCargo ["rhs_weap_makarov_pmm", 20];
this addWeaponCargo ["rhsusf_bino_lerca_1200_black", 20];
this addItemCargo ["rhs_mag_m67", 500];
this addItemCargo ["rhsgref_5Rnd_762x54_m38", 500];
this addItemCargo ["rhsgref_8Rnd_762x63_M2B_M1rifle", 500];
this addItemCargo ["rhsusf_acc_nt4_black", 500];
this addItemCargo ["rhs_rpg7_PG7VL_mag", 500];
this addItemCargo ["ToolKit", 20];
this addItemCargo ["ACE_EarPlugs", 20];
this addItemCargo ["ACE_RangeCard", 20];
this addItemCargo ["ACE_Clacker", 20];
this addItemCargo ["ACE_M26_Clacker", 20];
this addItemCargo ["ACE_DeadManSwitch", 20];
this addItemCargo ["ACE_DefusalKit", 20];
this addItemCargo ["ACE_MapTools", 20];
this addItemCargo ["ACE_Flashlight_MX991", 20];
this addItemCargo ["ACE_wirecutter", 20];
this addItemCargo ["ACE_RangeTable_82mm", 20];
this addItemCargo ["ACE_EntrenchingTool", 20];
this addItemCargo ["ACE_Cellphone", 20];
this addItemCargo ["ACE_CableTie", 20];
this addItemCargo ["ACE_SpottingScope", 20];
this addItemCargo ["ACE_Tripod", 20];
this addItemCargo ["ACE_Kestrel4500", 20];
this addItemCargo ["ACE_ATragMX", 20];
this addItemCargo ["ACRE_PRC343", 20];
this addItemCargo ["ACRE_PRC148", 20];
this addItemCargo ["ACRE_PRC152", 20];
this addItemCargo ["IEDUrbanSmall_Remote_Mag", 500];
this addItemCargo ["rhs_mag_rgd5", 500];

// format string 
hint str format ["Player position: %1", _target_distance_position];

// Real spawn ... lets do it 

// in presence trigger
realspawn_activate = player addAction [
("MaxSpawn: new target" + "</t>"), "max_realspawn_activate.sqf", ["O_G_Soldier_F", 100, "Facing", false], 0, false, false];
realspawn_clear = player addAction [
("MaxSpawn: clear target" + "</t>"), "max_realspawn_clear.sqf", [true], 0, false, false];
// OnDeactivate
player removeAction realspawn_activate;
player removeAction realspawn_clear;

realspawn_activate = player addAction [
("MaxSpawn: new target" + "</t>"), "max_realspawn_activate.sqf", ["O_G_Soldier_F", 100, "Facing", false], 0, false, false];

player addAction ["Realspawn: show UI",
	{
		[] call max_fnc_OpenRealspawnUI;
	}, "", 0.03, false, false];

	    // alive jump to action
	this addAction["<t color='#ff9900'>Recruit Infantry</t>", "bon_recruit_units\open_dialog.sqf"];
	this addAction ["Select Assault Mission", {
		[_this select 1, "attacking"] call ALiVE_fnc_OPCOMJoinObjective
	}, [], 1, false, true, "", "true"];
	this addAction ["Select Defense Mission", {
		[_this select 1, "defending"] call ALiVE_fnc_OPCOMJoinObjective
	}, [], 1, false, true, "", "true"];

	this addAction ["Select Assault Mission", {
		[_this select 1, "attacking"] call ALiVE_fnc_OPCOMJoinObjective
	}, [], 1, false, true, "", "true"];
	this addAction ["Select Defense Mission", {
		[_this select 1, "defending"] call ALiVE_fnc_OPCOMJoinObjective
	}, [], 1, false, true, "", "true"];

	this addAction ["Skip 4 hours", {
		skipTime 4
	}, [], 1, false, true, "", "true"];

	this addAction ["Skip 3 hours", {
		remoteExec ["skipTime", 3, false]
	}, [], 1, false, true, "", "true"];

	this addAction ["Skip 1 hours", {
		nul=execVM "max_sleep_1.sqf";
	}, [], 10, true, true];
	this addAction ["Skip 3 hours", {
		nul=execVM "max_sleep_3.sqf";
	}, [], 10, true, true];
	this addAction ["Skip 6 hours", {
		nul=execVM "max_sleep_6.sqf";
	}, [], 10, true, true];

	// list of items for Ace Fortify
	[west, -1, [
		["Land_CncBarrierMedium_F", 1],
		["Land_HBarrier_3_F", 1],
		["Land_HBarrier_5_F", 1],
		["Land_HBarrier_Big_F", 1],
		["Land_HBarrier_1_F", 1],
		["Land_Plank_01_4m_F", 1],
		["Land_Plank_01_8m_F", 1],
		["Land_CncShelter_F", 1],
		["Land_BagBunker_Small_F", 1],
		["Land_BagBunker_Tower_F", 1],
		["Land_BagFence_Long_F", 1],
		["Land_BagFence_Short_F", 1],
		["Land_BagFence_Round_F", 1],
		["Land_SandbagBarricade_01_half_F", 1],
		["Land_SandbagBarricade_01_F", 1],
		["Land_SandbagBarricade_01_hole_F", 1],
		["Wire", 1],
		["Land_HelipadCircle_F", 1]
		["Land_CncBarrierMedium_F", 1],
		["CamoNet_BLUFOR_big_F", 1],
		["CamoNet_BLUFOR_open_F", 1],
		["CamoNet_BLUFOR_F", 1],
		["Land_CanvasCover_01_F", 1],
		["Land_CanvasCover_02_F", 1],
		["Land_DragonsTeeth_01_4x2_new_redwhite_F", 1],
		["Land_MedicalTent_01_MTP_closed_F", 1],
		["I_E_CargoNet_01_ammo_F", 1],
		["B_Slingload_01_Repair_F", 1],
		["B_Slingload_01_Medevac_F", 1],
		["B_Slingload_01_Ammo_F", 1],
		["B_Slingload_01_Fuel_F", 1],
	]] call acex_fortify_fnc_registerObjects;

	Briefing
	<marker name ='marker_mines'>old destroyed base</marker>

	Situation
	This was supposed to be a standard training deployment. Shit has hit the fan and the south is in full rebellion. get ready to assist the local NATO forces in taking back their territory.

	Mission
	Prepare for war
	get ready. Check the armory and get familiar with your kit. Practice the roles and tools you will need for this campain.<br/>
	On the <marker name ='marker_island'>Island</marker> you can train your <marker name ='marker_medical'>medical skills</marker>, practice <marker name ='marker_parachute'>paradropping</marker>, give your rifle a try at the <marker name ='marker_zero'>range</marker>. Please keep the destruction to a minimum in this area as it also serves as our main base in the area<br/>
	For the big badabooms you have to get on Malden itself. It's a perfect time to try the paradropping actually. We have some facilities near an <marker name ='marker_oldbase'>old destroyed base</marker>. There is a <marker name ='marker_heavy'>heavy duty range</marker> for some serious gunning, some <marker name ='marker_targets'>hard targets</marker> to practice your air to ground and <marker name ='marker_demining'>demining game</marker>. It's also the perfect place to crash a <marker name ='marker_helicopter'>helicopter</marker>.<br/>

	<marker name ='marker_mines'>mines on the frontline</marker>
	Soften up the enemy
	Most of the southern towns are occupied by lightly equiped rebels, but there are reports of fully armored soldiers in the east. The frontline has solidified and is defended and mined. We'll have to start by softening them up.<br/>
	Find their air defense assets, clean up some <marker name ='marker_mines'>mines on the frontline</marker> to open corridors, set up some FOB's to prepare for the invasion proper.

	// Create marker, with hint
	hint "An S.O.S Signal Was Detected";
	_marker1 = createMarker ["markerSOS", [2188, 5362]];
	"markerSOS" setMarkerShape "Ellipse";
	"markerSOS" setMarkerSize [50, 50];
	"markerSOS" setMarkerBrush "DIAGGRID";
	"markerSOS" setMarkerColor "ColorYellow";

	// Only fire a trigger when Multiple Triggers Have fired
	triggerActivated TR_KILL_Parent_SU and triggerActivated TR_Destroy_Supplies_Parent_SU;

	// fire a trigger when either Triggers Have fired
	triggerActivated TR_KILL_Parent_SU or triggerActivated TR_Destroy_Supplies_Parent_SU;

	// random partrol (20m)
	[group this, getPos this, 20] call BIS_fnc_taskPatrol

	// Man defenses withing 100m
	[group this, getPos this] call BIS_fnc_taskDefend;

	// The command returns an array with two arrays.  all objects, all makers
	getMissionLayerEntities "Operation" params ["_objects", "_markers"];
	// Show all markers
	_markers apply {
		_x setMarkerAlpha 1;
	};
	// Show all entities and enable their simulation
	_objects apply {
		_x enableSimulationGlobal true;
		_x hideObjectGlobal false;
	};

	player_ready = true;
	["TaskSucceeded", ["", "Let's go, bro."]] call BIS_fnc_showNotification;
	// The command returns an array with two arrays.  all objects, all makers
	getMissionLayerEntities "Operation" params ["_objects", "_markers"];
	// Show all markers
	_markers apply {
		_x setMarkerAlpha 1;
	};
	// Show all entities and enable their simulation
	_objects apply {
		_x enableSimulationGlobal true;
		_x hideObjectGlobal false;
	};

	// trigger when everyone is ready. SERVER ONLY CHECKED
	player_ready = true;
	["TaskSucceeded", ["", "Let's go, bro."]] call BIS_fnc_showNotification;
	getMissionLayerEntities "Operation" params ["_objects", "_markers"];
	_markers apply {
		_x setMarkerAlpha 1;
	};
	_objects apply {
		_x enableSimulationGlobal true;
		_x hideObjectGlobal false;
	};

	of "PLAIN", "PLAIN DOWN", "BLACK",
	"BLACK FADED", "BLACK OUT", "BLACK IN",
	"WHITE OUT" and "WHITE IN".

	// Black fade in

	titleCut ["", "BLACK FADED", 999];
	[] spawn {
		titleText ["This line here should take you about five seconds to read.", "PLAIN DOWN"];
		titleFadeOut 7;
		sleep 5;

		titleText ["This line should take five seconds as well, if you read slowly.", "PLAIN"];
		titleFadeOut 7;
		sleep 5;

		titleText ["This line however is important. It should take you ten seconds to read it. That's how much time you have to read this line completely.", "PLAIN DOWN"];
		titleFadeOut 12;
		sleep 10;

		titleText ["You don't have as much time with this line, but it is still quite lengthy and ever so informative.", "PLAIN"];
		titleFadeOut 9;
		sleep 7;

		titleText ["But this line.\n\nThis line will make you pause. This line will give you time to...\n\nthink.", "PLAIN"];
		titleFadeOut 12;
		sleep 10;

		// Info text
		[str ("Not so far away..."), str("Not so long ago..."), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;

		sleep 3;
		"dynamicBlur" ppEffectEnable true;
		"dynamicBlur" ppEffectAdjust [6];
		"dynamicBlur" ppEffectCommit 0;
		"dynamicBlur" ppEffectAdjust [0.0];
		"dynamicBlur" ppEffectCommit 5;

		titleCut ["", "BLACK IN", 5];
	};

	// player ready activation
	player_ready = true;
	["TaskSucceeded", ["", "C'est l'heure du briefing."]] call BIS_fnc_showNotification;
	0 = [0.96] execVM "scripts\silent1_projector.sqf"

	textures\QG_projector_0_blank.paa, textures\QG_projector_1_CGQC.paa, textures\QG_projector_2_1_Mission.paa, textures\QG_projector_2_2_Situation.paa, textures\QG_projector_2_3_Execution.paa, textures\QG_projector_2_4_Signal.paa
	à

	// This in a trigger to play music
	my_music_handle = [] spawn
	{
		while { true } do {
			playSound "yourAmbientSoundHere";
			sleep 80
		}
	};

	you must set the sleep time to the same length time of your sound.

	// Add ace action
	myaction = ['TestAction 1', 'Test', '', {
		hint 'test';
	}, {
		true
	}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], myaction] call ace_interact_menu_fnc_addActionToObject;

	// Fuuuck
	myaction = ['lightsOff_1', 'Lights off', '', {}, {
		true
	}] call ace_interact_menu_fnc_createAction;
	[this, 1, ["ACE_SelfActions"], myaction] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lightsOff", "Lightswitch", "", {
		[0, 0.95] call compile "scripts\QG_lights.sqf"
	}, {
		true
	}] call ace_interact_menu_fnc_createAction;
	[laptop_briefing, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	_lightsOff = player addAction ["Lightswitch", {
		[0, 0.95] call compile "scripts\lights_off.sqf"
	}];

	this addAction ["Swith Lights", {
		[0, 0.95] call compile "scripts\QG_lights.sqf"
	}];

	// Script from online 

	// copy and paste code below in the init of Land_TransferSwitch_01_F (Transfer switch)
	// change the DistanceToReach to how far you want the script to work

	DistanceToReach = 300;
	this addAction
	[
		"Turn Off",
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			{
				private _ticket = format ["LSS%1", _forEachIndex];
				[_x, "OFF"] remoteExec ["switchLight", 0, _ticket];
			} forEach nearestObjects [_caller, [], DistanceToReach];
			_target animateSource ["switchposition", 1];
			_target animateSource ["light", 0];
			_target setDamage 1;
		},
		[],
		1.5,
		true,
		true,
		"",
		"alive _target",
		3,
		false,
		"",
		""
	];

	this addAction
	[
		"Turn On",
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			{
				private _ticket = format ["LSS%1", _forEachIndex];
				[_x, "On"] remoteExec ["switchLight", 0, _ticket];
			} forEach nearestObjects [_caller, [], DistanceToReach];
			_target animateSource ["switchposition", -1];
			_target animateSource ["light", 1];
			_target setDamage 0;
		},
		[],
		1.5,
		true,
		true,
		"",
		"!alive _target",
		3,
		false,
		"",
		""
	];

	// Lights off
	this addAction ["Swith Lights", "scripts\QG_lights.sqf"];

	// action to activate trigger
	this addaction ["Triger", {
		Trigger_Con = true;
		publicVariable "Trigger_Con";
	}];
	// and on the trigger condition:
	Trigger_Con;

	// So ... 
	// Custom options for HQ 
	QG_Commandant addAction ["Begin", {
		qg_briefing_start = true;
		publicVariable "qg_briefing_start";
	};
];
// Nope 
QG_Commandant addAction ["Begin", qg_briefing_start = true;
];
// What about this 
_actionID = player addAction ["Exec the file", "scriptFile.sqf"]
// Soo...
_action = player addAction ["Commencer", "scripts\QG_briefing.sqf"];
// Crisse hein 
this addAction ["Commencer", {
	qg_briefing_start = true;
}];

this addAction ["Slideshow", {
	qg_briefing_start = false;
	qg_briefing_slideshow true;
}];

qg_briefing_slideshow = false;
,

// Server/local type stuff 
if (isDedicated) then {
	// run on dedicated server only
};

if (isServer) then {
	// run on dedicated server or player host
};

if (hasInterface) then {
	// run on all player clients incl. player host
};

if (!isDedicated) then {
	// run on all player clients incl. player host and headless clients
};

if (!isServer) then {
	// run on all player clients incl. headless clients but not player host
};

if (!hasInterface) then {
	// run on headless clients and dedicated server
};

if (!hasInterface && !isDedicated) then {
	// run on headless clients only
};

// addAction details 
You can use the fourth argument of addAction which allow you to pass your own argument to the script.
You will then be able to access that information using
_this select 3 select x
Your add action could look like this:
this addAction["Turn off", "turnOfflantern.sqf", [lanternOn, lanternOff]];
so lanternon would be
_this select 3 select 0
yes and lanternOff would be
_this select 3 select 1

// Manual slideshow
this setObjectTextureGlobal [2, "slideshow\slideshow_map.paa"];
_objet_interval = _this select 0;
while { true } do {
	_objet_interval setObjectTextureGlobal [1, "slideshow\slideshow_logo.paa"];
	hint "logo loaded";
	sleep 2;
	_objet_interval setObjectTextureGlobal [1, "slideshow\slideshow_map.paa"];
	sleep 2;
};

// Trigger to force-put away weapons 
player removeWeapon (primaryWeapon player);
null = [player] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};

// Same but on unit init 
this removeWeapon (primaryWeapon this);
null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};