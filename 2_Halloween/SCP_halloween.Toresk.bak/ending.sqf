/*
// Ending script
[] spawn {
	// Everyone invincible
	// start music
	[-1, {[] execVM "end_finalprep.sqf"}, "TEST"] call CBA_fnc_globalExecute;

	cgqc_victims = [];
	{
		if (_x isNotEqualTo player) then {
			cgqc_victims pushBack (name _x);
		};
	} forEach allPlayers;

	// couple gravity strikes
	// TTS - beam laser
	// Scifi atmos incinerator
	// Virus bomb

	[-1, {
		player setUnconscious true;
		//disableUserInput true;
		//titleCut ["", "BLACK FADED", 0];
		[] execVM "end_credits.sqf";
	}] call CBA_fnc_globalExecute;


	sleep 10;

	[0, {
		endMission "END1";
	}] call CBA_fnc_globalExecute;
};
*/