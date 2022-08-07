class B_Soldier_f;
class B_AssaultPack_rgr;

class CGQC_Soldat_Base : B_Soldier_f
{
	author = "silent1";
	faction = "CGQC";
	side = 1;
	displayName = "Soldat (Base)";
	uniformClass = "U_B_CombatUniform_mcam_vest";
	weapons[] = {"Rangefinder", "cgqc_gun_p99_wood", "Put", "Throw"};
	respawnWeapons[] = {"Rangefinder", "cgqc_gun_p99_wood", "Put", "Throw"};
	items[] = {
		"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine",
		"ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR"};
	respawnItems[] = {
		"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine",
		"ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR"};
	magazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	respawnMagazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_vanilla", "V_Rangemaster_belt", "None"};
	respawnLinkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_vanilla", "V_Rangemaster_belt", "None"};
	backpack = "CGQC_Soldat_Base_pack";
	editorPreview = "\CGQC\factions\cgqc_soldat_base.jpg";
};

class CGQC_Officer_Base : B_Soldier_f
{
	author = "silent1";
	faction = "CGQC";
	side = 1;
	displayName = "Officier (Base)";
	uniformClass = "U_B_CombatUniform_mcam_vest";
	weapons[] = {"Rangefinder", "cgqc_gun_p99_wood", "Put", "Throw"};
	respawnWeapons[] = {"Rangefinder", "cgqc_gun_p99_wood", "Put", "Throw"};
	items[] = {
		"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine",
		"ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR", "ACRE_PRC152"};
	respawnItems[] = {
		"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine",
		"ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR", "ACRE_PRC152"};
	magazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	respawnMagazines[] = {"16Rnd_9x21_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
	linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_cap_green", "V_Rangemaster_belt", "None"};
	respawnLinkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_cap_green", "V_Rangemaster_belt", "None"};
	backpack = "CGQC_Soldat_Base_pack";
	editorPreview = "\CGQC\factions\cgqc_soldat_base.jpg";
};

class CGQC_Soldat_Base_pack : B_AssaultPack_rgr
{
	scope = 1;
	author = "silent1";
	displayName = "CGQC Backpack magique";
	hiddenSelectionsTextures[] = {""};
	model = "\A3\weapons_f\empty";
	class TransportMagazines
	{
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
		class _xx_SmokeShell
		{
			count = 3;
			magazine = "SmokeShell";
		};
		class _xx_SmokeShellBlue
		{
			count = 3;
			magazine = "SmokeShellBlue";
		};
		class _xx_SmokeShellRed
		{
			count = 3;
			magazine = "SmokeShellRed";
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
	};
	class TransportWeapons
	{
	};
};