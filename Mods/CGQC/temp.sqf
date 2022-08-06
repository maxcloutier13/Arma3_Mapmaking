// Old green cap
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

// Beret fucked
