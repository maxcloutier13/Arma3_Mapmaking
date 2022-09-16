_count = count koth_1_target_list;
// Delete targets
{
	deleteVehicle _x
} forEach koth_1_target_list;
hintSilent format ["KOTH: Tower1:Clear - %1 units deleted", _count];
sleep 4;