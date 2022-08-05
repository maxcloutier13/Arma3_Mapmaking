class B_Soldier_f;
class B_AssaultPack_rgr;

class CGQC_Soldat_Moderne : B_Soldier_f
{
	author = "silent1";
	faction = "CGQC";
	side = 1;
	displayName = "Soldat (Moderne)";
	uniformClass = "U_mas_can_B_CombatUniform_S_NTOG";
	weapons[] = {"Rangefinder", "cgqc_gun_glock19_wood", "Put", "Throw"};
	respawnWeapons[] = {"Rangefinder", "cgqc_gun_glock19_wood", "Put", "Throw"};
	items[] = {
		"ItemAndroid", "ItemcTabHCam", "ACRE_PRC343",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint",
		"ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR"};
	respawnItems[] = {
		"ItemAndroid", "ItemcTabHCam", "ACRE_PRC343",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing",
		"ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint",
		"ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools",
		"ACE_IR_Strobe_Item", "ACE_microDAGR"};
	magazines[] = {"Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP"};
	respawnMagazines[] = {"Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP"};
	linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_green", "V_Rangemaster_belt", "None"};
	respawnLinkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "cgqc_beret_green", "V_Rangemaster_belt", "None"};
	backpack = "CGQC_Soldat_Base_pack";
	editorPreview = "\CGQC_2022\factions\cgqc_soldat_moderne.jpg";
};