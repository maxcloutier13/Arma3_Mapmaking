// Default info
class CfgPatches
{
	class MyAddon
	{
		// Meta information for editor
		name = "CGQC";
		author = "silent1";
		url = "Insert Github";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"A3_Functions_F"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

// Custom face definition
class CfgFaces
{
	class Default
	{
		class Custom; // External class reference
	};
	class Man_A3 : Default
	{
		class WhiteHead_01; // External class reference
		class CGQCHead_13 : WhiteHead_01
		{
			displayName = "Cloutier";
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
};
