hostile_class = "TargetP_Inf4_Acc1_F";
hostile_marker_class = "SignAd_SponsorS_Vrana_F";
hostage_class = "C_scientist_F";
hostage_marker_class = "SignAd_SponsorS_Suatmm_F";
position_marker_class = "VR_3DSelector_01_default_F";

// Delete targets
{
	deleteVehicle _x
} forEach cqb_1_target_list;

// Clears variables 
cqb_1_target_list = [];
_hostile_count = 0;
_target_count = floor random 6;

_positions = [];
// Find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [player, [hostile_marker_class], 100];

_random_pos = selectRandom _positions;

while {_hostile_count <= _target_count} do {
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array
	_positions - [_random_pos];

	// spawn unit, set rotation, and set standing
	_unit = createVehicle [hostile_class, getPos _random_pos, [], 0, "CAN_COLLIDE"];
	_dir = getDir _random_pos + 180;
	_unit setDir _dir;
	_unit setUnitPos "UP";

	// count
	_hostile_count = _hostile_count + 1;
	cqb_1_target_list pushBack _unit;
};


//{} forEach nearestObjects [player, [hostile_marker_class], 100];