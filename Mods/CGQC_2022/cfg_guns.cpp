class Tier1_Glock19_WAR_TB;
class rhs_weap_m72a7;
class rhs_weap_m4a1_blockII;
class rhs_weap_m4a1_blockII_M203;
class rhs_weap_mk18;
class Tier1_MK46_Mod1_Savit;
class Tier1_MK48_Mod0;
class cgqc_gun_spar17_wood;
class srifle_DMR_02_F;
class launch_MRAWS_green_F;
class arifle_mas_can_mp7_F;
class rhs_weap_mk18_m320;
class launch_mas_can_javelin_F;
class srifle_LRR_F;

// Pistol.
class cgqc_gun_glock19_wood : Tier1_Glock19_WAR_TB
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_glock19_wood";
	baseWeapon = "cgqc_gun_glock19_wood";
	displayName = "CGQC Glock19 Woodland";
	/*
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_p99_wood.paa"};
	*/
};

// Law
class CGQC_launcher_law_wood : rhs_weap_m72a7
{
	scope = 2;
	author = "silent1";
	_generalMacro = "CGQC_launcher_law_wood";
	baseWeapon = "CGQC_launcher_law_wood";
	displayName = "CGQC m72a7 LAW Woodland";
};

// mk1 setup -----------------------------------------------------------------
class cgqc_mk1_weap_hq_m4a1 : rhs_weap_m4a1_blockII
{
	displayName = "M4A1 Block II";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M600V_Black";
		};
	};
};

class CGQC_cgqc_gun_glock19_wood : cgqc_gun_glock19_wood
{
	displayName = "CGQC Glock19 Woodland";
	scope = 1;
	class LinkedItems
	{
	};
};

class cgqc_mk1_weap_TL_m4a1 : rhs_weap_m4a1_blockII_M203
{
	displayName = "M4A1 Block II (M203)";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_Razor_Gen2_16_Geissele_Docter";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M600V_Black";
		};
	};
};

class cgqc_mk1_weap_rifleman_m4a1 : rhs_weap_m4a1_blockII
{
	displayName = "M4A1 Block II";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M300C_Black_FL";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "rhsusf_acc_grip2";
		};
	};
};

class cgqc_mk1_weap_rifleman_mk18 : rhs_weap_mk18
{
	displayName = "Mk 18 Mod 1";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_Mk18_NGAL_M300C_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "rhsusf_acc_grip2";
		};
	};
};

class cgqc_mk1_weap_lmg_mk46 : Tier1_MK46_Mod1_Savit
{
	displayName = "Mk 46 Mod 1 (Savit)";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_Mk46Mod1_LA5_M600V_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "Tier1_SAW_Bipod_DD";
		};
	};
};

class cgqc_mk1_weap_hmg_mk48 : Tier1_MK48_Mod0
{
	displayName = "Mk 48 Mod 0";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_SOCOM762MG_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_Mk48Mod0_LA5_M600V_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "Tier1_SAW_Bipod_2_KAC";
		};
	};
};

class cgqc_mk1_weap_marksman_417 : cgqc_gun_spar17_wood
{
	displayName = "CGQC HK417 Woodland";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "cgqc_acc_silencer_wood";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "optic_AMS";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "cgqc_acc_anpeq15_laser_wood";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "cgqc_acc_bipod_wood";
		};
	};
};

class cgqc_mk1_weap_sniper_m200 : srifle_LRR_F
{
	displayName = "M200 Intervention";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "rhsusf_acc_nxs_5522x56_md_sun";
		};
	};
};

class cgqc_mk1_weap_sniper_noreen : srifle_DMR_02_F
{
	displayName = "Noreen " Bad News " ULR (Black)";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "muzzle_snds_338_black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "optic_lrps";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "rhsusf_acc_anpeq15_bk";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "bipod_01_F_blk";
		};
	};
};

class cgqc_mk1_weap_engineer_m4a1 : rhs_weap_m4a1_blockII
{
	displayName = "M4A1 Block II";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M300C_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "rhsusf_acc_grip2";
		};
	};
};

class cgqc_mk1_weap_medic_m4a1 : rhs_weap_m4a1_blockII
{
	displayName = "M4A1 Block II";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_Razor_Gen2_16_Geissele_Docter";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M300C_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "rhsusf_acc_grip2";
		};
	};
};

class cgqc_mk1_weap_AT_MAAWS : launch_MRAWS_green_F
{
	displayName = "MAAWS Mk4 Mod 1 (Green)";
	scope = 1;
	class LinkedItems
	{
	};
};

class cgqc_mk1_weap_crew_mp7 : arifle_mas_can_mp7_F
{
	displayName = "HK MP7(CAN-SOF)";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "optic_ACO_grn";
		};
	};
};

class cgqc_mk1_weap_TL_mk18 : rhs_weap_mk18_m320
{
	displayName = "Mk 18 Mod 1 (M320)";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_Eotech551_L3_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_M4BII_NGAL_M600V_Black";
		};
	};
};

class cgqc_mk1_weap_AT_m4a1 : rhs_weap_m4a1_blockII
{
	displayName = "M4A1 Block II";
	scope = 1;
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_KAC_556_QDC_CQB_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_EXPS3_0_3xMag_Black_Up";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "Tier1_Mk18_NGAL_M300C_Black";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "rhsusf_acc_grip2";
		};
	};
};

class cgqc_mk1_weap_AT_Javelin : launch_mas_can_javelin_F
{
	displayName = "FGM-148 Javelin(CAN-SOF)";
	scope = 1;
	class LinkedItems
	{
	};
};
