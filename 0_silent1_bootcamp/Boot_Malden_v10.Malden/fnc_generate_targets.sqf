private ["_i", "_arguments", "_targetClass", "_targetQuantity", "_targetRandomDir", "_targetRangeMin", "_targetRangeMax"];

_arguments = _this select 3;
_targetClass     = _arguments select 0;
_targetQuantity  = _arguments select 1;
_targetRandomDir = _arguments select 2;
_targetRangeMin  = _arguments select 3;
_targetRangeMax  = _arguments select 4;

{_x removeAllEventHandlers "HitPart"; deleteVehicle _x} forEach TrainingCourse_TargetList;
{deleteVehicle _x} forEach allUnits;
{deleteVehicle _x} forEach allDead;
{deleteGroup _x} forEach allGroups;

TrainingCourse_TargetList = [];

Projectile_Impact_Aux setPos [0, 0, 0];

for [{_i = 0}, {_i < _targetQuantity}, {_i = _i + 1}] do
{
	private ["_target", "_angle", "_range", "_position", "_vecToTarget", "_direction"];
	
	_range = _targetRangeMin + (_targetRangeMax - _targetRangeMin) * sqrt(random 1);
	_angle = random 360;
	
	_position = getPosATL player;
	_position set [0, (_position select 0) + sin(_angle) * _range];
	_position set [1, (_position select 1) + cos(_angle) * _range];
	
	_target = _targetClass createVehicle [0, 0, 0];
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
};
