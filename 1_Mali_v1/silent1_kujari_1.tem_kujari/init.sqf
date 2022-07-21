["cgqc_music_play", {
	while { true } do {
		playing_song = qg_radio say3D "abierto";
		sleep 239;
	};
}] call CBA_fnc_addEventHandler;

["cgqc_music_stop", {
	deleteVehicle playing_song;
}] call CBA_fnc_addEventHandler;

// ------------------------------------------------------
// CGQC Legacy init
// ------------------------------------------------------
// -------------------------------------------------------------------------------------------------------------------------------------------------

enableSentences false;
CHVD_allowNoGrass = true;

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

// ------------------------------------------------------
// CGQC Legacy triggers
// ------------------------------------------------------

// -------------------------------------------------------------------------------------------------------------------------------------------------
/*
	private _var = missionNamespace getVariable "rearm_trg1";
	private _area = [9.27, 9.648, 0, true];
	private _condition = "this";
	private _activation = "{
		[_x] execVM 'scripts\rearm.sqf'
	} foreach thislist;";
	private _desactivation = "";
	private _interval = 5;
	_trigger1 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";
	
	private _var = missionNamespace getVariable "rearm_trg2";
	private _area = [4.941, 7.53, 61.59, true];
	private _condition = "this";
	private _activation = "{
		[_x] execVM 'scripts\rearmGround.sqf'
	} foreach thislist;";
	private _desactivation = "";
	private _interval = 5;
	_trigger2 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";
	
	private _var = missionNamespace getVariable "hq_trg";
	private _area = [30.615, 21.415, 0, true, 5];
	private _condition = "this && {
		player in thisList
	}";
	private _activation = "{
		[_x] execVM 'scripts\HQ_no_fire.sqf'
	} foreach thislist;";
	private _desactivation = "thisTrigger setTriggerInterval 200;";
	private _interval = 0;
	_trigger3 = [_var, _area, _condition, _activation, _desactivation, _interval] execVM "scripts\my_trigger.sqf";
// -------------------------------------------------------------------------------------------------------------------------------------------------
*/