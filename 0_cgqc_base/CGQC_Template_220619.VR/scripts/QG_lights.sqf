 // off: 0 = [0.95] execVM "lights.sqf";
// on: 0 = [0] execVM "lights.sqf";
_types = ["Land_LampShabby_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // Gets position of marker
    _lamps = getMarkerPos "QG_marker_lights" nearObjects [_types select _i, 40];
    sleep 1;
    {_x setDamage _onoff} forEach _lamps;
};


