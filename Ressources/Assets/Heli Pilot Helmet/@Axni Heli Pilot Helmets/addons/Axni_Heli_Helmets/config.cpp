#include "BIS_AddonInfo.hpp"
class CfgPatches
{
	class Axni_Heli_Helmets
	{
		units[]={};
		weapons[]={};
		requiredVersion=1;
		requiredAddons[]={};
		author="Axni";
		version="1";
	};
};
class CfgFactionClasses
{
	class Heli_Club_A
	{
		displayName="Heli Club";
		priority=1;
		side=1;
	};
	class Heli_Club_B
	{
		displayName="Heli Club";
		priority=1;
		side=2;
	};
	class Heli_Club_C
	{
		displayName="Heli Club";
		priority=1;
		side=3;
	};
};
class CfgWeapons
{
	class ItemCore;
	class H_HelmetB: ItemCore
	{};
	class H_PilotHelmetHeli_B: H_HelmetB
	{};	
		class Axni_Helmet_AAF_D: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli AAF Desert";
		picture="\Axni_Heli_Helmets\ui\helmet_aaf_d.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_aaf_d.paa"
		};
	};
		class Axni_Helmet_AAN: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli AAN";
		picture="\Axni_Heli_Helmets\ui\helmet_aan.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_aan.paa"
		};
	};		
	class Axni_Helmet_BMI: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli BMI";
		picture="\Axni_Heli_Helmets\ui\helmet_bmi.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_bmi.paa"
		};
	};
	class Axni_Helmet_BW: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli BW";
		picture="\Axni_Heli_Helmets\ui\helmet_bw.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_bw.paa"
		};
	};
	class Axni_Helmet_DRF: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli weiß";
		picture="\Axni_Heli_Helmets\ui\helmet_drf.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_drf.paa"
		};
	};
	class Axni_Helmet_SAR: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli SAR";
		picture="\Axni_Heli_Helmets\ui\helmet_sar.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_sar.paa"
		};
	};
	class Axni_Helmet_UN: H_PilotHelmetHeli_B
	{
		scope=2;
		author="Axni";
		displayName="Pilotenhelm Heli UN";
		picture="\Axni_Heli_Helmets\ui\helmet_un.paa";
		hiddenSelectionsTextures[]=
		{
			"\Axni_Heli_Helmets\data\textures\helmet_un.paa"
		};
	};
};