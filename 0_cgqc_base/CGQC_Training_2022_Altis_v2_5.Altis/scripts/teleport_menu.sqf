_source = _this select 0;
_source addAction ["Teleport: Base Principale", "scripts\teleportation2.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Aéroport", "scripts\teleportation1.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Heliport", "scripts\teleportation4.sqf", [], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Sniping range", "scripts\teleportation5.sqf", [], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Shooting Range", "scripts\teleportation8.sqf", [], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: CQC Training", "scripts\teleportation6.sqf", [], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Medical Training", "scripts\teleportation7.sqf", [], 1, false, true, "", "_this distance _target < 3"];
Dostop _source;
