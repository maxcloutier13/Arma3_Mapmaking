_type = _this select 0;
_west_marker_class = "SignAd_SponsorS_ARMEX_F";
_first_class = "DSF_ISIS_Repair";
_east_marker_class = "SignAd_SponsorS_Burstkoke_F";
_marker_class = "";
_positions = [];

switch (_type) do {
	case "west": {
		_marker_class = _west_marker_class;
	};
	case "east": {
		_marker_class = _east_marker_class;
		
	};
	default {
		hint "spawn fail"
	};
};

// find available positions  
{
	_positions pushBack _x;
} forEach nearestObjects [IED_Cache, [_marker_class], 100];
// Pick random position
_random_pos = selectRandom _positions;
_unit = base_group createUnit [ _first_class, getPosATL _random_pos, [], 0, "CAN_COLLIDE"];
_unit doMove position IED_Cache;
//hint "Spawn West";