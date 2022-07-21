#include "BIS_AddonInfo.hpp"
class CfgPatches {
	class full_mission_load {
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.72;
		requiredAddons[] = {"A3_Data_F","A3_Characters_F","A3_Air_F","A3_Armor_F","A3_Boat_F","A3_Soft_F","A3_Air_F_Heli_Heli_Transport_04","A3_Characters_F_exp"};
		version = 1.0;
		author = "computer/BadKneeGrow";
	};
};

class CfgFunctions {
	class full_mission_load {
		class functions {
			file = "\full_mission_load\functions";
			class load {};
		};
	};
};

//display change
class RscStandardDisplay;
class RscPicture;
class RscPictureKeepAspect;
class RscVignette;
class RscPictureload: RscPictureKeepAspect
{
	style="0x30 + 0x800";
	idc=999;
	text="#(argb,8,8,3)color(0,0,0,1)";
	colorText[]={1,1,1,1};
	x="safezoneX";
	y="safezoneY";
	w="0.5*(safezoneW)";
	h="0.5*(safezoneH)";

};


class RscDisplayStart: RscStandardDisplay
{
	onLoad="[2] call compile preprocessfilelinenumbers gettext (configfile >> 'CfgFunctions' >> 'init'); ['onload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	onUnload="['onUnload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";

	class controlsBackground
	{
		class CA_Vignette: RscVignette
		{
			colorText[]={0,0,0,1};
		};
		class Map: RscPicture
		{
			idc=999;
			text="#(argb,8,8,3)color(0,0,0,1)";
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY - (safezoneW * 4/3) / 4";
			w="safezoneW";
			h="safezoneW * 4/3";
		};
		class Noise: RscPicture
		{
			text="\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[]={1,1,1,0.3};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
};

class RscDisplayLoadMission: RscStandardDisplay
{
	onLoad="['onload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	onUnload="[""onUnload"",_this,""RscDisplayLoading""] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	class controlsBackground
	{
		class CA_Vignette: RscVignette
		{
			colorText[]={0,0,0,1};
		};
		class Map: RscPicture
		{
			idc=999;
			text="#(argb,8,8,3)color(0,0,0,1)";
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY - (safezoneW * 4/3) / 4";
			w="safezoneW";
			h="safezoneW * 4/3";
		};
		class Noise: RscPicture
		{
			text="\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[]={1,1,1,0.3};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
};
class RscDisplayLoading
{
	onLoad="['onload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	onUnload="[""onUnload"",_this,""RscDisplayLoading""] call (uiNamespace getVariable 'full_mission_load_fnc_load')";

	class controlsBackground
	{
		class CA_Vignette: RscVignette
		{
			colorText[]={0,0,0,1};
		};
		class Map: RscPicture
		{
			idc=999;
			text="#(argb,8,8,3)color(0,0,0,1)";
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY - (safezoneW * 4/3) / 4";
			w="safezoneW";
			h="safezoneW * 4/3";
		};
		class Noise: RscPicture
		{
			text="\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[]={1,1,1,0.3};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
};
class RscDisplayNotFreeze: RscStandardDisplay
{
	onLoad="['onload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	onUnload="[""onUnload"",_this,""RscDisplayLoading""] call (uiNamespace getVariable 'full_mission_load_fnc_load')";

	class controlsBackground
	{
		class CA_Vignette: RscVignette
		{
			colorText[]={0,0,0,1};
		};
		class Map: RscPicture
		{
			idc=999;
			text="#(argb,8,8,3)color(0,0,0,1)";
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY - (safezoneW * 4/3) / 4";
			w="safezoneW";
			h="safezoneW * 4/3";
		};
		class Noise: RscPicture
		{
			text="\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[]={1,1,1,0.3};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};

};
class RscDisplayLoadCustom: RscDisplayLoadMission
{
	onLoad="['onload',_this,'RscDisplayLoading'] call (uiNamespace getVariable 'full_mission_load_fnc_load')";
	onUnload="[""onUnload"",_this,""RscDisplayLoading""] call (uiNamespace getVariable 'full_mission_load_fnc_load')";

	class controlsBackground
	{
		class CA_Vignette: RscVignette
		{
			colorText[]={0,0,0,1};
		};
		class Map: RscPicture
		{
			idc=999;
			text="#(argb,8,8,3)color(0,0,0,1)";
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY - (safezoneW * 4/3) / 4";
			w="safezoneW";
			h="safezoneW * 4/3";
		};
		class Noise: RscPicture
		{
			text="\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[]={1,1,1,0.3};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
};
