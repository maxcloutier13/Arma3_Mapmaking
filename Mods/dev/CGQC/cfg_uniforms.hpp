class ItemCore;
class InventoryItem_Base_F;
class UniformItem;
class UniformItem: InventoryItem_Base_F
{
    type=801;
};

class Uniform_Base: ItemCore
{
    scope=0;
    allowedSlots[]={901};
    class ItemInfo: UniformItem
    {
        uniformModel="-";
        uniformClass="B_Soldier_F";
        containerClass="Supply0";
        mass=0;
    };
};

class cgqc_uniform_instructeur: Uniform_Base
{
    scope=2;
    author="silen1";
    displayName="CGQC Casual";
    picture="\A3\characters_f\data\ui\icon_U_C_miller_ca.paa";
    model="\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
    hiddenSelections[]=	{"camo"};
    hiddenSelectionsTextures[]=	{"cgqc_uniform_instructeur.paa"};
    class ItemInfo: UniformItem
    {
        uniformModel="-";
        uniformClass="B_RangeMaster_F";
        containerClass="Supply20";
        mass=40;
    };
};