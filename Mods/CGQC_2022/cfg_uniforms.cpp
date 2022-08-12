class U_mas_can_B_CombatUniform_S_NTOG;
class U_I_pilotCoveralls;
class U_mas_can_B_CombatUniform_S_SWAT;

class cgqc_uniform_mk1 : U_mas_can_B_CombatUniform_S_NTOG
{
    author = "silent1";
    _generalMacro = "cgqc_uniform_mk1";
    displayName = "CGQC Uniforme mk1";
};

class cgqc_uniform_mk1_jetpilot : U_I_pilotCoveralls
{
    author = "silent1";
    _generalMacro = "cgqc_uniform_jetpilot";
    displayName = "CGQC Pilote de jet mk1";
};

class cgqc_uniform_mk1_helipilot : U_mas_can_B_CombatUniform_S_SWAT
{
    author = "silent1";
    _generalMacro = "cgqc_uniform_mk1_jetpilot";
    displayName = "CGQC Pilote Hélicoptère mk1";
};