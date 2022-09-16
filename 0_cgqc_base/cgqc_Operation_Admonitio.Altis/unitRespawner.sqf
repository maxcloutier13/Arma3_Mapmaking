///////////////////////////////////////////////////////////////////////////////////////////////////
// EDIT THIS BELOW FOR true/false.
_respawnAllAtOnce = true; // true/false only! edit this to suit the respawning needs, per unit or all at once.
///////////////////////////////////////////////////////////////////////////////////////////////////
// DONT EDIT BELOW HERE!
params ["_unit"]; // parse the unit to this script. via unit init line... [this] execVM "thisScript.sqf";
if (isNil "_unit") exitWith { diag_log format ["[ERROR] -> unit not able to init respawner"]; };
///////////////////////////////////////////////////////////////////////////////////////////////////
// respawner global function
unitRespawner = {
	params ["_unit","_unitPos","_unitDir","_unitType","_unitGroup","_respawnAllAtOnce"];
	_unitVarName = vehicleVarName _unit; // unit variable name.
	[_unit] joinSilent _unitGroup; // join the unit back to the same group.
	_unitDescription = getText (configfile >> "CfgVehicles" >> _unitType >> "displayName"); // get the display name of the unit via the configuration file (text).
	_unit disableAI "ALL";
	{
		_x addCuratorEditableObjects [[_unit],false]; // add unit for zeus access/monitoring to all curators.
	} forEach allCurators;
	while {alive _unit} do // loop forever (until the unit is deceased).
	{
		waitUntil {!alive _unit}; // wait until the unit is dead.
		if (_respawnAllAtOnce) then // if true, wait until all AI are deceased then respawn them, else respawn 10 seconds after each unit is deceased.
		{
			waitUntil {count (nearestObjects [_unit,["CAManBase"],100] select {(side _x isEqualTo EAST) && (alive _x) && (vehicleVarName _x != "")}) isEqualTo 0}; // wait until ALL of the OPFOR (EAST) AI are deceased to respawn them.
		};
		if (!alive _unit) exitWith // if unit is no longer alive execute the code within then exit the routine.
		{
			///////////////////////////////////////////////////////////////////////////////////////
			uiSleep 10; // sleep for 10 seconds until clean up and recreate unit.
			///////////////////////////////////////////////////////////////////////////////////////
			deleteVehicle _unit; // delete the deceased unit.
			{deleteVehicle _x;} forEach (nearestObjects [_unitPos,["GroundWeaponHolder","WeaponHolderSimulated"],5]); // gather all the weapon holder objects within 5 meters of the deceased unit position and delete them.
			///////////////////////////////////////////////////////////////////////////////////////
			_unitNew = _unitGroup createUnit [_unitType, _unitPos, [], 0, "CAN_COLLIDE"]; // recreate the unit as a UNIT, not a VEHICLE.
			_unitNew setVehicleVarName _unitVarName; // re-add the unit variable name.
			_unitNew setPos _unitPos; // set the position to the original.
			_unitNew setDir _unitDir; // set the direction of the original.
			[_unitNew,_unitPos,_unitDir,_unitType,_unitGroup,_respawnAllAtOnce] spawn unitRespawner; // spawn a new thread for the global function 'unitRespawner' for the recreated unit.
			///////////////////////////////////////////////////////////////////////////////////////
		};
	};
};
///////////////////////////////////////////////////////////////////////////////////////////////////
// initial unit set up for unit placed via eden.
_unitPos = getPosVisual _unit; // get the position of the alive unit placed via eden.
_unitDir = getDirVisual _unit; // get the direction the unit placed via eden is facing.
_unitType = typeOf _unit; // the classname of the unit placed via eden.
_unitGroup = group _unit; // the group the unit is assigned to.
_unitGroup deleteGroupWhenEmpty false; // make sure the group does not get deleted if/when empty (used for readding units to the same group on respawn).
[_unit,_unitPos,_unitDir,_unitType,_unitGroup,_respawnAllAtOnce] spawn unitRespawner; // spawn a new thread for the global function 'unitRespawner' for the unit placed via eden.
///////////////////////////////////////////////////////////////////////////////////////////////////
// EOF