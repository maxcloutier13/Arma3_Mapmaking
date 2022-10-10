#include "koth_spawn_1.sqf"
#include "koth_spawn_2.sqf"
#include "koth_spawn_3.sqf"
#include "koth_spawn_4.sqf"
//Set all dynamic 
{
	_x enableDynamicSimulation true;
} forEach koth_1_target_list;
{
	_x enableDynamicSimulation true;
} forEach koth_2_target_list;
{
	_x enableDynamicSimulation true;
} forEach koth_3_target_list;
{
	_x enableDynamicSimulation true;
} forEach koth_4_target_list;
hintSilent "Toutes les tours sont prêtes. Bonne chan.";
sleep 5;