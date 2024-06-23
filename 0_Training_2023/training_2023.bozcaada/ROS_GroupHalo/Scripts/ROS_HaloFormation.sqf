// ROS_HaloFormation by RickOShay
// Takes a group of 9 - AI and player units in a static ground circular formation
// around a center canopener object named: cntr
// then telports them 2km up - the units then close formation to a small circle.
// They then continue to fall until they deploy their chutes around 200m.
// Player chute will have trailing red white and blue smoke
// Credit me if used in a mission or derivative work and if placed on the Steam Workshop
// [] execvm "ROS_GroupHalo\scripts\ROS_HaloFormation.sqf";

[] spawn {

    hideObjectGlobal cntr;

    _aiUnits = [h_1,h_2,h_3,h_4,h_5,h_6,h_7,h_8];
    _allUnits = [h,h_1,h_2,h_3,h_4,h_5,h_6,h_7,h_8];

    _outerWPos = [];
    _innerWPos = [];

    _outerRpos = [[6.12012,9.38477,-0.838795],[-0.5,12.0508,-0.838795],[-8,9.30078,-0.838795],[-12.5,1.05078,-0.838795],[-10.5,-5.69922,-0.838795],[-3.75,-10.4492,-0.838795],[3.5,-10.1992,-0.838795],[9.5,-4.94922,-0.838795],[11,3.05078,-0.838795]];

    _innerRpos = [[0.774414,2.84375,-0.838795],[-1,2.55078,-0.838795],[-2.25,1.55078,-0.838795],[-2.75,-0.199219,-0.838795],[-2,-1.94922,-0.838795],[0,-2.44922,-0.838795],[1.75,-1.94922,-0.838795],[2.5,-0.449219,-0.838795],[2.25,1.30078,-0.838795]];

    // get inner and outer world positions
    {_relposO = _outerRpos select _foreachIndex; _outerWPos pushback (cntr modelToWorld _relposO)} foreach _allUnits;
    {_relposI = _innerRpos select _foreachIndex; _innerWPos pushback (cntr modelToWorld _relposI)} foreach _allUnits;
    {
       _x setpos (_outerWPos select _foreachIndex);
       _inv = name _x;
       [_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_SaveInventory;
       _x setdir (_x getdir cntr);
    } foreach _allUnits;

    //////////////////////////////////////////////////////////////////////

    // Linear unit movement fnc
    ROS_movetoPos = {
        params ["_unit", "_curRPos", "_finalRPos", "_aiUnits", "_allUnits"];
        if (!isplayer _unit) then {
           _unit enableSimulationGlobal false;
           _curX =_curRPos select 0;
           _curY =_curRPos select 1;
           _curZ =_curRPos select 2;
           _relDif = _finalRPos vectorDiff _curRPos;
           _steps = 80;
           incx = (_relDif select 0)/_steps;
           incy = (_relDif select 1)/_steps;
           incz = (_relDif select 2)/_steps;
           for "_i" from 0 to _steps do {
              _unit setdir (_unit getdir cntr);
              _unit attachTo [cntr, [_curX + (incx*_i), _curY + (incy*_i), _curZ + (incz*_i)]];
              sleep 0.015;
            };
            [_unit, cntr, true] call bis_fnc_attachtorelative;
            _unit enableSimulationGlobal true;
        };

        if (isPlayer _unit) then {
            sleep 1;
            detach cntr;
            _unit setdir (_unit getdir cntr);
            [_unit, cntr, true] call bis_fnc_attachtorelative;
            cntr enableSimulationGlobal false;
            _curX =_curRPos select 0;
            _curY =_curRPos select 1;
            _curZ =_curRPos select 2;
            _relDif = _finalRPos vectorDiff _curRPos;
            _steps = 150;
            incx = (_relDif select 0)/_steps;
            incy = (_relDif select 1)/_steps;
            incz = (_relDif select 2)/_steps;
            for "_i" from 0 to _steps do {
                _unit setdir (_unit getdir cntr);
                _unit attachTo [cntr, [_curX + (incx*_i), _curY + (incy*_i), _curZ + (incz*_i)]];
                sleep 0.001;
            };
            [_unit, cntr, true] call bis_fnc_attachtorelative;
            cntr enableSimulationGlobal true;
            {[_x, player, true] call bis_fnc_attachtorelative} foreach _allUnits;
            deleteVehicle cntr;
            detach player;
        };

        true
    };

    //////////////////////////////////////////////////////////////////////

    {
        removeBackpackGlobal _x;
        if (!isplayer _x) then {
            [_x, cntr, true] call bis_fnc_attachtorelative;
            _x disableAI "anim";
            _x switchmove "HaloFreeFall_non";
            _x setdir (_x getdir cntr);
        };
        _x addBackpackGlobal "BHZ_Para_UK_Pack";
        [_x] execvm "ROS_GroupHalo\scripts\ROS_ParaSmoke.sqf";
        _x allowDamage false;
    } foreach _allUnits;

    sleep 1;

    // Attach cntr to player
    [cntr, player, true] call bis_fnc_attachtorelative;
    player setdir (player getdir cntr);

    // Move units to altitude
    _pos = player modelToWorld [0,0,2000];
    player setposatl _pos;

    // move in circle formation
    {
        sleep 2 + random 0.5;
        _curRoffset = _outerRpos select _foreachIndex;
        _finalRoffset = _innerRpos select _foreachIndex;
        [_x, _curRoffset, _finalRoffset, _aiUnits, _allUnits] spawn ROS_movetoPos;
    } foreach _allUnits;

    waitUntil {getPosATLVisual player select 2 <400};

    [] spawn {
        waitUntil {getPosATLVisual player select 2 <240};
        detach player;
        player setdir (windDir);
        [player, ["openParachute", player]] remoteExec ["action", player];
    };

    {
        [_x] spawn {
            params ["_x"];
            if (!isPlayer _x) then {
                detach _x;
                _vel = velocity _x;
                _x setVelocity [(_vel select 0), (_vel select 1)-20, (_vel select 2)+20];
                removebackpack _x;
                waitUntil {getPosATLVisual _x select 2 <300};
                _x enableAI "anim";
                waitUntil {getPosATL _x select 2 <=270};
                _pos = getPosATLVisual _x;
                _chute = createVehicle ["NonSteerable_Parachute_F", _pos, [], 0, "fly"];
                _x moveInDriver _chute;
                waitUntil {isTouchingGround _x};
                _inv = name _x;
                [_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;
                _x allowDamage false;
                [_x] joinSilent player;
            };
        };
        sleep 0.3;
    } foreach _allUnits;

    waitUntil {isTouchingGround player};
    _inv = name player;
    [player, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;

};

