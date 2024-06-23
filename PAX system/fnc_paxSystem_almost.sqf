// --- paxSystem ------------------------------------------------------------------------------------------------------------------
// Dynamic mission setup

// -- Init ------------------------------------------------------------------------------------------------------------------
cgqc_pax_mapAlive = true;
cgqc_pax_mapSize = worldSize;
cgqc_pax_playerPos = getPosATL player;
cgqc_pax_target_list = [];

// -- Scan map ------------------------------------------------------------------------------------------------------------------
cgqc_pax_locations_civ = [];
cgqc_pax_locations_mil = [];
cgqc_pax_locations_other = [];

cgqc_pax_locVillage = [];
cgqc_pax_locCity = [];
cgqc_pax_locCapital = [];
cgqc_pax_locLocal = [];
cgqc_pax_locCultural = [];
cgqc_pax_locCivildefense = [];
cgqc_pax_locStrategic = [];
cgqc_pax_locStrongpoint = [];
cgqc_pax_locSafetyzone = [];
cgqc_pax_locMarine = [];
cgqc_pax_locHistorical = [];
cgqc_pax_locHill = [];
cgqc_pax_locBorder = [];
cgqc_pax_locViewpoint = [];

{cgqc_pax_locVillage pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_civ pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameVillage"], worldSize];  
{cgqc_pax_locCity pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_civ pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCity"], worldSize];  
{cgqc_pax_locCapital pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_civ pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital"], worldSize];  
{cgqc_pax_locLocal pushBack _x; cgqc_pax_locations pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameLocal"], worldSize];  

{cgqc_pax_locCivildefense pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_mil pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["CivilDefense"], worldSize];  
{cgqc_pax_locStrategic pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_mil pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["Strategic"], worldSize];  
{cgqc_pax_locStrongpoint pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_mil pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["StrongpointArea"], worldSize];  
{cgqc_pax_locSafetyzone pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_mil pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["SafetyZone"], worldSize];  

{cgqc_pax_locMarine pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameMarine"], worldSize];  
{cgqc_pax_locCultural pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["CulturalProperty"], worldSize];  
{cgqc_pax_locHistorical pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["HistoricalSite"], worldSize];  

{cgqc_pax_locHill pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["Hill"], worldSize];  
{cgqc_pax_locBorder pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["BorderCrossing"], worldSize];
{cgqc_pax_locViewpoint pushBack _x; cgqc_pax_locations pushBack _x;cgqc_pax_locations_other pushBack _x;} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["ViewPoint"], worldSize];  

cgqc_pax_locations_civ_nbr = count cgqc_pax_locations_civ;
cgqc_pax_locations_mil_nbr = count cgqc_pax_locations_mil;
cgqc_pax_locations_other_nbr = count cgqc_pax_locations_other;

// -- Set player HQ  ------------------------------------------------------------------------------------------------------
cgqc_pax_hqPlayer = nearestLocation [position player, "NameCity"];

// Find empty position around target area 
//_searchArea = [_nearestCity_pos, 50, 100, 0, 0, 0, 0] call BIS_fnc_findSafePos;
//cgqc_orient_pos_free = _searchArea findEmptyPosition [1,100,"B_T_VTOL_01_armed_F"];

// Player HQ marker 
hq_markerTarget = createMarker ["cgqc_pax_hqPlayer_tgt", cgqc_pax_playerPos];
"cgqc_pax_hqPlayer_tgt" setMarkerType "mil_flag"; 
"cgqc_pax_hqPlayer_tgt" setMarkerText format["Player HQ:%1", text cgqc_pax_hqPlayer];
"cgqc_pax_hqPlayer_tgt" setMarkerColor "ColorBlue"; 
"cgqc_pax_hqPlayer_tgt" setMarkerSize [1.5, 1.5];

hq_markerZone = createMarker ["cgqc_pax_hqPlayer_zone", cgqc_pax_playerPos];
"cgqc_pax_hqPlayer_zone" setMarkerType "mil_flag"; 
"cgqc_pax_hqPlayer_zone" setMarkerShape "ELLIPSE";
"cgqc_pax_hqPlayer_zone" setMarkerText format["Player HQ:%1", text cgqc_pax_hqPlayer];
"cgqc_pax_hqPlayer_zone" setMarkerColor "ColorBlue";
"cgqc_pax_hqPlayer_zone" setMarkerSize [200, 200];
"cgqc_pax_hqPlayer_zone" setMarkerAlpha 0.2;

// Sort locations and find the far ones
_far_location = [];
_possible_locations = cgqc_pax_locations_civ + cgqc_pax_locations_mil;
distancesArray = [];
{
	locationPos = locationPosition _x;
	_distance = cgqc_pax_playerPos distance locationPos;
	distancesArray pushBack [_distance, _x];
} forEach _possible_locations;

// Sort the distancesArray based on the first element (distance)
distancesArray sort false;
cgqc_pax_locations_sorted = [];
{
	location = _x select 1;
	cgqc_pax_locations_sorted pushBack location;
} forEach distancesArray;

_farthest_locations = [
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 1),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 2),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 3),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 4),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 5),
	cgqc_pax_locations_sorted select (count cgqc_pax_locations_sorted - 6)
];

// Remove HQ from locations 
cgqc_pax_locations_sorted = cgqc_pax_locations_sorted - [cgqc_pax_hqPlayer];


// -- Set Opfor HQ ------------------------------------------------------------------------------------------------------------------
cgqc_pax_hqOpfor = selectRandom _farthest_locations;
cgqc_pax_hqOpfor_pos = getPos cgqc_pax_hqOpfor;
// Player HQ marker 
hq_opfor_markerTarget = createMarker ["cgqc_pax_hqOpfor_tgt", cgqc_pax_hqOpfor_pos];
"cgqc_pax_hqOpfor_tgt" setMarkerType "mil_flag"; 
"cgqc_pax_hqOpfor_tgt" setMarkerText format["Enemy HQ:%1", text cgqc_pax_hqPlayer];
"cgqc_pax_hqOpfor_tgt" setMarkerColor "ColorRed"; 
"cgqc_pax_hqOpfor_tgt" setMarkerSize [1.5, 1.5];

hq_opfor_markerZone = createMarker ["ccgqc_pax_hqOpfor_zone", cgqc_pax_hqOpfor_pos];
"ccgqc_pax_hqOpfor_zone" setMarkerShape "ELLIPSE";
"ccgqc_pax_hqOpfor_zone" setMarkerText format["Enemy HQ:%1", text cgqc_pax_hqPlayer];
"ccgqc_pax_hqOpfor_zone" setMarkerColor "ColorRed";
"ccgqc_pax_hqOpfor_zone" setMarkerSize [200, 200];
"ccgqc_pax_hqOpfor_zone" setMarkerAlpha 0.4;
// Remove HQ from locations 
cgqc_pax_locations_sorted = cgqc_pax_locations_sorted - [cgqc_pax_hqOpfor];

// -- Populate HQ ------------------------------------------------------------------------------------------------------------------
_patrols = [1,2,3];
{
	_patrolName = format ["cgqc_pax_patrol_%1", _x];
	_patrolName  = [ cgqc_pax_hqOpfor_pos, east, cgqc_pax_opfor_patrol] call BIS_fnc_spawnGroup;
	[_patrolName, cgqc_pax_hqOpfor_pos, 100] call BIS_fnc_taskPatrol;
	_patrolName setBehaviour "SAFE";
	// add all units to target list
	{
		cgqc_pax_target_list pushBack _x;
	} forEach units _patrolName;
	{
		_x enableDynamicSimulation true;
	} forEach units _patrolName;
}forEach _patrols;

_hunters = [1,2,3];
{
	_hunterName = format ["cgqc_pax_hunter_%1", _x];
	_randomPos = [cgqc_pax_hqOpfor_pos, 100, 300, 5, 0, 0, 0, [], []] call BIS_fnc_findSafePos;
	_hunterName = [ _randomPos, east, cgqc_pax_opfor_sniper] call BIS_fnc_spawnGroup;
	_hunterName setBehaviour "SAFE";
	[_hunterName, 500, 15, [], [], true, false, false] spawn lambs_wp_fnc_taskHunt;
	{
		cgqc_pax_target_list pushBack _x;
	} forEach units _hunterName
}forEach _hunters;

//Debug message
hint parseText format ["
	Locations: %1<br />
	Player HQ: %2<br />
	Village: %3<br />
	City: %4<br />
	Capital: %5<br />
	Local: %6<br />
	Cultural: %7<br />
	Defense: %8<br />
	Strategic: %9<br />
	Strongpoint: %10<br />
	Safety: %11<br />
	Marine: %12<br />
	Historical: %13<br />
	Hill: %14<br />
	BorderCrossing: %15<br />
	Viewpoint: %17<br />
	Civil: %18<br />
	Military: %19<br />
	Other: %20<br />
", count cgqc_pax_locations, text cgqc_pax_hqPlayer, count cgqc_pax_locVillage, count cgqc_pax_locCity, count cgqc_pax_locCapital, count cgqc_pax_locLocal, count cgqc_pax_locCultural, count cgqc_pax_locCivildefense, count cgqc_pax_locStrategic, count cgqc_pax_locStrongpoint, count cgqc_pax_locSafetyzone, count cgqc_pax_locMarine, count cgqc_pax_locHistorical, count cgqc_pax_locHill, count cgqc_pax_locBorder, count cgqc_pax_locViewpoint, count cgqc_pax_locations_civ, count cgqc_pax_locations_mil, count cgqc_pax_locations_other];

/*
---- Key point types ---------------------------------- 
Hill - name of hill (mountain) - small black italics and icon
BorderCrossing - red icon
VegetationBroadleaf - green icon for broadleaf forest, no name
VegetationFir - green icon for coniferous forest, no name
VegetationPalm - green icon for palm grove, no name
VegetationVineyard - green icon for vineyards, no name
NameMarine - name for bays, straits, capes, lakes etc., blue italics
NameCityCapital - big black name for main cities
NameCity - black names of common cities
NameVillage - smaller version of city name
NameLocal - local name, used for islands, natural features, special locations, brown italics
RockArea - icon of rocky area, same symbol as for single rock object used



----- Locations --------------------------------------
Area
BorderCrossing
CityCenter
CivilDefense
CulturalProperty
DangerousForces
Flag
FlatArea
FlatAreaCity
FlatAreaCitySmall
Hill
HistoricalSite
Invisible
Mount
Name
NameCity
NameCityCapital
NameLocal (will return names like Airport)
NameMarine
NameVillage
RockArea
SafetyZone
Strategic
StrongpointArea
VegetationBroadleaf
VegetationFir
VegetationPalm
VegetationVineyard
ViewPoint

---- Objects ----------------------------------
Tree 
 SmallTree 
 Bush 
 Building
 House 
 ForestBorder 
 ForestTriangle 
 ForestSquare 
 Church 
 Chapel
 Cross
 Rock 
 Bunker 
 Fortress 
 Fountain 
 View-Tower
 Lighthouse 
 Quay
 Fuelstation 
 Hospital 
 Fence
 Wall 
 Hide 
 BusStop 
 Road 
 Forest 
 Transmitter 
 Stack 
 Ruin 
 Tourism 
 Watertower 
 Track 
 MainRoad - MAIN ROAD
 Rocks 
 Power Lines 

*/