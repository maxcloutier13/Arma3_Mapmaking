// Alright
// set array of possible positions 
// Pick a random position -> spawn target 

hostile_marker_class  = "SignAd_SponsorS_Vrana_F";

// Remove any corpses
{deleteVehicle _x} forEach allDead inArea trg_cqb_1;

// Remove any leftover units
{if(!isPlayer _x) then {deleteVehicle _x;}} forEach allUnitsinArea trg_cqb_1;

// Spawn Enemy Soldiers
_hostile_count = 0;
{
	// Randomize this position - 70% chance to spawn
	if(floor random 10 >= 3) then 
	{
		// Create Group for unit & set behavior
		_unit_group = createGroup [east, true];
		_unit_group setBehaviour "SAFE";

		// Spawn unit, set rotation, and set standing
		_unit = _unit_group createUnit [hostile_class, getPos _x, [], 0, "CAN_COLLIDE"];
		_unit setDir getDir _x;
		_unit setUnitPos "UP";

		// Remove grenades
		_unit removeMagazines "HandGrenade";
		_unit removeMagazines "MiniGrenade";

		// Count
		_hostile_count = _hostile_count + 1;

		// Add Event Handlers
		_unit addMPEventHandler ["mpkilled", {Null = [_this select 1, _this select 0] execVM "scripts\hostile_killed.sqf";}]; 
		_unit addEventHandler ["HitPart", {[_this select 0] execVM "scripts\hostile_hit_part.sqf";}];
	}

} forEach nearestObjects [player, [hostile_marker_class], 1000];
