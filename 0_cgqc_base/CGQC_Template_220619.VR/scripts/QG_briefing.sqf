//Turn off the lamps
_types = ["Land_LampShabby_F"];

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // Gets position of marker
    _lamps = getMarkerPos "QG_marker_lights" nearObjects [_types select _i, 40];
    sleep 1;
    {_x setDamage 0.95} forEach _lamps;
};