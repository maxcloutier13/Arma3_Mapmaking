this addAction ["CQB Funtimes", "null = execVM 'scripts\cqb_spawn_1.sqf'"];


cqb_1_target_list = []; 
this addAction ["CQB: 1 cible", "null = execVM 'scripts\cqb_spawn_1.sqf'",[1]];
this addAction ["CQB: 2 cible", "null = execVM 'scripts\cqb_spawn_1.sqf'",[2]];
this addAction ["CQB: 3 cible", "null = execVM 'scripts\cqb_spawn_1.sqf'",[3]];






_object1 = _this select 0;
_caller1 = _this select 1;
_arguments = _this select 3;
_target_count = _arguments select 0;

hostile_class = "TargetP_Inf4_Acc1_F";
hostile_marker_class = "SignAd_SponsorS_Vrana_F";
hostage_class = "C_scientist_F";
hostage_marker_class = "SignAd_SponsorS_Suatmm_F";
position_marker_class = "VR_3DSelector_01_default_F";

// Remove any corpses
if
{
	deleteVehicle _x
} forEach allDead inArea trg_cqb_1;

// Remove any leftover units
// {
	if (!isPlayer _x) then {
		deleteVehicle _x;
	}
} forEach allUnits inArea trg_cqb_1;

// Delete targets
{
	deleteVehicle _x
} forEach cqb_1_target_list;

// Clears variables 
cqb_1_target_list = [];
_hostile_count = 0;
_positions = hostile_marker_class inArea trg_cqb_1;
while (_target_count <= _hostile_count) do
{
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array
	_positions - [_random_pos];

	// spawn unit, set rotation, and set standing
	_unit = createVehicle [hostile_class, getPos _x, [], 0, "CAN_COLLIDE"];
	_dir = getDir _x + 180;
	_unit setDir _dir;
	_unit setUnitPos "UP";

	// count
	_hostile_count = _hostile_count + 1;
	cqb_1_target_list pushBack _unit;
};

//-------------------------------------------------------------

//_arguments = _this select 3;
_target_count = 2;

hostile_class = "TargetP_Inf4_Acc1_F";
hostile_marker_class = "SignAd_SponsorS_Vrana_F";
hostage_class = "C_scientist_F";
hostage_marker_class = "SignAd_SponsorS_Suatmm_F";
position_marker_class = "VR_3DSelector_01_default_F";

// Remove any corpses
{
	deleteVehicle _x
} forEach allDead inArea trg_cqb_1;

// Remove any leftover units
{
	if (!isPlayer _x) then {
		deleteVehicle _x;
	};
} forEach allUnits inArea trg_cqb_1;

// Delete targets
{
	deleteVehicle _x
} forEach cqb_1_target_list;

// Clears variables 
cqb_1_target_list = [];
_hostile_count = 0;
_positions = [];

while (_target_count <= _hostile_count) do
{
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array
	_positions - [_random_pos];

	// spawn unit, set rotation, and set standing
	_unit = createVehicle [hostile_class, getPos _x, [], 0, "CAN_COLLIDE"];
	_dir = getDir _x + 180;
	_unit setDir _dir;
	_unit setUnitPos "UP";

	// count
	_hostile_count = _hostile_count + 1;
	cqb_1_target_list pushBack _unit;



//-------------------------------------------------------------

cqb_1_target_list = [];  
this addAction ["CQB: Random targets", "null = execVM 'scripts\cqb_spawn_1.sqf'",[1]]; 
SignAd_SponsorS_Vrana_F