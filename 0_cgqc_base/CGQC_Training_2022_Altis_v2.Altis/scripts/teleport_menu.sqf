_source = _this select 0;
_source addAction ["Teleport: Base Principale", "scripts\teleport.sqf", [tp_spawn], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Aéroport",  "scripts\teleport.sqf", [tp_airport], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Heliport", "scripts\teleport.sqf", [tp_heli], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: CAS Training", "scripts\teleport.sqf", [tp_cas], 1, false, true, "", "_this distance _target < 3"]; 
_source addAction ["Teleport: Vehicle circuit", "scripts\teleport.sqf", [tp_vic], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Sniping range", "scripts\teleport.sqf", [tp_snipe], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Weapons Range", "scripts\teleport.sqf", [tp_range], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: 9-hole Range", "scripts\teleport.sqf", [tp_9hole], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: CQC Training", "scripts\teleport.sqf", [tp_cqc], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Parachute training", "scripts\teleport.sqf", [tp_para], 1, false, true, "", "_this distance _target < 3"];
_source addAction ["Teleport: Medical Training", "scripts\teleport.sqf", [tp_med], 1, false, true, "", "_this distance _target < 3"];

Dostop _source;
