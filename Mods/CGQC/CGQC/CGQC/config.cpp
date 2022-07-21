class CfgPatches
{
	class CGQC_BASE
	{
		units[] = {"CGQC_BASE_Rifleman", "CGQC_BASE_SquadLeader", "CGQC_BASE_MachineGunner", "CGQC_BASE_AutomaticRifleman", "CGQC_BASE_Grenadier", "CGQC_BASE_ATSoldier", "CGQC_BASE_RPG7Soldier", "CGQC_BASE_AASoldier", "CGQC_BASE_Medic", "CGQC_BASE_Marksman", "CGQC_BASE_Crewman", "CGQC_BASE_RPG7Grenadier", "CGQC_BASE_Repair", "CGQC_BASE_Engineer", "CGQC_BASE_Explosives", "CGQC_BASE_Officer", "CGQC_BASE_TeamLeader", "CGQC_BASE_Rifleman_Lite", "CGQC_BASE_Rifleman_SPAR", "CGQC_BASE_HVT"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {""};
	};
};

class cfgFactionClasses
{
	class CGQC_BASE
	{
		icon = "\CGQC\factions\CGQC\cgqc_128px.paa";
		displayName = "CGQC";
		side = 2;
		priority = 1;
	};
};

class CfgVehicleClasses
{
	class CGQC_BASE_Men
	{
		displayName = "Men";
	};
	class CGQC_BASE_Vehicles
	{
		displayName = "Vehicles";
	};
	class CGQC_BASE_Static
	{
		displayName = "Static";
	};
};

class cfgVehicles
{
	class B_Recon_f;

	class CGQC_BASE_Rifleman : B_Recon_f
	{
		scope = 2;
		scopeCurator = 2;
		side = 1;
		faction = "CGQC_BASE";
		author = "silent1";
		uniformClass = "U_mas_can_B_CombatUniform_S_NTOG";
		identityTypes[] = {"LanguageCHI_F", "Head_Asian", "G_CIVIL_male"};
		genericNames = "ChineseMen";
		weapons[] = {"Tier1_Glock19_WAR", "Throw", "Put", "Binocular"};
		respawnWeapons[] = {"Tier1_Glock19_WAR", "Throw", "Put", "Binocular"};
		Items[] = {"FirstAidKit"};
		RespawnItems[] = {"FirstAidKit"};
		magazines[] = {"HandGrenade"};
		respawnMagazines[] = {"HandGrenade"};
		linkedItems[] = {"UK3CB_UN_B_B_ASS", "ItemMap", "ItemGPS", "ItemCompass", "ItemWatch", "ItemRadio"};
		respawnlinkedItems[] = {"UK3CB_UN_B_B_ASS", "ItemMap", "ItemGPS", "ItemCompass", "ItemWatch", "ItemRadio"};
		backpack = "V_Rangemaster_belt";
	};

	/* Vehicles
	class I_G_Offroad_01_armed_F;
	class CGQC_BASE_technical: I_G_Offroad_01_armed_F
	{
		scope = 2;
		side = 2;
		faction = "CGQC_BASE";
		crew = "CGQC_BASE_Rifleman";
		typicalCargo[] = {"CGQC_BASE_Rifleman"};
	};

	class I_G_Offroad_01_AT_F;
	class CGQC_BASE_technical_AT: I_G_Offroad_01_AT_F
	{
		scope = 2;
		side = 2;
		faction = "CGQC_BASE";
		crew = "CGQC_BASE_Rifleman";
		typicalCargo[] = {"CGQC_BASE_Rifleman"};
	};
	*/
};

/*
// Groups ------------------------------
class CfgGroups
{
	class INDEP
	{
		name = "Independent";
		class CGQC_BASE
		{
			name = "DSF Abu Sayyaf";
			class Infantry
			{
				name = "Infantry";
				class CGQC_BASE_RifleSquad
				{
					name = "Rifle Squad";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_SquadLeader";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_Grenadier";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "CGQC_BASE_MachineGunner";
						rank = "PRIVATE";
						position[] = {5, 0, 0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Soldier";
						rank = "PRIVATE";
						position[] = {7, 0, 0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "CGQC_BASE_Engineer";
						rank = "PRIVATE";
						position[] = {9, 0, 0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Grenadier";
						rank = "CORPORAL";
						position[] = {12, 0, 0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "CGQC_BASE_AutomaticRifleman";
						rank = "PRIVATE";
						position[] = {14, 0, 0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "CGQC_BASE_Medic";
						rank = "CORPORAL";
						position[] = {16, 0, 0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "CGQC_BASE_Marksman";
						rank = "PRIVATE";
						position[] = {18, 0, 0};
					};
				};
				class CGQC_BASE_WeaponsTeam
				{
					name = "Weapons Team";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_SquadLeader";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Soldier";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Grenadier";
						rank = "PRIVATE";
						position[] = {5, 0, 0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "CGQC_BASE_ATSoldier";
						rank = "PRIVATE";
						position[] = {7, 0, 0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "CGQC_BASE_AASoldier";
						rank = "CORPORAL";
						position[] = {9, 0, 0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "CGQC_BASE_AutomaticRifleman";
						rank = "PRIVATE";
						position[] = {12, 0, 0};
					};
				};
				class CGQC_BASE_FireTeam
				{
					name = "Fire Team";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_SquadLeader";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_AutomaticRifleman";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Grenadier";
						rank = "PRIVATE";
						position[] = {5, 0, 0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "PRIVATE";
						position[] = {7, 0, 0};
					};
				};
				class CGQC_BASE_SniperTeam
				{
					name = "Sniper Team";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_Marksman";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
				};

				class CGQC_BASE_EngineerTeam
				{
					name = "Engineer Team";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_Engineer";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_Repair";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "CGQC_BASE_Explosives";
						rank = "PRIVATE";
						position[] = {5, 0, 0};
					};
				};

				class CGQC_BASE_SentryTeam
				{
					name = "Sentry Team";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "CORPORAL";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "PRIVATE";
						position[] = {3, 0, 0};
					};
				};
				class CGQC_BASE_LargeSquad
				{
					name = "Large Squad";
					faction = "CGQC_BASE";
					side = 2;
					rarityGroup = 0.5;
					class Unit0
					{
						side = 2;
						vehicle = "CGQC_BASE_SquadLeader";
						rank = "SERGEANT";
						position[] = {0, 5, 0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "CGQC_BASE_Grenadier";
						rank = "CORPORAL";
						position[] = {3, 0, 0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "CGQC_BASE_MachineGunner";
						rank = "PRIVATE";
						position[] = {5, 0, 0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Soldier";
						rank = "PRIVATE";
						position[] = {7, 0, 0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Grenadier";
						rank = "PRIVATE";
						position[] = {9, 0, 0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "CGQC_BASE_RPG7Grenadier";
						rank = "CORPORAL";
						position[] = {12, 0, 0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "CGQC_BASE_AutomaticRifleman";
						rank = "PRIVATE";
						position[] = {14, 0, 0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "CGQC_BASE_Medic";
						rank = "CORPORAL";
						position[] = {16, 0, 0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "CGQC_BASE_Marksman";
						rank = "PRIVATE";
						position[] = {18, 0, 0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "PRIVATE";
						position[] = {20, 0, 0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "CGQC_BASE_Rifleman";
						rank = "PRIVATE";
						position[] = {22, 0, 0};
					};
					class Unit11
					{
						side = 2;
						vehicle = "CGQC_BASE_AutomaticRifleman";
						rank = "PRIVATE";
						position[] = {24, 0, 0};
					};
				};
			};
		};
	};
};
*/