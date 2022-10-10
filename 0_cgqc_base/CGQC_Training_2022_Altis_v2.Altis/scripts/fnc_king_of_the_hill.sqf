private ["_group"];

{_x removeAllEventHandlers "HitPart"; deleteVehicle _x} forEach TrainingCourse_TargetList;
{deleteVehicle _x} forEach allUnits;
{deleteVehicle _x} forEach allDead;
{deleteGroup _x} forEach allGroups;

Projectile_Impact_Aux setPos [0, 0, 0];

for [{_i = 0}, {_i < 30}, {_i = _i + 1}] do
{
	private ["_angle", "_range", "_position"];
	
	_range = 250 + 1250 * (random 1);
	_angle = random 360;
	
	_position = getPosATL player;
	_position set [0, (_position select 0) + sin(_angle) * _range];
	_position set [1, (_position select 1) + cos(_angle) * _range];
	
	_group = createGroup east;
	"O_Soldier_F" createUnit [[_position select 0, _position select 1, 0.0], _group];
	_group addWaypoint [position player, 0];
	[_group, 1] setWaypointType "MOVE";
	[_group, 1] setWaypointSpeed "LIMITED";
};
