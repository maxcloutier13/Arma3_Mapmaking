hint "air training off";
// Remove all targets 
{
	deleteVehicle _x
} forEach air_target_list;
// Remove all dead Bodies 
{
	deleteVehicle _x
} forEach allDead;
air_target_list = []; 
air_target_danger = false; 
player removeAction air_act1;
player removeAction air_act2;
player removeAction air_act3;
player removeAction air_act4;
player removeAction air_act5;
player removeAction air_act6;
player removeAction air_act7;
player removeAction air_act8;
player removeAction air_act9;
player removeAction air_act10;
player removeAction air_act11;
player removeAction air_act12;
player removeAction air_act13;
player removeAction air_act14;
player removeAction air_act15;
