// Turn it all off
waitUntil {
	!isNull player
};

// Deactivate Alt+click teleport
// ["teleportHandler", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

// Remove all targets 
{
	_x removeAllEventHandlers "HitPart";
	deleteVehicle _x
} forEach TrainingCourse_TargetList;
// Remove all dead Bodies 
{
	deleteVehicle _x
} forEach allDead;

TrainingCourse_TargetList = [];
TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
TrainingCourse_BulletCameraAbort = false;

TrainingCourse_ShotsFired = 0;
TrainingCourse_TargetsHit = 0;
TrainingCourse_AverageDistance = 0;
TrainingCourse_AverageTargetScore = 0;
TrainingCourse_AverageImpactDeviation = 0;

// Remove all actions
player removeAction range_act1;
player removeAction range_act2;
player removeAction range_act3;
player removeAction range_act4;
// player removeAction range_act5;
player removeAction range_act6;
player removeAction range_act7;
player removeAction range_act8;
player removeAction range_act9;
player removeAction range_act10;
// player removeAction range_act11;
// player removeAction range_act12;
player removeAction range_act13;
player removeAction range_act14;
player removeAction range_act15;
player removeAction range_act16;
player removeAction range_act17;
player removeAction range_act18;

// Remove eventhandlers
player removeEventHandler ["fired", range_event1];
player removeEventHandler ["fired", range_event2];