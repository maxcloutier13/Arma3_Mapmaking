class CfgPatches
{
	class ARES_MOD_CONFIG
	{
		units[]=
		{
			"ODST_Soldier_Ares"
		};
		weapons[]=
		{
			"nomad_heli_crew",
		};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"A3_Characters_F",
		};
	};
};
class CfgVehicles
{
};
class cfgWeapons
{
class ItemCore;
class ItemInfo;
class HeadgearItem;
class H_CrewHelmetHeli_B;

	class nomad_heli_crew : H_CrewHelmetHeli_B
	{
		author = "Nomad";
		displayName = "Nomad Helmet";
		hiddenSelectionsTextures[] = {"\Helmet\data\helmet\nomad_heli_crew.paa"};
	};
};
class cfgGlasses
{
};
