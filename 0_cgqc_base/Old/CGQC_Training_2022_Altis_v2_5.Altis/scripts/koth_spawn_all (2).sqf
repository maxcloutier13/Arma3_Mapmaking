
// Classes -----------------------------------------
_static_class = "O_G_HMG_02_high_F";
_static_marker_class = "SignAd_SponsorS_Blueking_F";
_sniper_class = "O_G_Sharpshooter_F";
_sniper_marker_class = "SignAd_SponsorS_Fuel_green_F";
_inf_class_array = ["O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_Soldier_F", "O_G_medic_F", "O_G_engineer_F", "O_G_Soldier_GL_F", "O_G_Soldier_LAT_F", "O_G_Soldier_SL_F", "O_G_Soldier_TL_F"];
_inf_marker_class = "SignAd_SponsorS_Burstkoke_F";
_officer_class = "O_G_officer_F";
_officer_marker_class = "SignAd_SponsorS_Larkin_F";
_patrol_marker_class = "SignAd_SponsorS_Quontrol_F";

// Settings
koth_locations =  ["koth_tower_1", "koth_tower_2", "koth_tower_3", "koth_tower_4"];
koth_max_static = 2;
// Amounts per player
_static_target_todo = floor random [0, 0, 1];
_sniper_target_todo = floor random [1, 2, 3];
_inf_target_todo = floor random [4, 6, 8];
_patrol_target_todo = floor random [1, 2, 3];

// Keep coding this bitch!
// Get player number
// Get multiplyer
// cycle trought koth_locations, spawning 1 thing at a time until done



// -----------------------------------------
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