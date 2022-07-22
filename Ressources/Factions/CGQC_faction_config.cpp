class cfgPatches
{
  class CGQC_CGQC
  {
    units[]={"CGQC_Soldat_Base"};
    weapons[]={"CGQC_hgun_P07_F"};
    requiredVersion=0.1;
    requiredAddons[]={"ace_medical_treatment","ace_hearing","ace_captives","ace_maptools","ace_attach","ace_trenches","ace_microdagr","ace_tagging","A3_Weapons_F","A3_Weapons_F_Pistols_P07","A3_Characters_F","CuratorOnly_Characters_F_BLUFOR"};
  };
};

class cfgFactionClasses
{
  class CGQC_CGQC
  {
    icon="";
    displayName="CGQC";
    side=1;
    priority=1;
  };
};


class cfgWeapons
{
  class hgun_P07_F;

  class CGQC_hgun_P07_F: hgun_P07_F
  {
    displayName="P99";
    scope=1;
    class LinkedItems
    {
    };
  };

};

class cfgVehicles
{
  class B_Soldier_F;
  class B_AssaultPack_rgr;

  class CGQC_Soldat_Base: B_Soldier_F
  {
    faction="CGQC_CGQC";
    side=1;
    displayName="Soldat Base";
    uniformClass="U_B_CombatUniform_mcam_vest";
    weapons[]={"Rangefinder","CGQC_hgun_P07_F","Put","Throw"};
    respawnWeapons[]={"Rangefinder","CGQC_hgun_P07_F","Put","Throw"};
    items[]={"ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_epinephrine","ACE_epinephrine","ACE_EarPlugs","ACE_morphine","ACE_morphine","ACE_splint","ACE_tourniquet","ACE_tourniquet","ACE_CableTie","ACE_CableTie","ACE_MapTools","ACE_IR_Strobe_Item","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV_500","ACE_EntrenchingTool","ACE_microDAGR","ACE_SpraypaintGreen","ACE_SpraypaintRed"};
    respawnItems[]={"ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_epinephrine","ACE_epinephrine","ACE_EarPlugs","ACE_morphine","ACE_morphine","ACE_splint","ACE_tourniquet","ACE_tourniquet","ACE_CableTie","ACE_CableTie","ACE_MapTools","ACE_IR_Strobe_Item","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV_500","ACE_EntrenchingTool","ACE_microDAGR","ACE_SpraypaintGreen","ACE_SpraypaintRed"};
    magazines[]={"16Rnd_9x21_Mag","16Rnd_9x21_Mag","Chemlight_green","ACE_Chemlight_HiRed","ACE_Chemlight_IR","SmokeShellPurple","SmokeShell","SmokeShell","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","B_IR_Grenade"};
    respawnMagazines[]={"16Rnd_9x21_Mag","16Rnd_9x21_Mag","Chemlight_green","ACE_Chemlight_HiRed","ACE_Chemlight_IR","SmokeShellPurple","SmokeShell","SmokeShell","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","B_IR_Grenade"};
    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemGPS","Rangefinder","H_Beret_02","V_Rangemaster_belt"};
    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemGPS","Rangefinder","H_Beret_02","V_Rangemaster_belt"};
    backpack="CGQC_Soldat_Base_pack";
  };


  class CGQC_Soldat_Base_pack: B_AssaultPack_rgr
  {
    scope=1;
    class TransportMagazines
    {
     class _xx_Chemlight_green {count=1;magazine="Chemlight_green";};
     class _xx_ACE_Chemlight_HiRed {count=1;magazine="ACE_Chemlight_HiRed";};
     class _xx_ACE_Chemlight_IR {count=1;magazine="ACE_Chemlight_IR";};
     class _xx_SmokeShellPurple {count=1;magazine="SmokeShellPurple";};
     class _xx_SmokeShell {count=2;magazine="SmokeShell";};
     class _xx_SmokeShellGreen {count=1;magazine="SmokeShellGreen";};
     class _xx_SmokeShellRed {count=1;magazine="SmokeShellRed";};
     class _xx_SmokeShellYellow {count=1;magazine="SmokeShellYellow";};
     class _xx_B_IR_Grenade {count=1;magazine="B_IR_Grenade";};
    };
    class TransportItems
    {
     class _xx_ACE_fieldDressing {count=10;name="ACE_fieldDressing";};
     class _xx_ACE_salineIV_250 {count=2;name="ACE_salineIV_250";};
     class _xx_ACE_salineIV_500 {count=2;name="ACE_salineIV_500";};
     class _xx_ACE_EntrenchingTool {count=1;name="ACE_EntrenchingTool";};
     class _xx_ACE_microDAGR {count=1;name="ACE_microDAGR";};
     class _xx_ACE_SpraypaintGreen {count=1;name="ACE_SpraypaintGreen";};
     class _xx_ACE_SpraypaintRed {count=1;name="ACE_SpraypaintRed";};
    };
    class TransportWeapons{};
  };

};

//////////////// Paste cfgGroups after this line //////////////// 
