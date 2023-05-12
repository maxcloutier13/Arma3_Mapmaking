_vic = vehicle player;
_player = player;
//Get racks
y_accessibleRacks = [_vic, _player] call acre_sys_rack_fnc_getAccessibleVehicleRacks;
//Get mounted radios
waitUntil {sleep 0.5;!isNil "y_accessibleRacks"};
y_rack1 = y_accessibleRacks select 0;
y_rack2 = y_accessibleRacks select 1;
waitUntil {sleep 0.5;!isNil "y_rack1"};
y_radio1 = [y_rack1] call acre_api_fnc_getMountedRackRadio;
waitUntil {sleep 0.5;!isNil "y_rack2"};
y_radio2 = [y_rack2] call acre_api_fnc_getMountedRackRadio;
waitUntil {sleep 0.5;!isNil "y_radio_1"};
//[y_radio1] call acre_sys_rack_fnc_startUsingMountedRadio;
waitUntil {sleep 0.5;!isNil "y_radio2"};
//[y_radio2] call acre_sys_rack_fnc_startUsingMountedRadio;
[y_radio1, "LEFT"] call acre_api_fnc_setRadioSpatial;
[y_radio2, "RIGHT"] call acre_api_fnc_setRadioSpatial;
// Lower volume of 152?
//[_handRadio,0.5] call acre_api_fnc_setRadioVolume;
// Set radio orders
[[y_radio1, y_radio2, ""]] call acre_api_fnc_setMultiPushToTalkAssignment;
