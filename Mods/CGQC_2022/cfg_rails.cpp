// Woodland Scope - Rail settings
class asdg_OpticRail;
class asdg_OpticRail1913 : asdg_OpticRail
{
	linkProxy = "\A3\data_f\proxies\weapon_slots\TOP";
	displayName = "$STR_A3_CowsSlot0";
	class compatibleItems
	{
		cgqc_acc_M8541A_wood = 1;
	};
};
class rhs_rifle_gripod_slot;
class rhs_optics_debug : rhs_rifle_gripod_slot
{
	class compatibleItems
	{
		cgqc_acc_M8541A_wood = 1;
	};
};

class CowsSlot;
class CowsSlot_Rail : CowsSlot
{
	class compatibleItems
	{
		cgqc_acc_M8541A_wood = 1;
	};
};

// Woodland bipod: underbarrel slot
class asdg_SlotInfo;
class asdg_UnderSlot : asdg_SlotInfo
{
	class compatibleItems
	{
		cgqc_acc_bipod_wood = 1;
	};
};

// Woodland laser: front rail
class asdg_FrontSideRail : asdg_SlotInfo
{
	linkProxy = "\a3\data_f\proxies\weapon_slots\side";
	displayName = "$STR_A3_PointerSlot0";
	class compatibleItems
	{
		cgqc_acc_anpeq15_laser_wood = 1;
	};
};

class PointerSlot;
class PointerSlot_Rail : PointerSlot
{
	class compatibleItems
	{
		cgqc_acc_anpeq15_laser_wood = 1;
	};
};

// Woodland silencer: muzzle slot
class asdg_MuzzleSlot;
class asdg_MuzzleSlot_762 : asdg_MuzzleSlot
{
	class compatibleItems
	{
		cgqc_acc_silencer_wood = 1;
	};
};