class H_mas_can_opscorn;
class rhsusf_cvc_green_ess;
class H_PilotHelmetFighter_B;

class cgqc_helmet_mk1 : H_mas_can_opscorn
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1";
    displayName = "CGQC Casque mk1";
    picture = "\mas_can_lite\ui\green_sf.paa";
    hiddenSelectionsTextures[] = {
        "\mas_can_lite\fast\data\vdo_opscore_green_co.paa",
        "\cgqc_2022\helmets\cgqc_helmet_mk1_nylon.paa",
        "\mas_can_lite\fast\data\ops_co.paa"};
    // Grad helmet compatibility
    grad_slingHelmet_allow = true;
};

class cgqc_helmet_mk1_medic : H_mas_can_opscorn
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1_medic";
    displayName = "CGQC Casque Medic mk1";
    picture = "\mas_can_lite\ui\green_sf.paa";
    hiddenSelectionsTextures[] = {
        "\mas_can_lite\fast\data\vdo_opscore_green_co.paa",
        "\cgqc_2022\helmets\cgqc_helmet_mk1_medic_nylon.paa",
        "\mas_can_lite\fast\data\ops_co.paa"};
    grad_slingHelmet_allow = true;
};

class cgqc_helmet_mk1_tank : rhsusf_cvc_green_ess
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1_tank";
    displayName = "CGQC Casque Tank mk1";
    grad_slingHelmet_allow = true;
};

class cgqc_helmet_mk1_jetpilot : H_PilotHelmetFighter_B
{
    author = "silent1";
    _generalMacro = "cgqc_helmet_mk1_jetpilot";
    displayName = "CGQC Casque Pilote de jet mk1";
    grad_slingHelmet_allow = true;
};
