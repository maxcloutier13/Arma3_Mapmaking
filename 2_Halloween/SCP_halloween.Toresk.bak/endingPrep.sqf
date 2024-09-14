// Prpare for finale
[-1, {
		// Remove all player radios
	[player, "all"] call CGQC_fnc_removeRadios;
	// Give everyone 152
	(uniformContainer player) addItemCargoGlobal ["ACRE_PRC152", 1];
}] call CBA_fnc_globalExecute;