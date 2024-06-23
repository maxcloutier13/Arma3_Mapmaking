// Part of the ROS_GroupHalo system
// This is run locally on all clients via C130 init
// [this] execvm "ROS_GroupHalo\scripts\c130LightsandEngine.sqf";

params ["_plane"];

c130engineon = true;
_intensity =1;

// Add default light locally
lightR = "#lightpoint" createVehicleLocal position _plane;
lightR setLightDayLight true;
lightR setLightAmbient [0.2,0,0];
lightR setLightColor [1,0.1,0];
lightR lightAttachObject [_plane, [0,-3,3]];
_intensity = 3000;
lightR setLightIntensity _intensity;

sleep 1;

// Change light intensity locally based on TOD
[_plane, _intensity] spawn {
	params ["_plane", "_intensity"];

	while {true} do {
		_intensity = 3000;
		if (daytime > 18 && daytime <=18.5) then {_intensity = 500000};
		if (daytime > 18.5 && daytime <=19) then {_intensity = 150000};
		if (daytime > 19 && daytime <=19.5) then {_intensity = 50000};
		if (daytime > 19.5 && daytime <=20.4) then {_intensity = 5000};
		if (daytime > 4 && daytime <=5) then {_intensity = 5000};
		if (daytime > 5 && daytime <=5.5) then {_intensity = 150000};
		if (daytime > 5.5 && daytime <=6) then {_intensity = 500000};
		if (daytime > 6 && daytime <=7) then {_intensity = 900000};
		if (daytime > 7 && daytime <=8) then {_intensity = 2000000};
		if (daytime > 8 && daytime <=17) then {_intensity = 4000000};
		if (daytime > 17 && daytime <=17.5) then {_intensity = 2500000};
		if (daytime > 17.5 && daytime <=18) then {_intensity = 1500000};
		_inPlane = ((position _plane) nearObjects ["CAManBase", 10]) select {alive _x};
		if (count _inplane >0) then {
			lightR setLightIntensity _intensity;
		} else {
			lightR setLightIntensity 3000;
		};
		sleep 5;
	};
};

// Loop engine sound locally
[_plane] spawn {
	params ["_plane"];
	while {true} do {
		[_plane, player] say3D "extengine";
		sleep 29;
	};
};

