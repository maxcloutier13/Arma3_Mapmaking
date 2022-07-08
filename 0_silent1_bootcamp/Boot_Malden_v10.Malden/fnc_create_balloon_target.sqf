private ["_arguments", "_targetClass", "_targetRandomDir", "_targetAnimated"];

_arguments = _this select 3;
_targetClass     = _arguments select 0;
_targetRandomDir = _arguments select 1;
_targetAnimated  = _arguments select 2;

private ["_target",  "_angle", "_range", "_position", "_vecToTarget", "_direction"];

_position = screenToWorld [0.5, 0.5];

// Table
_target = "Land_WoodenTable_small_F" createVehicle [0, 0, 0];
_target setPosATL [_position select 0, _position select 1, 0.0];

if (_targetRandomDir) then
{
	_direction = random 360;
} else
{
	_vecToTarget = (getPosASL player) vectorFromTo (getPosASL _target);
	_direction = (_vecToTarget select 0) atan2 (_vecToTarget select 1);
};

_target setDir _direction;

_target addEventHandler ["HitPart", {(_this select 0) execVM "fnc_on_hit.sqf"}];

TrainingCourse_TargetList pushBack _target;

// Balloon
_target = "Land_Balloon_01_water_F" createVehicle [0, 0, 0];
_target setPosATL [_position select 0, _position select 1, 0.9];

if (_targetRandomDir) then
{
	_direction = random 360;
} else
{
	_vecToTarget = (getPosASL player) vectorFromTo (getPosASL _target);
	_direction = (_vecToTarget select 0) atan2 (_vecToTarget select 1);
};

_target setDir _direction;

_target addEventHandler ["HitPart", {(_this select 0) execVM "fnc_on_hit.sqf"}];

TrainingCourse_TargetList pushBack _target;

