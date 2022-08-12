class B_Kitbag_rgr;
class cgqc_pack_mk1_magic;
class B_Parachute;
class Box_NATO_Equip_F;
class B_supplyCrate_F;

// Mk1 box
class cgqc_box_mk1_rolebox : Box_NATO_Equip_F
{
    author = "silent1";
    _generalMacro = "cgqc_box_mk1_rolebox";
    displayName = "CGQC MK1 Rolebox";
    hiddenSelectionsTextures[] = {"\CGQC_2022\containers\cgqc_box_mk1_rolebox_texture.paa",
                                  "\CGQC_2022\containers\cgqc_box_mk1_rolebox_label.paa"};
    editorPreview = "\A3\EditorPreviews_F_Exp\Data\CfgVehicles\Box_NATO_Equip_F.jpg";
    class EventHandlers
    {
        init = "_this execVM '\CGQC_2022\loadouts\cgqc_box_mk1.sqf'";
    };
    class SimpleObject
    {
        eden = 1;
        animate[] = {};
        hide[] = {};
        verticalOffset = 0.382;
        verticalOffsetWorld = 0;
        init = "''";
    };
    class TransportMagazines
    {
    };
    class TransportWeapons
    {
    };
    class TransportItems
    {
    };
};

// Original training map box
class cgqc_box_original : B_supplyCrate_F
{
    author = "silent1";
    _generalMacro = "cgqc_box_original";
    displayName = "CGQC SupplyBox Originale";
    hiddenSelectionsTextures[] = {"\CGQC_2022\containers\cgqc_box_originale.paa"};
    editorPreview = "\A3\EditorPreviews_F_Orange\Data\CfgVehicles\C_IDAP_supplyCrate_F.jpg";
    class EventHandlers
    {
        init = "_this execVM '\CGQC_2022\loadouts\cgqc_box_original.sqf'";
    };
    class SimpleObject
    {
        eden = 1;
        animate[] = {};
        hide[] = {};
        verticalOffset = 0.892;
        verticalOffsetWorld = 0;
        init = "''";
    };
    class TransportMagazines
    {
    };
    class TransportWeapons
    {
    };
    class TransportItems
    {
    };
};

// Basic Backpacks --------------------------------------------------------------------------------------
class cgqc_pack_mk1_kitbag : B_Kitbag_rgr
{
    scope = 2;
    author = "silent1";
    _generalMacro = "cgqc_pack_mk1_kitbag";
    maximumLoad = 320;
    mass = 20;
    displayName = "CGQC Kitbag mk1 Vert";
};

// mk1 Backpacks --------------------------------------------------------------------------------------
class CGQC_units_mk1_0_HQ_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
        class _xx_ItemcTab
        {
            count = 1;
            name = "ItemcTab";
        };
        class _xx_MRH_FoldedSatcomAntenna
        {
            count = 1;
            name = "MRH_FoldedSatcomAntenna";
        };
        class _xx_MRH_TacticalDisplay
        {
            count = 1;
            name = "MRH_TacticalDisplay";
        };
        class _xx_ACRE_PRC77
        {
            count = 1;
            name = "ACRE_PRC77";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_0_TeamLeader_Carbine_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 12;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_1Rnd_HE_Grenade_shell
        {
            count = 10;
            magazine = "1Rnd_HE_Grenade_shell";
        };
        class _xx_UGL_FlareRed_F
        {
            count = 3;
            magazine = "UGL_FlareRed_F";
        };
        class _xx_1Rnd_SmokeBlue_Grenade_shell
        {
            count = 3;
            magazine = "1Rnd_SmokeBlue_Grenade_shell";
        };
        class _xx_1Rnd_Smoke_Grenade_shell
        {
            count = 3;
            magazine = "1Rnd_Smoke_Grenade_shell";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_0_TeamLeader_CQB_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 12;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_1_Rifleman_Carbine_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 10;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_1_Rifleman_CQB_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 10;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_HandGrenade
        {
            count = 4;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_1_Medic_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 6;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_HandGrenade
        {
            count = 1;
            magazine = "HandGrenade";
        };
    };
    class TransportItems
    {
        class _xx_ACE_fieldDressing
        {
            count = 50;
            name = "ACE_fieldDressing";
        };
        class _xx_ACE_salineIV_500
        {
            count = 7;
            name = "ACE_salineIV_500";
        };
        class _xx_ACE_EntrenchingTool
        {
            count = 1;
            name = "ACE_EntrenchingTool";
        };
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
        class _xx_ACE_salineIV
        {
            count = 5;
            name = "ACE_salineIV";
        };
        class _xx_ACE_morphine
        {
            count = 20;
            name = "ACE_morphine";
        };
        class _xx_ACE_epinephrine
        {
            count = 20;
            name = "ACE_epinephrine";
        };
        class _xx_ACE_splint
        {
            count = 4;
            name = "ACE_splint";
        };
        class _xx_ACE_tourniquet
        {
            count = 4;
            name = "ACE_tourniquet";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_1_Engineer_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
            count = 2;
            magazine = "SmokeShell";
        };
        class _xx_SmokeShellBlue
        {
            count = 2;
            magazine = "SmokeShellBlue";
        };
        class _xx_SmokeShellRed
        {
            count = 2;
            magazine = "SmokeShellRed";
        };
        class _xx_B_IR_Grenade
        {
            count = 1;
            magazine = "B_IR_Grenade";
        };
        class _xx_rhsusf_m112_mag
        {
            count = 2;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 4;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_rhsusf_m112x4_mag
        {
            count = 1;
            magazine = "rhsusf_m112x4_mag";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
        };
        class _xx_rhsusf_mine_m14_mag
        {
            count = 4;
            magazine = "rhsusf_mine_m14_mag";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
        class _xx_ToolKit
        {
            count = 1;
            name = "ToolKit";
        };
        class _xx_ACE_DefusalKit
        {
            count = 1;
            name = "ACE_DefusalKit";
        };
        class _xx_ACE_M26_Clacker
        {
            count = 1;
            name = "ACE_M26_Clacker";
        };
        class _xx_MineDetector
        {
            count = 1;
            name = "MineDetector";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_2_LMG_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote
        {
            count = 4;
            magazine = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_2_HMG_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_Tier1_250Rnd_762x51_Belt_M993_AP
        {
            count = 2;
            magazine = "Tier1_250Rnd_762x51_Belt_M993_AP";
        };
        class _xx_HandGrenade
        {
            count = 3;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_2_Marksman_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_ACE_20Rnd_762x51_Mk319_Mod_0_Mag
        {
            count = 13;
            magazine = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
        };
        class _xx_HandGrenade
        {
            count = 3;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
        class _xx_ACE_ATragMX
        {
            count = 1;
            name = "ACE_ATragMX";
        };
        class _xx_ACE_Kestrel4500
        {
            count = 1;
            name = "ACE_Kestrel4500";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_2_Sniper_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_7Rnd_408_Mag
        {
            count = 14;
            magazine = "7Rnd_408_Mag";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_3_AT_MAAWS_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 5;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_MRAWS_HEAT_F
        {
            count = 2;
            magazine = "MRAWS_HEAT_F";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_3_AT_Javelin_pack : cgqc_pack_mk1_kitbag
{
    scope = 1;
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
        class _xx_rhsusf_m112_mag
        {
            count = 1;
            magazine = "rhsusf_m112_mag";
        };
        class _xx_jav_AT_mas_can
        {
            count = 2;
            magazine = "jav_AT_mas_can";
        };
        class _xx_rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull
        {
            count = 5;
            magazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull";
        };
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
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
        class _xx_G_mas_can_gasmask
        {
            count = 1;
            name = "G_mas_can_gasmask";
        };
    };
    class TransportWeapons
    {
    };
};
}
;

class CGQC_units_mk1_4_Tank_Driver_pack : cgqc_pack_mk1_magic
{
    scope = 1;
    class TransportMagazines
    {
        class _xx_HandGrenade
        {
            count = 2;
            magazine = "HandGrenade";
        };
    };
    class TransportItems
    {
        class _xx_ToolKit
        {
            count = 1;
            name = "ToolKit";
        };
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_4_Pilot_heli_pack : B_Parachute
{
    scope = 1;
    class TransportMagazines
    {
    };
    class TransportItems
    {
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_4_Pilot_Jet_pack : B_Parachute
{
    scope = 1;
    class TransportMagazines
    {
    };
    class TransportItems
    {
    };
    class TransportWeapons
    {
    };
};

class CGQC_units_mk1_4_crew_heli_pack : B_Parachute
{
    scope = 1;
    class TransportMagazines
    {
    };
    class TransportItems
    {
    };
    class TransportWeapons
    {
    };
};