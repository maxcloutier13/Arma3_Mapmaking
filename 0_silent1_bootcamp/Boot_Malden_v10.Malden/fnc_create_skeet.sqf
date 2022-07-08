private ["_target",  "_angle", "_position", "_distance", "_direction"];

_position = getPosASL player;
_angle = getDir player;
if (random 1 > 0.5) then {
	_position = _position vectorAdd [sin(_angle + 90) * 2, cos(_angle + 90) * 2, 2 + random 1];
} else {
	_position = _position vectorAdd [sin(_angle - 90) * 2, cos(_angle - 90) * 2, 2 + random 1];
};

_target = "Skeet_Clay_F" createVehicle [0, 0, 0];
_target setPosASL [_position select 0, _position select 1, _position select 2];
_target setVelocity [sin(_angle - (random 10) + (random 10)) * (10 + random 5), cos(_angle - (random 10) + (random 10)) * (10 + random 5), 5 + random 10];

_target addEventHandler ["HitPart", {(_this select 0) execVM "fnc_on_hit.sqf"}];

TrainingCourse_TargetList = TrainingCourse_TargetList + [_target];
