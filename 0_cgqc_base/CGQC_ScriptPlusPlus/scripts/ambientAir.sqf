cgqc_fnc_randomFlyby = {
    private _center = [4342.89,3817.93,0];
    private _start = _center getPos [1800,random 360];
    private _end = _start getPos [4000,_start getDir (_center getPos [random 500, random 360])];
    private _height = (random 300) + 150;
    private _aircraft = selectRandom [
        "O_Heli_Transport_04_bench_F",
        "O_Plane_CAS_02_dynamicLoadout_F"
    ];

    [_start,_end,_height,"NORMAL",_aircraft,EAST] call BIS_fnc_ambientFlyby;

    private _waitTime = 30 + random 900;
    [{[] call cgqc_fnc_randomFlyby}, [], _waitTime] call CBA_fnc_waitAndExecute;
};

[] call cgqc_fnc_randomFlyby;