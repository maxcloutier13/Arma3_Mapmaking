class CfgPatches
{
    class CGQC
    {
        units[] = {"CGQC_Soldat_Moderne"};
        weapons[] = {"CGQC_Tier1_Glock19_WAR"};
        requiredVersion = 0.1;
        requiredAddons[] = {"cgqc", "ace_medical_treatment", "ace_hearing", "ace_captives", "ace_maptools", "ace_attach", "ace_trenches", "ace_microdagr", "ace_tagging", "A3_Weapons_F", "A3_Weapons_F_Pistols_P07", "A3_Characters_F", "CuratorOnly_Characters_F_BLUFOR"};
    };
};
class cfgWeapons
{
    class Tier1_Glock19_WAR;

    class CGQC_Tier1_Glock19_WAR : Tier1_Glock19_WAR
    {
        displayName = "Glock19";
        scope = 1;
        class LinkedItems
        {
        };
    };
};

class cfgVehicles
{
    class B_Soldier_f;
    class B_AssaultPack_rgr;

    class CGQC_Soldat_Moderne : B_Soldier_f
    {
        author = "silent1";
        faction = "CGQC";
        side = 1;
        displayName = "Soldat (Moderne)";
        uniformClass = "U_mas_can_B_CombatUniform_S_NTOG";
        weapons[] = {"Rangefinder", "CGQC_Tier1_Glock19_WAR", "Put", "Throw"};
        respawnWeapons[] = {"Rangefinder", "CGQC_Tier1_Glock19_WAR", "Put", "Throw"};
        items[] = {"ItemAndroid", "ItemcTabHCam", "ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item"};
        respawnItems[] = {"ACRE_PRC343", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_epinephrine", "ACE_epinephrine", "ACE_EarPlugs", "ACE_morphine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_CableTie", "ACE_CableTie", "ACE_MapTools", "ACE_IR_Strobe_Item"};
        magazines[] = {"Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP"};
        respawnMagazines[] = {"Tier1_15Rnd_9x19_JHP", "Tier1_15Rnd_9x19_JHP"};
        linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "H_mas_can_Beret", "V_Rangemaster_belt", "None"};
        respawnLinkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "Rangefinder", "H_mas_can_Beret", "V_Rangemaster_belt", "None"};
        backpack = "CGQC_Soldat_Base_pack";
        editorPreview = "\CGQC_2022\factions\CGQC_2022\cgqc_soldat_moderne.jpg";
    };
};
