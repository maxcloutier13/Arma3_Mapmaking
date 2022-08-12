class Tier1_Glock19_WAR_TB;
class rhs_weap_m72a7;
class rhs_weap_m4a1_blockII;
class rhs_weap_m4a1_blockII_M203;
class rhs_weap_mk18;
class Tier1_MK46_Mod1_Savit;
class Tier1_MK48_Mod0;
class cgqc_gun_hk417_wood;
class launch_MRAWS_green_F;
class arifle_mas_can_mp7_F;
class rhs_weap_mk18_m320;
class launch_mas_can_javelin_F;
class srifle_LRR_F;
class arifle_SPAR_03_blk_F;
class Rangefinder;
class Laserdesignator_03;

// Pistol.
class cgqc_gun_glock19_wood : Tier1_Glock19_WAR_TB
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_glock19_wood";
	baseWeapon = "cgqc_gun_glock19_wood";
	displayName = "CGQC Glock19";
	/*
	hiddenSelectionsTextures[] = {
		"\CGQC\guns\cgqc_gun_p99_wood.paa"};
	*/
};

// Law
class cgqc_gun_law_wood : rhs_weap_m72a7
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_law_wood";
	baseWeapon = "cgqc_gun_law_wood";
	displayName = "CGQC m72a7 LAW";
	// hiddenSelectionsTextures[] = {"\CGQC_2022\guns\cgqc_gun_law_wood.paa"};
};

// Items -----------------------------------------------------------------------
class cgqc_item_rangefinder : Rangefinder
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_item_rangefinder";
	baseWeapon = "cgqc_item_rangefinder";
	displayName = "CGQC Rangefinder";
};

class cgqc_item_laserdesignator : Laserdesignator_03
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_item_laserdesignator";
	baseWeapon = "cgqc_item_laserdesignator";
	displayName = "CGQC Laser Designator";
};

// Basic guns -----------------------------------------------------------------------------------
class cgqc_gun_mk1_m4a1blkII : rhs_weap_m4a1_blockII
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_m4a1blkII";
	baseWeapon = "cgqc_gun_mk1_m4a1blkII";
	displayName = "CGQC m4a1 Block II";
	// hiddenSelectionsTextures[] = {"\CGQC\guns\cgqc_gun_law_wood.paa"};
};

class cgqc_gun_mk1_m4a1blkII_gl : rhs_weap_m4a1_blockII_M203
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_m4a1blkII_gl";
	baseWeapon = "cgqc_gun_mk1_m4a1blkII_gl";
	displayName = "CGQC m4a1 Block II m203";
	// hiddenSelectionsTextures[] = {"\CGQC\guns\cgqc_gun_law_wood.paa"};
};

class cgqc_gun_mk1_mk18 : rhs_weap_mk18
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_mk18";
	baseWeapon = "cgqc_gun_mk1_mk18";
	displayName = "CGQC mk18";
	// hiddenSelectionsTextures[] = {"\CGQC\guns\cgqc_gun_law_wood.paa"};
};

class cgqc_gun_mk1_hk417 : arifle_SPAR_03_blk_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_hk417";
	baseWeapon = "cgqc_gun_mk1_hk417";
	displayName = "CGQC hk417";
	// hiddenSelectionsTextures[] = {"\CGQC\guns\cgqc_gun_law_wood.paa"};
	class LinkedItems
	{
		class LinkedItemsMuzzle
		{
			slot = "MuzzleSlot";
			item = "Tier1_SandmanS_Black";
		};
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "Tier1_Razor_Gen3_110_Geissele_Docter";
		};
		class LinkedItemsAcc
		{
			slot = "PointerSlot";
			item = "rhsusf_acc_anpeq15_bk_light";
		};
		class LinkedItemsUnder
		{
			slot = "UnderBarrelSlot";
			item = "bipod_01_F_blk";
		};
	};
};

class cgqc_gun_mk1_mk46 : Tier1_MK46_Mod1_Savit
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_mk46";
	baseWeapon = "cgqc_gun_mk1_mk46";
	displayName = "CGQC mk46";
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

class cgqc_gun_mk1_mk48 : Tier1_MK48_Mod0
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_mk48";
	baseWeapon = "cgqc_gun_mk1_mk48";
	displayName = "CGQC mk48";
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

class cgqc_gun_mk1_MAAWS : launch_MRAWS_green_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_MAAWS";
	baseWeapon = "cgqc_gun_mk1_MAAWS";
	displayName = "CGQC MAAWS";
	class LinkedItems
	{
	};
};

class cgqc_gun_mk1_mp7 : arifle_mas_can_mp7_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_mp7";
	baseWeapon = "cgqc_gun_mk1_mp7";
	displayName = "CGQC MP7";
	class LinkedItems
	{
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "optic_ACO_grn";
		};
	};
};

class cgqc_gun_mk1_mk18_gl : rhs_weap_mk18_m320
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_mk18_gl";
	baseWeapon = "cgqc_gun_mk1_mk18_gl";
	displayName = "CGQC Mk18 M320";
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

class cgqc_gun_mk1_Javelin : launch_mas_can_javelin_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_Javelin";
	baseWeapon = "cgqc_gun_mk1_Javelin";
	displayName = "CGQC Javelin";
	class LinkedItems
	{
	};
};

class cgqc_gun_mk1_m200 : srifle_LRR_F
{
	scope = 2;
	author = "silent1";
	_generalMacro = "cgqc_gun_mk1_m200";
	baseWeapon = "cgqc_gun_mk1_m200";
	displayName = "CGQC M200 Intervention";
	class LinkedItems
	{
		class LinkedItemsOptic
		{
			slot = "CowsSlot";
			item = "rhsusf_acc_nxs_5522x56_md_sun";
		};
	};
};

// mk1 setup ----------------------------------------------------------------------------------
class cgqc_gun_mk1_hq_m4a1 : cgqc_gun_mk1_m4a1blkII
{
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

class cgqc_gun_mk1_TL_m4a1 : cgqc_gun_mk1_m4a1blkII_gl
{
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

class cgqc_gun_mk1_rifleman_m4a1 : cgqc_gun_mk1_m4a1blkII
{
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

class cgqc_gun_mk1_rifleman_mk18 : cgqc_gun_mk1_mk18
{
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

class cgqc_gun_mk1_marksman_417 : cgqc_gun_hk417_wood
{
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

class cgqc_gun_mk1_engineer_m4a1 : cgqc_gun_mk1_m4a1blkII
{
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

class cgqc_gun_mk1_medic_m4a1 : cgqc_gun_mk1_m4a1blkII
{
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

class cgqc_gun_mk1_AT_m4a1 : cgqc_gun_mk1_m4a1blkII
{
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
