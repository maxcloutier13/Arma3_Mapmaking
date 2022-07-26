//Pistol for default soldier
class hgun_P07_F;
class CGQC_pistol_P99 : hgun_P07_F
{
	displayName = "P99";
	scope = 1;
	class LinkedItems
	{
	};
};

//Custom 417 - Tremblay
class arifle_SPAR_03_base_F;
class cgqc_gun_spar17_tremblay: arifle_SPAR_03_base_F
{
	scope=2;
	author="silent1";
	displayName="CGQC SPAR-17 Tremblay";
	picture="\A3\Weapons_F_Exp\Rifles\SPAR_03\Data\UI\arifle_SPAR_03_blk_F_X_CA.paa";
	hiddenSelectionsTextures[]=	{
		"\CGQC\guns\cgqc_gun_spar17_tremblay_1.paa", //spar3_01 - Guard+barrel
		"\CGQC\guns\cgqc_gun_spar17_tremblay_2.paa", //spar3_02 - Receiver?
		"\CGQC\guns\cgqc_gun_spar17_tremblay_0.paa" //spar1_01 - Buttstock
		};
};

class cgqc_gun_spar17_tremblay_75: arifle_SPAR_03_base_F
{
	scope=2;
	author="silent1";
	displayName="CGQC SPAR-17 Tremblay Brighter";
	picture="\A3\Weapons_F_Exp\Rifles\SPAR_03\Data\UI\arifle_SPAR_03_blk_F_X_CA.paa";
	hiddenSelectionsTextures[]=	{
		"\CGQC\guns\cgqc_gun_spar17_tremblay_75_1.paa", //spar3_01 - Guard+barrel
		"\CGQC\guns\cgqc_gun_spar17_tremblay_75_2.paa", //spar3_02 - Receiver?
		"\CGQC\guns\cgqc_gun_spar17_tremblay_0.paa" //spar1_01 - Buttstock
		};
};





