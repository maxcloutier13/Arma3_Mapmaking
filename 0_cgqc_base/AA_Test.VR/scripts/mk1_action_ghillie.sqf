if (hasInterface) then {
	_choice = _this select 0;
	_ghillie = "";
	_to_ghillie = 0;

	disableUserInput true;

	switch (_choice)
	do
	{
		case "arid":
		{
			_ghillie = "U_B_FullGhillie_ard";
			hintSilent "Ghillie: Arid";
			_to_ghillie = 1;
		};
		case "sarid":
		{
			_ghillie = "U_B_FullGhillie_sard";
			hintSilent "Ghillie: Semi-Arid";
			_to_ghillie = 1;
		};
		case "lush":
		{
			_ghillie = "U_B_FullGhillie_lsh";
			hintSilent "Ghillie: Lush";
			_to_ghillie = 1;
		};
		case "jungle":
		{
			_ghillie = "U_B_T_FullGhillie_tna_F";
			hintSilent "Ghillie: Jungle";
			_to_ghillie = 1;
		};
		case "uniform":
		{
			hintSilent "Ghillie: Back to Uniform";
			_to_ghillie = 2;
		};
		default
		{
			hintSilent "woops";
			_to_ghillie = 0;
		};
	};
	//hintSilent format ["ToGhillie = %1", _to_ghillie];
	//sleep 5;
	switch (_to_ghillie)
	do
	{
		case 1: // Change to ghillie
		{
			// Save old uniform 
			ghillie_uniform = uniform player;
			// Save items
			_uniform_items = uniformItems player;
			// Animation 
			player playMove "AinvPknlMstpSnonWnonDnon_medic4";
			sleep 6;
			// switch to ghillie 
			player forceAddUniform _ghillie;
			// Add items back 
			{
				player addItemToUniform _x
			} forEach _uniform_items;

			ghillie_isOn = 1;
		};
		case 2:// Change back to uniform
		{
			// Save items
			_uniform_items = uniformItems player;
			// Animation 
			player playMove "AinvPknlMstpSnonWnonDnon_medic4";
			sleep 6;
			// switch to uniform 
			player forceAddUniform ghillie_uniform;
			// Add items back 
			{
				player addItemToUniform _x
			} forEach _uniform_items;
			
			ghillie_isOn = 0;
		};
		default
		{
			hintSilent "woops";
		};
	};

	sleep 1;
	disableUserInput false;
};