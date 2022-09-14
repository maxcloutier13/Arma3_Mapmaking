// Default radio
["ACRE_PRC152"] call acre_api_fnc_setItemRadioReplacement;

#include "pboVariant.hpp"
#ifdef PBO_VARIANT_STANDALONE_MISSION
#include "src\init.sqf"
#else
#include "\vindicta_missions\src\init.sqf"
#endif