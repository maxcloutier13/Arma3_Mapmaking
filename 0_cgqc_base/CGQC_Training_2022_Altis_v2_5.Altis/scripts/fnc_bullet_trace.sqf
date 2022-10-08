private ["_unit", "_bullet", "_bulletVelocity", "_mv", "_v", "_color", "_distance"];

TrainingCourse_ShotsFired = TrainingCourse_ShotsFired + 1;

if !(TrainingCourse_BulletPathTracing) exitWith {};

_unit = _this select 0;
_bullet = _this select 6;

while {alive _bullet} do {
	_bulletVelocity = velocity _bullet;
	_v = vectorMagnitude _bulletVelocity;
	if (isNil ("_mv")) then {_mv = _v;};
	
	_color = switch true do {
		case (_v / _mv >= .75) : {[1,0,0,1]};
		case (_v / _mv >= .50) : {[1,1,0,1]};
		case (_v / _mv >= .25) : {[0,1,0,1]};
		case (_v / _mv >= .10) : {[0,0,1,1]};
		case (_v / _mv >= 0.0) : {[1,1,1,1]};
		default {[0,0,0,1]};
	};
	
	drop ["\A3\data_f\missileSmoke","","Billboard",0.1,8,getPos _bullet,[0,0,0],0,1.275,1,0,[0.1 + 0.001*(_unit distance _bullet),0.1],[_color,_color],[1,0],0,0,"","",""];
	
	//drawLine3D [_positions select _i select 0, _positions select (_i + 1) select 0, _color];
	sleep 0.01;
};

