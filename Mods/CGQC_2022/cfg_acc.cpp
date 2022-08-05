// Woodland silencer
class muzzle_snds_B_snd_F;
class cgqc_acc_silencer_wood : muzzle_snds_B_snd_F
{
	author = "silent1";
	_generalMacro = "cgqc_acc_silencer_wood";
	displayName = "CGQC Silencieux Woodland";
	model = "\CGQC_2022\acc\cgqc_acc_silencer_wood.p3d";
};

// Woodland scope
class rhsusf_acc_premier_mrds;
class cgqc_acc_M8541A_wood : rhsusf_acc_premier_mrds
{
	scope = 2;
	author = "silent1";
	displayName = "CGQC M8541A Woodland";
	model = "\CGQC_2022\acc\cgqc_acc_M8541A_wood";
};

// Woodland bipod
class bipod_01_F_snd;
class cgqc_acc_bipod_wood : bipod_01_F_snd
{
	author = "$STR_A3_Bohemia_Interactive";
	_generalMacro = "cgqc_acc_bipod_wood";
	displayName = "CGQC Bipod Woodland";
	picture = "\a3\Weapons_F_Mark\Data\UI\icon_bipod_01_F_blk_ca.paa";
	model = "\CGQC_2022\acc\cgqc_acc_bipod_wood.p3d";
};

// Woodland laser/light combo
class rhsusf_acc_anpeq15;
class cgqc_acc_anpeq15_laser_wood : rhsusf_acc_anpeq15
{
	picture = "\CGQC_2022\acc\ANPEQ15_wood\cgqc_ANPEQ15_laser_wood_pic.paa";
	author = "silent1";
	displayName = "CGQC PEQ15 Woodland";
	rhs_acc_combo = "cgqc_acc_anpeq15_light_wood";
	rhs_anpeq15_base = "cgqc_acc_anpeq15_laser_wood";
	weaponInfoType = "RHS_Flashlight2";
	model = "\CGQC_2022\acc\cgqc_acc_ANPEQ15_wood";
};

class rhsusf_acc_anpeq15_light;
class cgqc_acc_anpeq15_light_wood : rhsusf_acc_anpeq15_light
{
	picture = "\CGQC_2022\acc\ANPEQ15_wood\cgqc_ANPEQ15_light_wood_pic";
	author = "silent1";
	displayName = "CGQC PEQ15 Flashlight Woodland";
	rhs_acc_combo = "cgqc_acc_anpeq15_laser_wood";
	rhs_anpeq15_base = "cgqc_acc_anpeq15_light_wood";
	weaponInfoType = "RHS_Flashlight2";
	model = "\CGQC_2022\acc\cgqc_acc_ANPEQ15_wood";
};