// Pistol for default soldier
class hgun_P07_F;
class cgqc_gun_p99_wood : hgun_P07_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_p99_wood";
	baseWeapon = "cgqc_gun_p99_wood";
	displayName = "CGQC P99 Woodland";
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_p99_wood.paa"};
	picture = "\A3\Weapons_F_Exp\Pistols\P07\Data\UI\icon_hgun_P07_khk_F_X_CA.paa";
};

// Custom 417  ------------------------------------------------------------------------------
class arifle_SPAR_03_base_F;
// Tremblay
class cgqc_gun_spar17_tremblay : arifle_SPAR_03_base_F
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC HK417 Le Tremblay";
	picture = "\A3\Weapons_F_Exp\Rifles\SPAR_03\Data\UI\arifle_SPAR_03_blk_F_X_CA.paa";
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_spar17_tremblay_1.paa",	// spar3_01 - Guard+barrel
		"\CGQC\guns\cgqc_gun_spar17_tremblay_2.paa",	// spar3_02 - Receiver?
		"\CGQC\guns\cgqc_gun_spar17_wood_buttstock.paa" // spar1_01 - Buttstock
	};
};

// Canpat HK417
class cgqc_gun_spar17_canpat : arifle_SPAR_03_base_F
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC HK417 Canpat";
	picture = "\A3\Weapons_F_Exp\Rifles\SPAR_03\Data\UI\arifle_SPAR_03_blk_F_X_CA.paa";
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_spar17_canpat_1.paa",		  // spar3_01 - Guard+barrel
		"\CGQC\guns\cgqc_gun_spar17_canpat_2.paa",		  // spar3_02 - Receiver?
		"\CGQC\guns\cgqc_gun_spar17_canpat_buttstock.paa" // spar1_01 - Buttstock
	};
};

// Woodland HK417
class cgqc_gun_spar17_wood : arifle_SPAR_03_base_F
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC HK417 Woodland";
	picture = "\A3\Weapons_F_Exp\Rifles\SPAR_03\Data\UI\arifle_SPAR_03_blk_F_X_CA.paa";
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_spar17_wood_1.paa",		// spar3_01 - Guard+barrel
		"\CGQC\guns\cgqc_gun_spar17_wood_2.paa",		// spar3_02 - Receiver?
		"\CGQC\guns\cgqc_gun_spar17_wood_buttstock.paa" // spar1_01 - Buttstock
	};
};
