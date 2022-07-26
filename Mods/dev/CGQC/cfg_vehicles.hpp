class B_Soldier_f;
class B_AssaultPack_rgr;

class CGQC_Soldat_Base : B_Soldier_f
{
	author = "silent1";
	faction = "CGQC";
	side = 1;
	displayName = "Soldat (Base)";
	uniformClass = "U_B_CombatUniform_mcam_vest";
	weapons[] = {"Rangefinder", "CGQC_pistol_p99", "Put", "Throw"};
	respawnWeapons[] = {"Rangefinder", "CGQC_pistol_p99", "Put", "Throw"};
	items[] = {"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item"};
	respawnItems[] = {"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item"};
	magazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	respawnMagazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_blue", "V_Rangemaster_belt", "None"};
	respawnLinkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_blue", "V_Rangemaster_belt", "None"};
	backpack = "CGQC_Soldat_Base_pack";
	editorPreview = "\CGQC\factions\cgqc_soldat_base.jpg";
};

class CGQC_Soldat_Base_pack : B_AssaultPack_rgr
{
	scope = 1;
	class TransportMagazines
	{
		class _xx_Chemlight_green
		{
			count = 1;
			magazine = "Chemlight_green";
		};
		class _xx_ACE_Chemlight_HiRed
		{
			count = 1;
			magazine = "ACE_Chemlight_HiRed";
		};
		class _xx_ACE_Chemlight_IR
		{
			count = 1;
			magazine = "ACE_Chemlight_IR";
		};
		class _xx_SmokeShellPurple
		{
			count = 1;
			magazine = "SmokeShellPurple";
		};
		class _xx_SmokeShell
		{
			count = 2;
			magazine = "SmokeShell";
		};
		class _xx_SmokeShellGreen
		{
			count = 1;
			magazine = "SmokeShellGreen";
		};
		class _xx_SmokeShellRed
		{
			count = 1;
			magazine = "SmokeShellRed";
		};
		class _xx_SmokeShellYellow
		{
			count = 1;
			magazine = "SmokeShellYellow";
		};
		class _xx_B_IR_Grenade
		{
			count = 1;
			magazine = "B_IR_Grenade";
		};
	};
	class TransportItems
	{
		class _xx_ACE_fieldDressing
		{
			count = 10;
			name = "ACE_fieldDressing";
		};
		class _xx_ACE_salineIV_250
		{
			count = 2;
			name = "ACE_salineIV_250";
		};
		class _xx_ACE_salineIV_500
		{
			count = 2;
			name = "ACE_salineIV_500";
		};
		class _xx_ACE_EntrenchingTool
		{
			count = 1;
			name = "ACE_EntrenchingTool";
		};
		class _xx_ACE_microDAGR
		{
			count = 1;
			name = "ACE_microDAGR";
		};
	};
	class TransportWeapons
	{
	};
};