// Remove all dead Bodies 
{
	deleteVehicle _x
} forEach allDead;
// Remove all patients 
{
	if ((typeOf _x == 'b_g_survivor_F') && (!isPlayer _x)) then {
		deleteVehicle _x
	};
} forEach allUnits;