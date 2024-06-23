if (isServer) then {
	call CGQC_fnc_trainingTime;
};
0 fadeSound 0;
waitUntil { time > 1 };
_text = "Quartier Général CGQC - Sa'hatra";
cgqc_establishing = [cgqc_establishing_target, _text, 10, 30, 110, 1, [], 0, true] spawn BIS_fnc_establishingShot;
klpq_musicRadio_enable = true;
sleep 20;
enableSaving [false,false];