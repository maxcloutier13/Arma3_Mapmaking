["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
#include "pboVariant.hpp"
#ifdef PBO_VARIANT_STANDALONE_MISSION
#include "src\onPlayerRespawn.sqf"
#else
#include "\vindicta_missions\src\onPlayerRespawn.sqf"
#endif