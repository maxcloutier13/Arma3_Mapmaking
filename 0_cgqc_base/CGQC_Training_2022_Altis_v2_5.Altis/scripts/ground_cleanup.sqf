while { true } do {
	_count = 0;
	_start = diag_tickTime;
	{
		deleteVehicle _x;
		_count = _count+1;
	} forEach allDead;
	{
		deleteVehicle _x;
		_count = _count+1;
	} forEach nearestObjects [getpos player, ["WeaponHolder", "GroundWeaponHolder"], 7000];
	// hint format ["Cleanup: %1s - %2 objects", diag_tickTime - _start, _count];
	sleep 1200;
};