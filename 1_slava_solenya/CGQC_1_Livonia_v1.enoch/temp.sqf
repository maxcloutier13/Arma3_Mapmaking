null = [this] spawn {
	_unit = (_this select 0);
	sleep 1;
	_unit action ['SwitchWeapon', _unit, _unit, 100];
};
this addAction ["------------------------", {
	hint "";
}];
this addAction [
	"- Music: Play", {
		["cgqc_music_play", []] call CBA_fnc_globalEvent;
	}
];
this addAction [
	"- Music: Stop", {
		["cgqc_music_stop", []] call CBA_fnc_globalEvent;
	}
];
this addAction ["-- Lights:Start presentation", {
	["cgqc_start_presentation", []] call CBA_fnc_globalEvent;
	hint "Briefing";
}];
this addAction ["-- Lights:Stop presentation", {
	["cgqc_stop_presentation", []] call CBA_fnc_globalEvent;
	hint "Au repos";
}];
this addAction ["--- Start boarding", {
	start_boarding = true;
	publicVariable "start_boarding";
	hint "Ramassez un parachute et dirigez vous vers la porte du fond";
}];
this addAction ["------------------------", {
	hint "";
}];
this addAction ["---- Insertion!", {
	phase_mission_started = true;
	publicVariable "phase_mission_started";
	["cgqc_phase_mission_started", []] call CBA_fnc_globalEvent;
	removeAllActions player;
}];