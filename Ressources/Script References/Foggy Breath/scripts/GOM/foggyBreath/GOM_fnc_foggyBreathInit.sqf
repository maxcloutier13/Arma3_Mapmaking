//GOM_fnc_foggyBreath.sqf V1.1 - Made by Grumpy Old Man 15.01.2017
//adds visible breath in colder climates
//breath frequency is adjusted according to fatigue, being hit and for sounds played by the player character (injury etc)
//works with dynamically spawned units mid mission
//adjust GOM_fnc_temperature to dynamically add foggy breath effect during mission runtime, default will be 7°C
//breath will start to show below 8°C and be most prominent at -9°C
/*
Changelog:
1.1:
Changed file structure to utilize CfgFunctions and description.ext
Made function auto run on mission start
To stop the breath from being visible set GOM_fnc_temperature above 7.


*/

GOM_fnc_visibleBreathInit = {

	waituntil {time > 0 AND count allplayers > 0};

	GOM_fnc_addBreath = true;

	while {GOM_fnc_addBreath} do {

	{

		if (!(_x getvariable ["GOM_fnc_visibleBreath",false]) AND typeof _x iskindof "CAManBase") then {
			_x setVariable ["GOM_fnc_visibleBreath",true,true];

			if (isPlayer _x) then {

				_x addEventHandler ["SoundPlayed","_this spawn GOM_fnc_visibleBreath"];
				_breathe = [_x] spawn GOM_fnc_breathLoop;

			};

			if !(isPlayer _x) then {_breathe = [_x] spawn GOM_fnc_breathLoop;


			_x addEventHandler ["Hit",{

				params ["_unit"];
				[_unit,6] spawn GOM_fnc_visibleBreath;

			}];
			};

};




	} forEach allUnits;


sleep 5;
};

};

_defaultTemp = 7;

if (missionnamespace getVariable ["GOM_fnc_temperature",""] isEqualTo "") then {

	missionNamespace setVariable ["GOM_fnc_temperature",_defaultTemp,true]

};



GOM_fnc_breathLoop = {

	params ["_unit",["_debug",false]];

	if (!alive _unit) exitWith {false};

	sleep random 12;
	_sleep = 0;

	if (isplayer _unit) then {

		_sleep = 12;

	};

	while {alive _unit} do {

		if (!alive _unit) exitWith {false};

		waituntil {simulationEnabled _unit isEqualTo true};
		waituntil {if (speed _unit > 10) exitWith {true};sleep 0.5; GOM_fnc_temperature < 8};
		waituntil {if (speed _unit > 10) exitWith {true};sleep 0.5;((_unit getVariable ["GOM_fnc_eventBreath",-60]) + _sleep < time)};

		if (!alive _unit) exitWith {false};

		_cause = "";

		if ((_unit getVariable ["GOM_fnc_eventBreath",-60]) + _sleep < time) then {

			_index = 1;
			_sleep = random [3,6,12];
			_cause = "ambient breath";

			if (damage _unit > 0.1) then {

				_index = 2;
				_sleep = random [3,6,6];
				_cause = "light hurt breath";

			};

			if (damage _unit > 0.4) then {

				_index = 4;
				_sleep = random [3,4,5];
				_cause = "hurt breath";

			};

			_exhaustTimer = _unit getVariable ["GOM_fnc_exhaustTimer",-60];
			if (speed _unit > 10 OR getfatigue _unit > 0.05 OR time < _exhaustTimer + 60) then {

				_cause = "running breath";

				if (time < _exhaustTimer + 60) then {_cause = "exhausted breath"};

				_sleep = random [2,2.5,3];
				_index = 1;

				if (getfatigue _unit > 0.5) then {_unit setVariable ["GOM_fnc_exhaustTimer",time]};

			};

			if (!alive _unit) exitWith {false};
			if (behaviour _unit isEqualTo "COMBAT") then {_sleep = _sleep * 0.5};
			if (behaviour _unit isEqualTo "AWARE") then {_sleep = _sleep * 0.75};

			_breathe = [_unit,_index,_cause] call GOM_fnc_visibleBreath;
			_sleep = (_sleep - (damage _unit) - (getfatigue _unit * 1.5)) max random [0.3,0.4,0.5];

			if (_debug) then {

				playsound "click";
				systemchat str _cause;
				systemchat str _sleep;

			};

			if (!alive _unit) exitWith {false};
			sleep _sleep;

		};

	};

	if (!alive _unit) exitWith {false};

};



GOM_fnc_visibleBreath = {

	params ["_unit","_soundID",["_cause","EH breath"]];

	if !(alive _unit) exitWith {false};
	if (((getposasl _unit) select 2) <= 0) exitWith {false};
	if !(_unit isEqualTo vehicle _unit) exitWith {false};

	_reference = ["BREATH","BREATHINJURED","INJURED","PULSATION","HITSCREAM","GASPING","STABILIZING","RECOVERED"];
	_allowed = [1,2,4,5,6,10,11,14];

	if !(_soundID in _allowed) exitWith {false};
	if (GOM_fnc_temperature >= 8) exitWith {false};

	if (_soundID != 6) then {

		sleep 0.5;

	};

	_index = (_allowed find _soundID);
	_speedIntensities = [1,1.5,2,1.3,2.5,2.5,1.3,1.1];
	_exhaleTimeFactors = [1,0.7,0.5,0.3,.4,1.2,1,1];
	_speedFactor = _speedIntensities select _index;
	_exhaleTimeFactor = _exhaleTimeFactors select _index;

	_preint = (0.06 * (getfatigue _unit)) max 0.006;

	_cold = 0;
	_lifeTime = 0.2;

	if (GOM_fnc_temperature < 3) then {_cold = 0.02;_lifeTime = 0.4};
	if (GOM_fnc_temperature < -3) then {_cold = 0.035;_lifeTime = 0.6};
	if (GOM_fnc_temperature < -9) then {_cold = 0.055;_lifeTime = 0.8};

	_lifeTimeFraction = _lifeTime / 10;
	_lifeTime = random [_lifeTime - _lifeTimeFraction,_lifeTime,_lifeTime + _lifeTimeFraction];
	_preInt = _preInt + _cold;
	_preintFraction = _preint / 10;
	_int = random [_preint - _preintFraction,_preint,_preint + _preintFraction];
	_defaultVel =[0, 0.2, -0.2];

	_vec = eyeDirection _unit;
	_vec  params["_dirX","_dirY"];
	_exhaleDir = _dirX atan2 _dirY;
	if (_exhaleDir < 0) then {_exhaleDir = 360 + _exhaleDir};

	_unitVelocity = velocity _unit;

	_getExhaleSpeed = 0.26 * _speedFactor;

	_exhaleSpeed = random [_getExhaleSpeed - (_getExhaleSpeed / 10),_getExhaleSpeed,_getExhaleSpeed + (_getExhaleSpeed / 10)];
	_exhaleVelocity = [
		(_unitVelocity select 0) + (sin _exhaleDir * _exhaleSpeed),
		(_unitVelocity select 1) + (cos _exhaleDir * _exhaleSpeed),
		(_unitVelocity select 2)
	];

		_source = "logic" createVehicleLocal (getpos _unit);
		_fog = "#particlesource" createVehicleLocal getpos _source;
		_fog setParticleParams [
		["\A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 12, 13,0],
		"",
		"Billboard",
		0.5,
		_lifeTime,
		[0,0,0],
		_exhaleVelocity,
		1, 1.195,	1, 0.20,
		[0, 0.2,0],
		[[1,1,1, _int], [1,1,1, 0.001], [1,1,1, 0]],
		[1000],
		1,
		0.04,
		"",
		"",
		_source
		];

		_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
		_fog setDropInterval 0.002;
	_eyepos = ASLToAGL (eyepos _unit);
	_mouthpos = _unit worldToModelVisual (_eyepos vectoradd [0,0.09,-0.09]);
	_source attachto [_unit,_mouthpos];

	_exhaleTime = 0.4 * _exhaleTimeFactor;

	sleep random [_exhaleTime - 0.25,_exhaleTime,_exhaleTime + 0.25];

	deletevehicle _source;
	deletevehicle _fog;

	_unit setVariable ["GOM_fnc_eventBreath",time];

	true

};
_breathe = [] spawn GOM_fnc_visibleBreathInit;