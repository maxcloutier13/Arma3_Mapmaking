class ItemCore;
class H_HelmetB: ItemCore
{
	class ItemInfo;
};


class HeadgearItem;

// Berets ----------------------------------------------------------------------
class H_Beret_blk;	//Vanilla beret without patch
class H_Beret_02;	//Vanilla beret with patch
class H_Beret_EAF_01_F; //LDF round patch beret
//CGQC Green beret
class cgqc_beret_green: H_Beret_EAF_01_F
{
	scope=2;
	author="silent1";
	displayName="Beret CGQC vert";		
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_beret_green.paa"};
};

class cgqc_beret_blue: H_Beret_EAF_01_F
{
	scope=2;
	author="silent1";
	displayName="Beret CGQC bleu";		
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_beret_blue.paa"};
};

// Cap with headphones
/*
class H_Cap_Headphones;
class cgqc_cap_green: H_Cap_Headphones
{
	scope=2;
	author="silent1";
	displayName="CGQC Casquette verte";
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_cap_green.paa"};
};
*/

class cgqc_cap_green: H_HelmetB
{
	author="silent1";
	_generalMacro="cgqc_cap_green";
	displayName="CGQC Casquette verte";
	picture="\A3\Characters_F\data\ui\icon_H_Cap_headphones_khk_CA.paa";
	model="\A3\Characters_F\common\capb_headphones.p3d";
	descriptionShort="$STR_A3_SP_NOARMOR";
	class ItemInfo: ItemInfo
	{
		mass=10;
		uniformModel="\A3\Characters_F\common\capb_headphones.p3d";
		modelSides[]={6};
		hiddenSelections[]=
		{
			"camo"
		};
		class HitpointsProtectionInfo
		{
			class Head
			{
				hitpointName="HitHead";
				armor=0;
				passThrough=1;
			};
		};
	};
	hiddenSelections[]=	{"camo"};
	hiddenSelectionsTextures[]= {"\CGQC\helmets\cgqc_cap_green.paa"};
};

//Test helmet ---------------------------------------------
class H_PilotHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_test: H_PilotHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Test Pilot Helmet";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_heli_test_co.paa"};
};
//Crew variant
class H_CrewHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_crew_test : H_CrewHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Test Crew Helmet";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_heli_test_co.paa"};
};

//Cloutier Samurai -------------------------------------------
class H_PilotHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_cloutier_samurai: H_PilotHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Cloutier Samurai";
	hiddenSelectionsTextures[]=
	{"\cgqc\helmets\cgqc_heli_Cloutier_Samurai_co.paa"};
};

class H_CrewHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_crew_cloutier_samurai : H_CrewHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Cloutier Samurai Full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_heli_Cloutier_Samurai_co.paa"};
};




