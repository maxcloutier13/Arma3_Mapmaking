_count = count koth_1_target_list;
// Delete targets
{
	deleteVehicle _x
} forEach koth_1_target_list;
hintSilent format ["KOTH: Tower1:Clear - %1 units deleted", _count];
sleep 2;
_count = count koth_2_target_list;
// Delete targets
{
	deleteVehicle _x
} forEach koth_2_target_list;
hintSilent format ["KOTH: Tower2:Clear - %1 units deleted", _count];
sleep 2;
_count = count koth_3_target_list;
// Delete targets
{
	deleteVehicle _x
} forEach koth_3_target_list;
hintSilent format ["KOTH: Tower3:Clear - %1 units deleted", _count];
sleep 2;
_count = count koth_4_target_list;
// Delete targets
{
	deleteVehicle _x
} forEach koth_4_target_list;
hintSilent format ["KOTH: Tower4:Clear - %1 units deleted", _count];
sleep 2;
hintSilent "Toutes les tours sont clears";
sleep 5;