class ItemCore;
class H_HelmetB: ItemCore{};

// Custom beret ----------------------------------------------------------------------
class H_Beret_blk;	//Vanilla beret without patch
class H_Beret_02;	//Vanilla beret with patch
class H_Beret_EAF_01_F; //LDF round patch beret

//CGQC Green beret
class cgqc_beret_green: H_Beret_EAF_01_F
{
	scope=2;
	author="silent1";
	displayName="Beret CGQC vert";		
	hiddenSelectionsTextures[]=
	{
		"\CGQC\helmets\cgqc_beret_green.paa"
	};
};

class cgqc_beret_blue: H_Beret_EAF_01_F
{
	scope=2;
	author="silent1";
	displayName="Beret CGQC bleu";		
	hiddenSelectionsTextures[]=
	{
		"\CGQC\helmets\cgqc_beret_blue.paa"
	};
};

//Test helmet ---------------------------------------------
class H_PilotHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_test: H_PilotHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Test Pilot Helmet";
	hiddenSelectionsTextures[]=
	{
		"\cgqc\helmets\cgqc_heli_test_co.paa"
	};
};
//Crew variant
class H_CrewHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_crew_test : H_CrewHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Test Crew Helmet";
	hiddenSelectionsTextures[] = {
		"\cgqc\helmets\cgqc_heli_test_co.paa"
	};
};

//Cloutier Samurai -------------------------------------------
class H_PilotHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_cloutier_1: H_PilotHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Cloutier Samurai";
	hiddenSelectionsTextures[]=
	{
		"\cgqc\helmets\cgqc_heli_Cloutier_Samurai_co.paa"
	};
};

class H_CrewHelmetHeli_B: H_HelmetB{};
class cgqc_helmet_crew_cloutier_1 : H_CrewHelmetHeli_B
{
	scope=2;
	author="silent1";
	displayName="CGQC Cloutier Samurai Full";
	hiddenSelectionsTextures[] = {
		"\cgqc\helmets\cgqc_heli_Cloutier_Samurai_co.paa"
	};
};




