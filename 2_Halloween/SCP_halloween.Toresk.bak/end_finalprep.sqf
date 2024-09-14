[] spawn {
	while {isDamageAllowed player} do {player allowDamage false;};
	playMusic "";
	playMusic ["SecretLaboratory_TheFinalFlashofExistence", 1];
};