// [player, false, false] execvm "ROS_GroupHalo\scripts\smoke-white.sqf";

params ["_unit", "_triColor","_freeFallSmoke"];

_posATL = getposatl _unit;

_emitter = "#particlesource" createVehicleLocal _posATL;
_emitter setParticleParams [
	[
		"\A3\Data_F\ParticleEffects\Universal\Universal", // shape
		16, // FSNtieth
		12, //  FSindex
		8, // FS frame count
		0 //   FS loop
	],
	"", // anim name
	"Billboard", // part type
	1, // timer
	20, // lifetime
	[0, 0, 0], // pos 3d
	[0.3, 0.3, 0.3], // vel
	0.3, // rot vel
	0.2, // weight
	0.15, // volume
	0.01, // rubbing
	[0.5,3,4], // size over lifetime
	// color during its life  RGBA
	[[0.6, 0.6, 0.6, 0.1], [0.6, 0.6, 0.6, 0.1], [0.6, 0.6, 0.6, 0.1], [0.6, 0.6, 0.6, 0.1], [0.6, 0.6, 0.6, 0.1], [0.6, 0.6, 0.6, 0.05]],
	[1], // anim spd
	1, // rand dir period
	0.1, // rand dir inten
	"", // on timer script
	"", // before destroy script
	_emitter // obj
];
_emitter setParticleRandom [
	0, //lifetime
	[0, 0, 0], // pos
	[0.1, 0.1, 0.1], // vel
	0.5, // rot vel
	0.5, // size
	[0, 0, 0, 0],// color
	0, // rand dir
	0 // rand dir intensity
];

if (_freeFallSmoke) then {
	_emitter setDropInterval 0.0025;
} else {
	_emitter setDropInterval 0.005;
};

if (_triColor) then {
	_emitter attachto [vehicle _unit, [0,-2.45,5.6]];
} else {
	_emitter attachTo [vehicle _unit, [0, -0.4, -0.6], "lankle"];
};

/*
waitUntil {((getPosATL _unit select 2) <=20 or isTouchingGround _unit)};
deleteVehicle _emitter;
{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_unit nearObjects 50);
