// ROS_Weathereport.sqf by Rickoshay
// Part of the ROS_GroupHalo system
// Credit if used in your mission please.

_WethDesc = "";
_AmbTemp = "";
if (overcast <=0.3) then {_WethDesc = "Clear skies";_AmbTemp = "Temp: Low 30 High 41 deg"};
if (overcast >0.3 && overcast <= 0.5) then {_WethDesc = "Partly cloudy";_AmbTemp = "Temp: Low 27 High 36 deg"};
if (overcast >0.5 && overcast <= 0.7) then {_WethDesc = "Cloudy with 50% chance of rain";_AmbTemp = "Temp: Low 24 High 31 deg"};
if (overcast >0.7 && overcast <=0.9) then {_WethDesc = "Cloudy with 70% chance of rain";_AmbTemp = "Temp: Low 22 High 27 deg"};
if (overcast >0.9) then {_WethDesc = "100% cloud cover with 90% chance of rain";_AmbTemp = "Temp: Low 15 High 25 deg"};
_windSpd = vectorMagnitude wind tofixed 1;

_wDir = windDir;
_az = "";
if (_wDir >=23 && _wDir <=67) then {_az = "(North East)"};
if (_wDir >=68 && _wDir <=112) then {_az = "(East)"};
if (_wDir >=113 && _wDir <=157) then {_az = "(South East)"};
if (_wDir >=158 && _wDir <=202) then {_az = "(South)"};
if (_wDir >=203 && _wDir <=247) then {_az = "(South West)"};
if (_wDir >=248 && _wDir <=292) then {_az = "(West)"};
if (_wDir >=293 && _wDir <=337) then {_az = "(North West)"};
if (_wDir >=338 or _wDir <=22) then {_az = "(North)"};

hint format ["WEATHER REPORT\nfor the\n%1 operational area:\n\n%2\n%3\n\nWind Direction: %4 deg %5\nWind Speed: %6 kph\nGusts: %7\n\nNOTE\nHigh gust value (>0.5) can result\nin erratic wind speed & heading", toupper worldName, _WethDesc, _AmbTemp, (windDir toFixed 0), _az, _windSpd, gusts tofixed 2];
