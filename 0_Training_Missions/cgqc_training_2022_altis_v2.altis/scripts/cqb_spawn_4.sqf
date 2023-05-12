missionNamespace setVariable ["noPop", true, true];
_hostile_class = "TargetP_Inf4_Acc1_F";
_hostile_marker_class = "SignAd_SponsorS_Quontrol_F";
// hostage_class = "C_scientist_F";
// hostage_marker_class = "SignAd_SponsorS_Suatmm_F";
// position_marker_class = "VR_3DSelector_01_default_F";

// Delete targets
{
	deleteVehicle _x
} forEach cqb_4_target_list;

// Clears variables 
cqb_4_target_list = [];
cqb_4_hostile_count = 0;
_target_count = floor random [4,6,10];
hint format ["%1 cibles CQB", _target_count+1];
_positions = [];
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [player, [_hostile_marker_class], 100];

_random_pos = selectRandom _positions;

while { cqb_4_hostile_count <= _target_count } do {
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array
	_positions = _positions - [_random_pos];

	// spawn unit, set rotation, and set standing
	_unit = createVehicle [_hostile_class, getPos _random_pos, [], 0, "CAN_COLLIDE"];
	_dir = getDir _random_pos + 180;
	_unit setDir _dir;

	// Make target stay down
	_unit addEventHandler ["HIT", {
		_unit animate ["terc", 1];
		cqb_4_hostile_count = cqb_4_hostile_count - 1;
		if (cqb_4_hostile_count == 0) then {
			hint "Good job Viper";
		} else {
			hint format ["%1 cibles restantes", cqb_4_hostile_count];
		};
	}];
	// count
	cqb_4_hostile_count = cqb_4_hostile_count + 1;
	cqb_4_target_list pushBack _unit;
};