// get all alive players in an array 
allPlayers = [];
{
	if (alive player) then {
		allPlayers = allPlayers - [_x];
		allPlayers pushBack _x;
	};
} forEach (allUnits - allPlayers);

/* Old attempt
	_type = (_this select 0);
	
// 1 = plane
	if (_type == 1) then {
		hint "Insertion: Wee! Plane ride!";
	} else {
		hint "Insertion: No way, jose";
	}
*/