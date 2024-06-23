0 fadeSound 0;
_text = "Quartier Général CGQC - Altis";
cgqc_establishing = [cgqc_establishing_target, _text, 10, 30, 110, 1, [], 0, true] spawn BIS_fnc_establishingShot;
waitUntil { scriptDone cgqc_establishing };
enableSaving [false,false];