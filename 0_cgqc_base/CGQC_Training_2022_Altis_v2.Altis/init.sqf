CHVD_allowNoGrass = true;

// Load ACRE settings 
[] spawn compile preprocessFile "scripts\set_radios.sqf";

// Event to run when player is done loading
// Shows intro screen with logo and stuff
[ "CBA_loadingScreenDone", {
	null = execVM "scripts\initialize_player.sqf";
} ] call CBA_fnc_addEventHandler;

// Only run on clients, excluding HCs
[] spawn {
	// Delay until the server time has sync'd
	waitUntil {
		time > 5
	};
	// for JIP, wait until the main screen loads
	waitUntil {
		!isNull (findDisplay 46)
	};
	// Check if player name contains the word "Zeus"
	if (["zeus", format["%1", player]] call BIS_fnc_inString) then {
		_checkIfValidCuratorSlot = {
			private _curatorList = _this;

			// Check that Zeus has been assigned to player
			if (isNull (getAssignedCuratorLogic player)) then {
				private _exitLoop = false;
				{
					// find an unassigned Zeus slot and assign it to the player
					if (isNull (getAssignedCuratorUnit _x)) then {
						[player, _x] remoteExecCall ["assignCurator", 2];
						sleep 2.0;
						// Check if a valid Zeus slot
						if (isNull (getAssignedCuratorLogic player)) then {
							// Broken Zeus slot, so clear and repeat
							_x remoteExecCall ["unassignCurator", 2];
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

		// find all curators and reverse list so to lessen chance of admin Zeus conflicts
		private _curatorList = allCurators;
		reverse _curatorList;

		// Check that Zeus has been initially assigned to player
		_curatorList call _checkIfValidCuratorSlot;

		// Ensure Zeus keeps slot, despite admin logging
		while { true } do {
			// Check that Zeus has been assigned to player
			_curatorList call _checkIfValidCuratorSlot;

			sleep 10.0;
		};
	};
};

// Rearm triggers
private _var = missionNamespace getVariable "rearm_heli_1";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger1 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_heli_2";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger2 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_flying_1";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger2 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_heli_3";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger1 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_heli_4";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger2 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_heli_5";
private _area = [6.8, 6.8, 0.00131226, true];
private _condition = "this";
private _activation = "{
	[_x] execVM 'scripts\rearm.sqf'
} forEach thislist;
";
private _desactivation = "";
private _interval = 5;
_trigger2 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";