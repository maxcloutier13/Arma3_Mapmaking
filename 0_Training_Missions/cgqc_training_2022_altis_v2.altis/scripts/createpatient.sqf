_arg = _this select 0;

_ll = [0];
_rl = [0];
_body = [0];
_head = [0];
_la = [0];
_ra = [0];
med_skip = 0;

if (!isNil ("pat1")) then {deleteVehicle pat1;};
_group1=createGroup west;
'b_g_survivor_F' createUnit [[17393.2, 13152, 0], _group1, 'pat1=this; dostop pat1;'];
pat1 setVariable ["ace_medical_ai_lastFired", 9999999]; //Disable AI to self healing

switch (_arg) do {
	case 0: { //Delete
		if (!isNil ("pat1")) then {deleteVehicle pat1;};
		med_skip = 1;
	};
	case 1: { //Léger
		_ll = [0, 0.3, 0.5];
		_rl = [0, 0.3, 0.5];
		_body = [0.1, 0.3];
		//_head = [0.1, 0.3];
		_la = [0, 0.3, 0.5];
		_ra = [0, 0.3, 0.5];
	};
	case 2: { //Medium
		_ll = [0, 0.5, 0.6, 0.7];
		_rl = [0.5, 0.6, 0.7];
		_body = [0.1, 0.3, 0.5];
		_head = [0.1, 0.3, 0.5];
		_la = [0, 0.3, 0.5, 0.6, 0.7];
		_ra = [0.3, 0.5, 0.6, 0.7];
	};
	case 3: { //Heavy
		_ll = [0.7, 0.9];
		_rl = [0, 0.7, 0.9];
		_body = [0.7, 0.9];
		_head = [0.7, 0.9];
		_la = [0, 0.7, 0.9];
		_ra = [0.7, 0.9];
	};
	default {
		hint "createpatient.sqf fail";
	};
};

if (med_skip == 0) then {
	[pat1, selectRandom _ll, "LeftLeg", selectrandom ["stab", "bullet", "grenade", "falling"]] call ace_medical_fnc_addDamageToUnit;
	[pat1, selectRandom _rl, "RightLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
	[pat1, selectRandom _body, "Body", selectrandom ["stab", "bullet", "grenade"]] call ace_medical_fnc_addDamageToUnit;
	[pat1, selectRandom _head, "Head", selectrandom ["stab", "bullet", "grenade"]] call ace_medical_fnc_addDamageToUnit;
	[pat1, selectRandom _ra, "RightArm", selectrandom ["stab", "bullet", "grenade"]] call ace_medical_fnc_addDamageToUnit;
	[pat1, selectRandom _la, "LeftArm", selectrandom ["stab", "bullet", "grenade"]] call ace_medical_fnc_addDamageToUnit;
	hint 'Le patient est prêt!';
	sleep 5;
	hintSilent "";
	while {alive pat1 && med_skip == 0} do {
		if (pat1 call ace_medical_status_fnc_isInStableCondition) then{
			titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#00FF22'>Patient stabilisé!</t>", "PLAIN", 0, true, true];
			sleep 5;
			titleText ["", "PLAIN"];
			//deleteVehicle pat1;
		};
		sleep 5.0;
	};
	if (!alive pat1 && med_skip == 0) then {
		titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#FF2200'>Le patient est mort...</t>", "PLAIN", 0, true, true];
		sleep 5;
		titleText ["", "PLAIN"];
		deleteVehicle pat1;
	};
};


