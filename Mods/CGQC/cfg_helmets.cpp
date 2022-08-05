class ItemCore;
class H_HelmetB : ItemCore
{
	class ItemInfo;
};

class HeadgearItem;

// Berets ----------------------------------------------------------------------
class H_Beret_blk;		// Vanilla beret without patch
class H_Beret_02;		// Vanilla beret with patch
class H_Beret_EAF_01_F; // LDF round patch beret
// CGQC Green beret
class cgqc_beret_green : H_Beret_EAF_01_F
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Beret vert";
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_beret_green.paa"};
};

class cgqc_beret_blue : H_Beret_EAF_01_F
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Beret bleu";
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_beret_blue.paa"};
};

class cgqc_cap_green : H_HelmetB
{
	author = "silent1";
	_generalMacro = "cgqc_cap_green";
	displayName = "CGQC Casquette verte";
	picture = "\A3\Characters_F\data\ui\icon_H_Cap_headphones_khk_CA.paa";
	model = "\A3\Characters_F\common\capb_headphones.p3d";
	descriptionShort = "$STR_A3_SP_NOARMOR";
	class ItemInfo : ItemInfo
	{
		mass = 10;
		uniformModel = "\A3\Characters_F\common\capb_headphones.p3d";
		modelSides[] = {6};
		hiddenSelections[] =
			{
				"camo"};
		class HitpointsProtectionInfo
		{
			class Head
			{
				hitpointName = "HitHead";
				armor = 0;
				passThrough = 1;
			};
		};
	};
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\CGQC\helmets\cgqc_cap_green.paa"};
};

// Helicopter/Crew helmets -----------------------------------------------------------------------------------------------
class H_PilotHelmetHeli_B;
class H_CrewHelmetHeli_B;
// Cloutier / Samurai -----------------------------------------------------
class cgqc_helmet_cloutier_samurai : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Cloutier Samurai";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cloutier.paa"};
};
class cgqc_helmet_crew_cloutier_samurai : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Cloutier Samurai Full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cloutier.paa"};
};

// CGQC Airforce black -----------------------------------------------------
class cgqc_helmet_cgqc_black : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Noir";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_black.paa"};
};
class cgqc_helmet_crew_cgqc_black : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Noir full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_black.paa"};
};

// CGQC Airforce Green -----------------------------------------------------
class cgqc_helmet_cgqc_green : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Vert";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_green.paa"};
};
class cgqc_helmet_crew_cgqc_green : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Vert full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_green.paa"};
};

// CGQC Airforce woodland -----------------------------------------------------
class cgqc_helmet_cgqc_wood : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Woodland";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_wood.paa"};
};
class cgqc_helmet_crew_cgqc_wood : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Heli Woodland full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_cgqc_wood.paa"};
};

// Villeneuve - stock -----------------------------------------------------
class cgqc_helmet_villeneuve : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Villeneuve Noir";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_villeneuve.paa"};
};
class cgqc_helmet_crew_villeneuve : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Villeneuve Noir Full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_villeneuve.paa"};
};

// Audi - stock -----------------------------------------------------
class cgqc_helmet_audi : H_PilotHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Audi Noir";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_audi.paa"};
};
class cgqc_helmet_crew_audi : H_CrewHelmetHeli_B
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC Audi Noir Full";
	hiddenSelectionsTextures[] = {"\cgqc\helmets\cgqc_helmet_audi.paa"};
};
