while { true } do {
	_start = diag_tickTime;
	{
		deleteVehicle _x;
	} forEach allDead;
	{
		deleteVehicle _x;
	} forEach nearestObjects [getpos player, ["WeaponHolder", "GroundWeaponHolder"], 14000];
	hint format ["Cleanup: %1 seconds", diag_tickTime - _start];
	sleep 1200;
};