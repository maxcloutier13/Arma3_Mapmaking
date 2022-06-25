private ["_text"];

[] spawn {
	sleep 2;
	// Black screen 
	cutText ["", "BLACK FADED", 999];
	// Kill sound 
	0.1 fadeSound 0;
	0.1 fadeMusic 0;
	// set waypoint
	_wp = insertion_plane_group addWaypoint [getPos insertion_waypoint, 0];
	sleep 7;
	// move plane position 
	insertion_plane setPos (getPos insertion_spawn);
	// Gives it a nudge 
	insertion_plane setVelocity [(vectorDir insertion_plane select 0), (vectorDir insertion_plane select 1)*300, (vectorDir insertion_plane select 2)];
	insertion_plane flyInHeight 1000;
	// Creates a waypoint 
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";

	// Fade in the sound
	5 fadeSound 1;
	5 fadeMusic 1;

	// Message 
	_text = ("<t size='1' >... quelques heures plus tard...</t>");
	[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
	sleep 6;

	// max not sure this is needed.
	titleText ["", "PLAIN"];
	titleFadeOut 2;

	// Wake up with blur
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	titleCut ["", "BLACK IN", 4];
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 2;

	// Infotext en bas à droide
	sleep 10;
	[str ("Quelque part..."), str("en Ukraine"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
	sleep 20;
};