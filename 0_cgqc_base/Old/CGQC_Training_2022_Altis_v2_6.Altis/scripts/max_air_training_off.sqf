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

player removeAction air_act1;
player removeAction air_act2;
player removeAction air_act3;
player removeAction air_act4;
player removeAction air_act5;
player removeAction air_act6;
player removeAction air_act7;
player removeAction air_act8;
