/*
	Made by Rockhount - HandleAttachTo Script v1.2 (SP/MP & HC compatible)
	Errors will be written into the rpt and starts with "HandleSimpleAttachTo Error:"
	Call:
	["Land_WaterBarrel_F","C_Van_01_transport_F",90,[[0,-1,0.04],[0,-2.5,0.04]]] execVM "HandleSimpleAttachTo.sqf";
	"Land_WaterBarrel_F" = Classname of the object
	"C_Van_01_transport_F" = Classname of the vehicle
	90 = AttachTo-Direction of the object relative to the vehicle
	[[0,-1,0.04],[0,-2.5,0.04]] = AttachTo-Positions where the object can be placed (Any number of positions possible)
	
	If you look at an object with the defined class, then an option will appear after a few seconds. With "Load" the object
	will get attached into the next available defined postion of the nearest vehicle with the defined class within 50 meters.
	With "Unload" the object will get detached and put left next the vehicle. If there is no space place for the object, then
	a chat message with "No space for unloading." will appear. If all Positions of the nearest vehicle are full, then a chat
	message with "Vehicle is already fully loaded." will appear. If there is no vehicle within 50 meters, then a chat message
	with "No suitable vehicle nearby." will appear. You should use this script only once per vehicle class.
	-------------------------------------------------------------------------------------------------------------------------
	Gemacht von Rockhount - HandleAttachTo Skript v1.2 (SP/MP & HC Kompatibel)
	Fehler werden in die RPT geschrieben und starten mit "HandleSimpleAttachTo Error:"
	Aufruf:
	["Land_WaterBarrel_F","C_Van_01_transport_F",90,[[0,-1,0.04],[0,-2.5,0.04]]] execVM "HandleSimpleAttachTo.sqf";
	"Land_WaterBarrel_F" = Klassenname des zu ladenen Objekts
	"C_Van_01_transport_F" = Klassenname des zu beladenen Fahrzeuges
	90 = AttachTo-Richtung des Objekts in relation zum Fahrzeug
	[[0,-1,0.04],[0,-2.5,0.04]] = AttachTo-Positionen, wo die Objekte plaziert werden können (Beliebige Anzahl an Positionen möglich)
	
	Es erscheint nach wenigen Sekunden eine Option, wenn man ein Objekt mit der definierten Klasse ansieht. Mit "Load" wird das Objekt
	in die nächstmögliche Position, die definiert wurde, attached, wenn ein Fahrzeug mit der definierten Klasse	innerhalb von 50 Metern
	vorhanden ist. Mit "Unload" wird das Objekt detached und links vom Fahrzeug hingelegt. Wenn dort kein Platz ist, dann erscheint die
	Chat-Meldung "No space for unloading". Wenn alle Positionen des nächststehenden Fahrzeuges bereits besetzt sind, dann erscheint die
	Chat-Meldung "Vehicle is already fully loaded". Wenn kein Fahrzeug mit der definierten Klasse innerhalb von 50 Metern zu finden ist,
	dann erscheint die Chat-Meldung "No suitable vehicle nearby". Man sollte diesen Skript nur einmal pro Fahrzeugklassennamen benutzen.
*/
private _Local_var_Exit = false;
private _Local_var_ContainerType = if ((count _this > 0) && {typeName (_this select 0) == "STRING"}) then {_this select 0} else {_Local_var_Exit = true;false};
private _Local_var_TruckType = if ((count _this > 1) && {typeName (_this select 1) == "STRING"}) then {_this select 1} else {_Local_var_Exit = true;false};
private _Local_var_ContainerDirOffset = if ((count _this > 2) && {typeName (_this select 2) == "SCALAR"}) then {_this select 2} else {_Local_var_Exit = true;false};
private _Local_var_ContainerPositions = if ((count _this > 3) && {typeName (_this select 3) == "ARRAY"}) then {_this select 3} else {_Local_var_Exit = true;false};
if (_Local_var_Exit) exitWith
{
	diag_log "HandleSimpleAttachTo Error: Wrong parameter";
};
if (hasinterface) then
{
	while {true} do
	{
		Private ["_Local_var_AID"];
		if ((!isNull Player) && {alive Player}) then
		{
			waitUntil{sleep 2;(vehicle Player == Player) && {!isNull cursorObject} && {(typeOf cursorObject) == _Local_var_ContainerType} && {(cursorObject distance Player) < 15}};
			if (isNull (attachedTo cursorObject)) then
			{
				_Local_var_AID = Player addAction ["Load", 
				{
					if (((typeOf cursorObject) == ((_this select 3) select 0)) && {isNull (attachedTo cursorObject)}) then
					{
						private _Local_var_TruckType =  (_this select 3) select 1;
						private _Local_var_Truck = nearestObject [getPos Player, _Local_var_TruckType];
						if (!isNull _Local_var_Truck) then
						{
							private _Local_var_ContainerDirOffset =  (_this select 3) select 2;
							private _Local_var_ContainerPositions =  (_this select 3) select 3;
							private _Local_var_ContainerLoadIndex = [];
							private _Local_var_LoadedPositionsCount = count _Local_var_ContainerPositions;
							_Local_var_ContainerLoadIndex resize _Local_var_LoadedPositionsCount;
							{_Local_var_ContainerLoadIndex set [_forEachIndex, false]} forEach _Local_var_ContainerLoadIndex;
							private _Local_var_Container = cursorObject;
							private _Local_var_LoadedPositions = _Local_var_Truck getVariable ["OccupiedContainerSpaces", _Local_var_ContainerLoadIndex];
							private _Local_var_ContainerLoaded = false;
							for [{_i = 0}, {_i < _Local_var_LoadedPositionsCount}, {_i = _i + 1}] do
							{
								if (!(_Local_var_LoadedPositions select _i)) exitWith
								{
									_Local_var_Container attachTo [_Local_var_Truck,_Local_var_ContainerPositions select _i];
									[_Local_var_Container, _Local_var_ContainerDirOffset] remoteExec ["setDir", _Local_var_Container, false];
									_Local_var_Container setVariable ["ContainerLoadIndex", _i, true];
									_Local_var_LoadedPositions set [_i, true];
									_Local_var_ContainerLoaded = true;
								};
							};
							if (_Local_var_ContainerLoaded) then
							{
								_Local_var_Truck setVariable ["OccupiedContainerSpaces", _Local_var_LoadedPositions, true];
							}
							else
							{
								systemChat "Vehicle is already fully loaded.";
							};
						}
						else
						{
							systemChat "No suitable vehicle nearby.";
						};
					};
				}, [_Local_var_ContainerType, _Local_var_TruckType, _Local_var_ContainerDirOffset, _Local_var_ContainerPositions]];
			}
			else
			{
				_Local_var_AID = Player addAction ["Unload",
				{
					private _Local_var_ContainerType = (_this select 3) select 0;
					if (((typeOf cursorObject) == _Local_var_ContainerType) && {!isNull (attachedTo cursorObject)}) then
					{
						private _Local_var_ContainerDirOffset =  (_this select 3) select 1;
						private _Local_var_Container = cursorObject;
						private _Local_var_Truck = attachedTo _Local_var_Container;
						private _Local_var_ContainerLoadIndex = _Local_var_Container getVariable ["ContainerLoadIndex", -1];
						private _Local_var_LoadedPositions = _Local_var_Truck getVariable "OccupiedContainerSpaces";
						if ((!isNull _Local_var_Truck) && {_Local_var_ContainerLoadIndex > -1}) then
						{
							private _Local_var_EmptyContainerPos = (_Local_var_Container getRelPos [sizeOf _Local_var_ContainerType, 270 - _Local_var_ContainerDirOffset]) findEmptyPosition [0, 30, _Local_var_ContainerType];
							if (count _Local_var_EmptyContainerPos == 0) then
							{
								systemChat "No space for unloading.";
							}
							else
							{
								detach _Local_var_Container;
								_Local_var_Container setPosATL _Local_var_EmptyContainerPos;
								_Local_var_LoadedPositions set [_Local_var_ContainerLoadIndex, false];
								_Local_var_Truck setVariable ["OccupiedContainerSpaces", _Local_var_LoadedPositions, true];
								_Local_var_Container setVariable ["ContainerLoadIndex", -1, true];
							};
						};
					};
				},  [_Local_var_ContainerType, _Local_var_ContainerDirOffset]];
			};
			waitUntil{sleep 2;(vehicle Player != Player) || {isNull cursorObject} || {(typeOf cursorObject) != _Local_var_ContainerType} || {(cursorObject distance Player) > 15}};
			Player removeAction _Local_var_AID;
		}
		else
		{
			sleep 10;
		};
	};
};