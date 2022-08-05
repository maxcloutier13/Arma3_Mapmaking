if (hasInterface) then {
	this addAction ["Advanced sniping mode->ON", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "scripts\max_dynamic_range.sqf";
	}, [], 10, true, true];
	this addAction ["Advanced sniping mode->OFF", {
		titleText ["Advanced mode on", "BLACK FADED", 5];
		titleFadeOut 2;
		nul=execVM "scripts\max_dynamic_range_off.sqf";
	}, [], 10, true, true];
};

hintSilent format["RemV: %1 m/s\nDistance: %2 m\nScore: %3/5\n\n---- Moyenne ----\nScore: %4/5\nPrécision: %5/100\nScore: %6/100",

	hintSilent format["RemV: %1 m/s\nDistance: %2 m\nTarget score: %3/5\n\n---- Average ----\nTarget score: %4/5\nAccuracy: %5/100\nScore: %6/100",
	round(_velocity call BIS_fnc_magnitude), round(_distance * 10) / 10, _targetScore, round(TrainingCourse_AverageTargetScore * 100) / 100, round(_accuracy * 10000) / 100, round(_score * 100) / 100];
} else {
	hintSilent format["RemV: %1 m/s\nDistance: %2 m\n\n---- Average ----\nAccuracy: %3/100\nScore: %4/100",
	round(_velocity call BIS_fnc_magnitude), round(_distance * 10) / 10, round(_accuracy * 10000) / 100, round(_score * 100) / 100];
};