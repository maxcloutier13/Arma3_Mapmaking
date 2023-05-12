if (!isNil ("pat")) then {deleteVehicle pat;};
_group2=createGroup west;
'b_g_survivor_F' createUnit [[17449.416, 13126.346, 0], _group2, 'pat=this;dostop pat;'];
pat setVariable ["ace_medical_ai_lastFired", 9999999]; //Disable AI to self healing
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "LeftLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "RightLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "Body", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "Head", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "RightArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
[pat, selectRandom[0.3, 0.5, 0.7, 0.9], "LeftArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
hint 'Le patient est prêt';