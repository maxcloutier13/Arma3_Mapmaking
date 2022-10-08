_static_class = "O_G_HMG_02_high_F";
_static_marker_class = "SignAd_SponsorS_Blueking_F";
_sniper_class = "O_G_Sharpshooter_F";
_sniper_marker_class = "SignAd_SponsorS_Fuel_green_F";
_inf_class_array = ["O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_medic_F", "O_G_engineer_F", "O_G_Soldier_GL_F", "O_G_Soldier_LAT_F", "O_G_Soldier_SL_F", "O_G_Soldier_TL_F"];
_inf_marker_class = "SignAd_SponsorS_Burstkoke_F";
_officer_class = "O_G_officer_F";
_officer_marker_class = "SignAd_SponsorS_Larkin_F";
_patrol_marker_class = "SignAd_SponsorS_Quontrol_F";
// Amounts
_static_target_todo = floor random [0, 0, 1];
_sniper_target_todo = floor random [1, 2, 3];
_inf_target_todo = floor random [4, 6, 8];
_patrol_target_todo = floor random [1, 2, 3];

hint "KOTH tower 2: ON!";
// sleep 2;
// Add all the created units to a group
hintSilent "KOTH: Tower2: making group";
// sleep 2;
_koth_3_group = createGroup [east, true];
_koth_3_group setBehaviour "SAFE";
_koth_3_group_statics = createGroup [east, true];
_koth_3_group_statics setBehaviour "SAFE";
// Delete targets
{
	deleteVehicle _x
} forEach koth_3_target_list;

// Clears variables 
koth_3_target_list = [];

// Officers -------------------------------------------------------------------------------------------------------
koth_3_officer_count = 0;
_positions = [];
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [koth_tower_3, [_officer_marker_class], 20];
hintSilent format ["Adding officer to %1", count _positions];
// sleep 5;
// Pick random position
_random_pos = _positions select 0;
// spawn unit, set rotation, and set standing
_koth_3_officer = _koth_3_group createUnit [_officer_class, getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
doStop _koth_3_officer;
_dir = getDir _random_pos;
_koth_3_officer setDir _dir;
// count
koth_3_officer_count = koth_3_officer_count + 1;
koth_3_target_list pushBack _koth_3_officer;
hintSilent format ["%1 officer done", koth_3_officer_count];
// sleep 3;
hintSilent "KOTH: tower3: Finished Officers";
// sleep 5;

// Statics -------------------------------------------------------------------------------------------------------
koth_3_statics_count = 0;
_positions = [];
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [koth_tower_3, [_static_marker_class], 20];
hintSilent format ["%1 statics/%2 positions possibles", _static_target_todo, count _positions];
// sleep 3;
// Pick random position ans spawn unit until count is done
while { koth_3_statics_count <= _static_target_todo } do {
	hintSilent format ["Adding static %1", koth_3_statics_count];
	// sleep 2;
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array so it doesn't come back
	_positions = _positions - [_random_pos];
	// spawn unit, set rotation, and set standing
	_static = createVehicle [ _static_class, getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
	_static allowCrewInImmobile true;
	_dir = getDir _random_pos;
	_static setDir _dir;
	_unit = _koth_3_group_statics createUnit [ "O_G_Soldier_F", getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
	_unit disableAI "PATH";
	_unit setDir _dir;
	_unit moveInGunner _static;
	doStop _unit;
	// count
	koth_3_statics_count = koth_3_statics_count + 1;
	koth_3_target_list pushBack _unit;
	koth_3_target_list pushBack _static;
	hintSilent format ["%1 statics done", koth_3_statics_count];
	// sleep 3;
};
hintSilent "KOTH: tower3: Finished statics";
// sleep 5;

// Snipers -------------------------------------------------------------------------------------------------------
koth_3_snipers_count = 0;
_positions = [];
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [koth_tower_3, [_sniper_marker_class], 20];
hintSilent format ["%1 snipers/%2 positions possibles", _sniper_target_todo, count _positions];
// sleep 3;
// Pick random position and spawn unit until count is done
while { koth_3_snipers_count <= _sniper_target_todo } do {
	hintSilent format ["Adding sniper %1", koth_3_snipers_count];
	// sleep 2;
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array so it doesn't come back
	_positions = _positions - [_random_pos];
	// spawn unit, set rotation, and set standing
	_unit = _koth_3_group createUnit [ _sniper_class, getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
	_dir = getDir _random_pos;
	_unit setDir _dir;
	_unit disableAI "PATH";
	doStop _unit;
	// count
	koth_3_snipers_count = koth_3_snipers_count + 1;
	koth_3_target_list pushBack _unit;
	hintSilent format ["%1 snipers done", koth_3_snipers_count];
	// sleep 3;
};
hintSilent "KOTH: tower3: Finished snipers";
// sleep 5;

// Infantry -------------------------------------------------------------------------------------------------------
koth_3_infantry_count = 0;
_positions = [];
// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [koth_tower_3, [_inf_marker_class], 20];
hintSilent format ["%1 infanterie/%2 positions possibles", _inf_target_todo, count _positions];
// sleep 3;
// Pick random position and spawn unit until count is done
while { koth_3_infantry_count <= _inf_target_todo } do {
	hintSilent format ["Adding infanterie %1", koth_3_infantry_count];
	// sleep 2;
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array so it doesn't come back
	_positions = _positions - [_random_pos];
	// Pick random infantry waitUntil 
	_infantry_class = selectRandom _inf_class_array;
	// spawn unit, set rotation, and set standing
	_unit = _koth_3_group createUnit [ _infantry_class, getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
	_dir = getDir _random_pos;
	_unit setDir _dir;
	doStop _unit;
	// Sets unit as moving or not
	_move = selectRandom [0, 1];
	if (_move > 0) then {
		_unit disableAI "PATH";
	};
	// count
	koth_3_infantry_count = koth_3_infantry_count + 1;
	koth_3_target_list pushBack _unit;
	hintSilent format ["%1 infanterie done", koth_3_infantry_count];
	// sleep 3;
};
hintSilent "KOTH: tower3: Finished infantry";

// Patrols -------------------------------------------------------------------------------------------------------
koth_3_patrol_count = 0;
_positions = [];

// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [koth_tower_3, [_patrol_marker_class], 20];
while { koth_3_patrol_count <= _patrol_target_todo } do {
	hintSilent format ["Adding patrol %1/%2", koth_3_patrol_count, _patrol_target_todo];
	// sleep 2;
	// Pick random position
	_random_pos = selectRandom _positions;
	// Remove used position from array so it doesn't come back
	_positions = _positions - [_random_pos];
	_type = selectRandom [0, 1];
	// spawn unit, set rotation, and set standing
	if (_type > 0) then {
		// Full patrol
		hintSilent "KOTH: tower3: Full patrol";
		// sleep 1;
		koth_3_patrol_group = [ getPosATL _random_pos, east, ["I_G_Soldier_TL_F", "I_G_Soldier_AR_F", "I_G_Soldier_F", "I_G_Soldier_LAT2_F"]] call BIS_fnc_spawnGroup;
	} else {
		// 2 man patrol
		hintSilent "KOTH: tower3: 2-man patrol";
		// sleep 2;
		koth_3_patrol_group = [ getPosATL _random_pos, east, ["I_G_Soldier_TL_F", "I_G_Soldier_AR_F"]] call BIS_fnc_spawnGroup;
	};
	[koth_3_patrol_group, getPosATL _random_pos, 50] call BIS_fnc_taskPatrol;
	// add all units to target list
	{
		koth_3_target_list pushBack _x;
	} forEach units koth_3_patrol_group;

	// count
	koth_3_patrol_count = koth_3_patrol_count + 1;
	// koth_3_target_list pushBack _unit;
	hintSilent format ["%1 patrols done", koth_3_patrol_count];
	// sleep 3;
};

hintSilent format ["KOTH: tower3:Done - %1 units ready", count koth_3_target_list];
// Turn off fall damage
{
	_x removeAllEventHandlers "HandleDamage";
	_x addEventHandler ["HandleDamage", {
		params ["_x", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
		private _ret = damage _x;
		// Handle falling damage
		private _vehicle = vehicle _x;
		private _impactVelocity = (velocity _x) select 2;
		if ((_impactVelocity > 0) || {
			(_vehicle != _x) || {
				!((_source == _x) || {
					isNull _source
				}) || {
					(_projectile != "")
				}
			}
		}) then {
			_ret = _this call ace_medical_fnc_handleDamage;
		};
		_ret
	}];
} forEach koth_3_target_list;
sleep 4;

// Trigger to notify tower complete
koth_3_started = true;