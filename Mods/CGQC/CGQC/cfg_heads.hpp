class Default
{
	class Custom; // External class reference
};
class Man_A3 : Default
{
	class WhiteHead_01; // External class reference
	class CGQCHead_13 : WhiteHead_01
	{
		displayName = "CGQC Cloutier";
		texture = "CGQC\heads\cloutier\cgqc_cloutier_co.paa";
		material = "CGQC\heads\cloutier\cgqc_cloutier.rvmat";
		head = "GreekHead_A3";
		identityTypes[] = {"Head_NATO", "Head_Euro"};
		author = "silent1";
		materialWounded1 = "CGQC\heads\cloutier\cgqc_cloutier_injury.rvmat";
		materialWounded2 = "CGQC\heads\cloutier\cgqc_cloutier_injury.rvmat";
		textureHL = "CGQC\heads\cloutier\right_arm.paa";
		textureHL2 = "CGQC\heads\cloutier\right_arm.paa";
		materialHL = "\A3\Characters_F\Heads\Data\hl_white_bald_muscular.rvmat";
		materialHL2 = "\A3\Characters_F\Heads\Data\hl_white_bald_muscular.rvmat";
		disabled = 0;
	};
};