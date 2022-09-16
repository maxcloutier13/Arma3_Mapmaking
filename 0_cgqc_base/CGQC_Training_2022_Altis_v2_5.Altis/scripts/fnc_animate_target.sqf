private ["_target", "_direction", "_speed", "_distance", "_refPosition", "_velocity", "_translation", "_lastTime"];

_target = _this select 0;
_direction = _this select 1;
_speed = _this select 2;
_distance = _this select 3;

private ["_refPosition", "_velocity"];

_refPosition = getPosATL _target;
_velocity = [sin(_direction) * _speed / 100, cos(_direction) * _speed / 100, 0];

_lastTime = diag_tickTime;

while {!(isNull _target)} do
{
	sleep 0.01;
	
	if ((vectorMagnitude (_refPosition vectorDiff (getPosATL _target))) > _distance) then
	{
		_refPosition = getPosATL _target;
		_velocity = [-(_velocity select 0), -(_velocity select 1), 0];
	};
	
	_translation = _velocity vectorMultiply (1 / (diag_tickTime - _lastTime));
	_lastTime = diag_tickTime;
	
	_target setPosATL (getPosATL _target vectorAdd _velocity);
};
