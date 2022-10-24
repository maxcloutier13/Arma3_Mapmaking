//------------------------------------------------------
// Other
//------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------
// triggers
//------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------
private _var = missionNamespace getVariable "hq_trg";
private _area = [30.615,21.415,0,true,5];
private _condition = "this && {player in thisList}";
private _activation = "{[_x] execVM 'scripts\HQ_no_fire.sqf'} foreach thislist;";
private _desactivation = "thisTrigger setTriggerInterval 200;";
private _interval = 0;
_trigger3 = [_var,_area,_condition,_activation,_desactivation,_interval] execVM "scripts\my_trigger.sqf";
//-------------------------------------------------------------------------------------------------------------------------------------------------

CHVD_allowNoGrass = true;
player enableStamina false;

// Only run on clients, excluding HCs
[] spawn {

	// Delay until the server time has sync'd
	waitUntil {time > 5};
	// For JIP, wait until the main screen loads
	waitUntil {!isNull (findDisplay 46) };

	// Check if player name contains the word "Zeus"
	if (["zeus", format["%1",player]] call BIS_fnc_inString) then {		
	
		_checkIfValidCuratorSlot = {
			private _curatorList = _this;
			
			// Check that Zeus has been assigned to player
			if (isNull (getAssignedCuratorLogic player)) then {
				private _exitLoop = false;
				{	
					// Find an unassigned Zeus slot and assign it to the player
					if (isNull (getAssignedCuratorUnit _x)) then { 
						[player, _x] remoteExecCall ["assignCurator",2]; 
						sleep 2.0;
						// Check if a valid Zeus slot
						if (isNull (getAssignedCuratorLogic player)) then {
							// Broken Zeus slot, so clear and repeat
							_x remoteExecCall ["unassignCurator",2]; 
							sleep 2.0;
						} else {
							hint format["Zeus assigned to curator %1", _x];
							_exitLoop = true;
						};
					}; 
					if (_exitLoop) exitWith {}; 
					
				} forEach _curatorList; 
			};
		};		
		
		// Find all curators and reverse list so to lessen chance of admin Zeus conflicts
		private _curatorList = allcurators;
		reverse _curatorList;
		
		// Check that Zeus has been initially assigned to player
		_curatorList call _checkIfValidCuratorSlot;
		
		// Ensure Zeus keeps slot, despite admin logging
		while {true} do {
			// Check that Zeus has been assigned to player
			_curatorList call _checkIfValidCuratorSlot;
			
			sleep 10.0;			
		};			
	};		
};


