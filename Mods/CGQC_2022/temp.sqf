class rhsusf_acc_premier;
class ItemInfo;
class OpticsModes;
class pso1_scope;
class cgqc_acc_M8541A_wood : rhsusf_acc_premier
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC M8541A Woodland";
	model = "\CGQC_2022\acc\cgqc_acc_M8541A_wood";
	class ItemInfo : ItemInfo
	{
		mass = 9;
		class OpticsModes : OpticsModes
		{
			class pso1_scope : pso1_scope
			{};
			class Mrds
			{
				opticsID = 2;
				useModelOptics = 0;
				opticsPPEffects[] = {
					""
				};
				opticsZoomMin = 0.275;
				opticsZoomMax = 1.1;
				opticsZoomInit = 0.75;
				memoryPointCamera = "eye";
				visionMode[] = {};
				opticsFlare = 0;
				opticsDisablePeripherialVision = 0;
				distanceZoomMin = 200;
				distanceZoomMax = 200;
				cameraDir = "";
			};
		};
	};
};
// *------------------------------------------------------------------------------

class rhsusf_acc_premier_mrds: rhsusf_acc_premier
{
	scope = 2;
	displayName = "M8541A SSDS (MRDS)";
	author = "$STR_RHSUSF_AUTHOR_FULL";
	model = "\rhsusf\addons\rhsusf_weapons\acc\scopes\ph_5_25x_56mm\prem_scope_pt";
	class ItemInfo: ItemInfo
	{
		mass = 9;
		class OpticsModes: OpticsModes
		{
			class pso1_scope: pso1_scope{};
			class Mrds
			{
				opticsID = 2;
				useModelOptics = 0;
				opticsPPEffects[] = {
					""
				};
				opticsZoomMin = 0.275;
				opticsZoomMax = 1.1;
				opticsZoomInit = 0.75;
				memoryPointCamera = "eye";
				visionMode[] = {};
				opticsFlare = 0;
				opticsDisablePeripherialVision = 0;
				distanceZoomMin = 200;
				distanceZoomMax = 200;
				cameraDir = "";
			};
		};
	};
};

class Item_rhsusf_acc_premier_mrds: Item_Base_F
{
	scope = 2;
	scopeCurator = 2;
	author = "$STR_RHSUSF_AUTHOR_FULL";
	displayName = "M8541A SSDS (MRDS)";
	vehicleClass = "WeaponAccessories";
	editorCategory = "EdCat_WeaponAttachments";
	editorSubcategory = "EdSubcat_TopSlot_Optics";
	model = "\A3\Weapons_f\dummyweapon.p3d";
	class TransportItems
	{
		class rhsusf_acc_premier_mrds
		{
			name = "rhsusf_acc_premier_mrds";
			count = 1;
		};
	};
};

// Woodland scope
class ItemInfo;
class OpticsModes;
class pso1_scope;
class rhsusf_acc_premier;
class cgqc_acc_M8541A_wood : rhsusf_acc_premier
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC M8541A Woodland";
	model = "\rhsusf\addons\rhsusf_weapons\acc\scopes\ph_5_25x_56mm\prem_scope_pt";
	hiddenSelectionsTextures[] = {
		"\CGQC_2022\acc\Optic_EndPart_Ca.paa"
		"\CGQC_2022\acc\rhs_pred_tac_sight_co.paa"
		"\CGQC_2022\acc\rmr_lens_ca.paa"
		"\CGQC_2022\acc\cgqc_scope_mrds_wood.paa"
		"\CGQC_2022\acc\collimdot_red_ca.paa"
		"\CGQC_2022\acc\cgqc_scope_M8541A_wood.paa"
	};
	class ItemInfo : ItemInfo
	{
		mass = 9;
		class OpticsModes : OpticsModes
		{
			class pso1_scope : pso1_scope
			{};
			class Mrds
			{
				opticsID = 2;
				useModelOptics = 0;
				opticsPPEffects[] = {
					""
				};
				opticsZoomMin = 0.275;
				opticsZoomMax = 1.1;
				opticsZoomInit = 0.75;
				memoryPointCamera = "eye";
				visionMode[] = {};
				opticsFlare = 0;
				opticsDisablePeripherialVision = 0;
				distanceZoomMin = 200;
				distanceZoomMax = 200;
				cameraDir = "";
			};
		};
	};
};

class rhsusf_acc_anpeq15_bk: rhsusf_acc_anpeq15
{
	picture = "\rhsusf\addons\rhsusf_inventoryicons\data\accessories\rhsusf_acc_anpeq15_bk_ca.paa";
	author = "$STR_RHSUSF_AUTHOR_FULL";
	displayName = "$STR_RHSUSF_ACC_PEQ15SURE_BK_Laser";
	weaponInfoType = "RHS_Flashlight2";
	rhs_acc_combo = "rhsusf_acc_anpeq15_bk_light";
	model = "\rhsusf\addons\rhsusf_weapons\acc\lasers\ANPEQ15\PEQ15_A3_BK_top";
	rhs_anpeq15_base = "rhsusf_acc_anpeq15_bk";
};

class rhsusf_acc_anpeq15_bk_light: rhsusf_acc_anpeq15_light
{
	picture = "\rhsusf\addons\rhsusf_inventoryicons\data\accessories\rhsusf_acc_anpeq15_bk_light_ca.paa";
	author = "$STR_RHSUSF_AUTHOR_FULL";
	displayName = "$STR_RHSUSF_ACC_PEQ15SURE_BK_Light";
	rhs_acc_combo = "rhsusf_acc_anpeq15_bk";
	rhs_anpeq15_base = "rhsusf_acc_anpeq15_bk_light";
	weaponInfoType = "RHS_Flashlight2";
	model = "\rhsusf\addons\rhsusf_weapons\acc\lasers\ANPEQ15\PEQ15_A3_BK_top";
};
// -----------------------------------------------------------------------------------------------
class rhsusf_acc_LEUPOLDMK4_2_d: rhsusf_acc_LEUPOLDMK4_2
{
	picture = "\rhsusf\addons\rhsusf_inventoryicons\data\accessories\rhsusf_acc_LEUPOLDMK4_2_d_ca.paa";
	displayName = "$STR_RHSUSF_ACC_LEUPOLDMK402_SD_D";
	scope = 2;
	author = "$STR_RHSUSF_AUTHOR_FULL";
	weaponInfoType = "RscWeaponZeroing";
	model = "\rhsusf\addons\rhsusf_weapons\acc\scopes\leupoldmk4\leupoldmk4_2_d";
};
class rhsusf_acc_premier: rhsusf_acc_LEUPOLDMK4_2
{
	picture = "\rhsusf\addons\rhsusf_inventoryicons\data\accessories\rhsusf_acc_premier_ca.paa";
	displayName = "M8541A SSDS";
	scope = 2;
	author = "$STR_RHSUSF_AUTHOR_FULL";
	weaponInfoType = "RscWeaponZeroing";
	model = "\rhsusf\addons\rhsusf_weapons\acc\scopes\ph_5_25x_56mm\prem_scope";
	class ItemInfo: InventoryOpticsItem_Base_F
	{
		opticType = 2;
		mass = 8;
		RMBhint = "Optical Sniper Sight";
		optics = 1;
		modelOptics = "\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot3";
		class OpticsModes
		{
			class pso1_scope
			{
				opticsID = 1;
				useModelOptics = 1;
				opticsPPEffects[] = {
					"OpticsCHAbera1", "OpticsBlur1"
				};
				discreteDistance[] = {
					100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800
				};
				discreteDistanceInitIndex = 1;
				opticsZoomMax = "0.25/3";
				opticsZoomMin = "0.25/15";
				opticsZoomInit = "0.25/3";
				discretefov[] = {
					"0.25/3", "0.25/6", "0.25/9", "0.25/12", "0.25/15"
				};
				discreteInitIndex = 0;
				modelOptics[] = {
					"\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot3", "\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot6", "\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot9", "\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot12", "\rhsusf\addons\rhsusf_weapons\acc\scopes\optics\rhsusf_prem_mildot15"
				};
				memoryPointCamera = "opticView";
				visionMode[] = {
					"Normal"
				};
				opticsFlare = 1;
				opticsDisablePeripherialVision = 1;
				distanceZoomMin = 200;
				distanceZoomMax = 1800;
				cameraDir = "";
			};
		};
	};
};