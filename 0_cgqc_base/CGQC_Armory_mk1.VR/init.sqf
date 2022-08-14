// Event to run when player is done loading
// Shows intro screen with logo and stuff
[ "CBA_loadingScreenDone", {
	null = execVM "scripts\initialize_player.sqf";
} ] call CBA_fnc_addEventHandler;