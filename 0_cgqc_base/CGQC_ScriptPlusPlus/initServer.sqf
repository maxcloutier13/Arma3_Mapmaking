["Initialize"] call BIS_fnc_dynamicGroups; // Call vanilla group function
["Initialize"] execVM "scripts\fn_advancedTowingInit.sqf"; // Call Advanced Towing Script
["Initialize"] execVM "scripts\fn_advancedSlingLoadingInit.sqf"; // Call Advanced Sling Loading Script
["Initialize"] execVM "scripts\ambientAir.sqf"; // Call Random Air Ambient FlyBy Script
