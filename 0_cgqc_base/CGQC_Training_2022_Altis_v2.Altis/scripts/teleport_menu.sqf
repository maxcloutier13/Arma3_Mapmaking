_source = _this select 0;
_source addAction ["Teleport: Base Principale", "scripts\teleport.sqf", [tele2], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Aéroport",  "scripts\teleport.sqf", [tele1], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Heliport", "scripts\teleport.sqf", [tele4], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Sniping range", "scripts\teleport.sqf", [tele5], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Weapons Range", "scripts\teleport.sqf", [tele_shooting], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: 9-hole Range", "scripts\teleport.sqf", [tele_practical], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: CQC Training", "scripts\teleport.sqf", [tele6], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Medical Training", "scripts\teleport.sqf", [tele7], 1, false, true, "", "_this distance _target < 3"];
Dostop _source;