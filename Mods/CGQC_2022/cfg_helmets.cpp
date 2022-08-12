class H_mas_can_opscorn;
class rhsusf_cvc_green_ess;

class cgqc_helmet_mk1 : H_mas_can_opscorn
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1";
    displayName = "CGQC Casque mk1";
    picture = "\mas_can_lite\ui\green_sf.paa";
    hiddenSelectionsTextures[] = {
        "\mas_can_lite\fast\data\vdo_opscore_green_co.paa",
        "\cgqc\helmets\velcro_cgqc.paa",
        "\mas_can_lite\fast\data\ops_co.paa"};
};

class cgqc_helmet_mk1_medic : H_mas_can_opscorn
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1_medic";
    displayName = "CGQC Ops-Core (Medic Vert)";
    picture = "\mas_can_lite\ui\green_sf.paa";
    hiddenSelectionsTextures[] = {
        "\mas_can_lite\fast\data\vdo_opscore_green_co.paa",
        "\cgqc\helmets\velcro_medic.paa",
        "\mas_can_lite\fast\data\ops_co.paa"};
};

class cgqc_helmet_mk1_tank : rhsusf_cvc_green_ess
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1_tank";
    displayName = "CGQC Casque Tank mk1";
};
