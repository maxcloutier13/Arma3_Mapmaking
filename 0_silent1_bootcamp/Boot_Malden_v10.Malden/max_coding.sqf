boot_malden_v5

-Fixed bug with backpack on chest... 


- v5.1 ---------------------------------------
-Fixing transports 
-Cache spawns 
-Moved spawner on the island -> Beta base 
-Manual server starting now ... 
----------------------------------------------



-- Todo --
-Spawnable recruits 
-CQC house 
-grenade bunker 
-"you are detected" message 
-Add realengine + TierOne 










//Old code reference below


//Code in object to get menu
this addAction ["Parachute Training", {paradropReady = true; publicVariable "paradropReady";}];

//v0.1 Trigger set to activate when variable set before is sprung

hint "Preparing for drop. Braces yourselves.";  
_paraPlane = createVehicle ["UK3CB_ADA_B_C130J", getMarkerPos "spawn_paradrop", [], 0, "FLY"];
createVehicleCrew _paraPlane;  
_paraPlane flyInHeight 5000;
paradropReady false; 



//v0.2 Plane move to target

hint "Preparing for drop. Braces yourselves.";  
_paraPlane = createVehicle ["UK3CB_ADA_B_C130J", getMarkerPos "spawn_paradrop", [], 0, "FLY"]; 
createVehicleCrew _paraPlane;   
_paraPlane flyInHeight 5000;
_wp = _paraPlane addWaypoint [getMarkerPos "despawn_paradrop",0];  
_wp setWaypointType "MOVE";


//v0.3 Set position and move to target 
hint "Preparing for drop. Braces yourselves.";
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle;
_paraPlane = _paraPlaneSpawn select 0;
_paraPlaneCrew = _paraPlaneSpawn select 1;
_paraGroup = _paraPlaneSpawn select 2;
_paraPlaneHeight = 1000;
_paraPlane flyInHeight _paraPlaneHeight;
_paraPlane setpos [getposATL _paraPlane select 0,getposATL _paraPlane select 1, _paraPlaneHeight];
_paraPlane setdir 220;
_wpDespawn = _paraGroup addWaypoint [(getMarkerPos "despawn_paradrop"),0];
_wpDespawn setWaypointType "MOVE";
player assignAsCargoIndex [_paraPlane, 8];
player moveinCargo _paraPlane;

//v0.4 Fix waypoint + initial drop  
hint "Preparing for drop. Braces yourselves.";
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle;
_paraPlane = _paraPlaneSpawn select 0;
_paraPlaneCrew = _paraPlaneSpawn select 1;
_paraGroup = _paraPlaneSpawn select 2;
_paraPlaneHeight = 500;
_paraPlane setVelocity [-150,-150,_paraPlaneHeight];
_paraPlane flyInHeight _paraPlaneHeight;
_paraPlane setpos [getposATL _paraPlane select 0,getposATL _paraPlane select 1, _paraPlaneHeight];
_paraPlane move (getMarkerPos "despawn_paradrop");
player assignAsCargo _paraPlane;
player moveinCargo _paraPlane;


//Home made bullet tracing as laptop option (for init ) + fancy bullet options

if (hasInterface) then {   
	this addAction ["Activate basic tracing", {
		nul=execVM "max_basic_tracing.sqf";
		titleText ["Bullet tracing ON", "BLACK FADED", 2]; titleFadeOut 1;  
 		},[],10,true,true];  
	this addAction ["Deactivate basic tracing", { 
		nul=execVM "max_basic_tracing_off.sqf";  
		titleText ["Bullet tracing OFF", "BLACK FADED", 2]; titleFadeOut 1;  
		},[],10,true,true];
	this addAction ["Advanced sniping mode", {  
		titleText ["Advanced mode on", "BLACK FADED", 2]; titleFadeOut 1;
		nul=execVM "max_dynamic_range.sqf";  
		},[],10,true,true];
	this addAction ["Advanced sniping mode OFF", {  
		titleText ["Advanced mode on", "BLACK FADED", 2]; titleFadeOut 1;
		nul=execVM "max_dynamic_range_off.sqf";
		},[],10,true,true];
 }; 


// Option on thing to quick reset setPylonLoadOut
//Reset last Ace loadout


if (hasInterface) then {   
	this addAction ["Reload current loadout", {
		player setUnitLoadout (player getVariable "loadout");
		titleText ["Bullet tracing ON", "BLACK FADED", 2]; titleFadeOut 1;  
 		},[],10,true,true];  
 };



// ref 

	if (!isServer) exitWith {};
drivers = creategroup EAST;
transport1 = [(getMarkerPos "mk20"), 180, "O_Truck_02_transport_F", drivers] call BIS_fnc_spawnVehicle;
truck = (transport1 select 0);
rifle21 = [getmarkerpos "mk21", EAST, ["O_Soldier_AR_F","O_Soldier_AR_F","O_Soldier_GL_F" ,"O_Soldier_GL_F","O_Soldier_lite_F","O_Soldier_lite_F"],[],[],[],[],[],230] call BIS_fnc_spawnGroup;
	{_x assignAsCargo truck;
	 _x moveinCargo truck;		 
	} foreach units rifle21;
wp20 = drivers addWaypoint [(getmarkerpos "wp20"), 0];
wp20 setWaypointType "MOVE";
wp20 setWaypointSpeed "NORMAL";
wp20 setWaypointBehaviour "AWARE";




titleText ["Bullet tracing ON", "BLACK FADED", 2]; titleFadeOut 1;
[player, 3] spawn BIS_fnc_traceBullets;

titleText ["Bullet tracing OFF", "BLACK FADED", 2]; titleFadeOut 1;
[player, 0] spawn BIS_fnc_traceBullets;




if (hasInterface) then { 
	this addAction ["Activate tracing", {
		[player, 3] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing ON", "BLACK FADED", 2]; titleFadeOut 1;
	},[],10,true,true];
	this addAction ["Deactivate tracing", {
		[player, 0] spawn BIS_fnc_traceBullets;
		titleText ["Bullet tracing OFF", "BLACK FADED", 2]; titleFadeOut 1;
	},[],10,true,true]; 
}; 

hint "Preparing for drop. Braces yourselves."; 
_paraPlaneSpawn = [(getMarkerPos "spawn_paradrop"), 180, "UK3CB_ADA_B_C130J", _paraGroup] call BIS_fnc_spawnVehicle; 
_paraPlane = _paraPlaneSpawn select 0; 
_paraPlaneCrew = _paraPlaneSpawn select 1; 
_paraGroup = _paraPlaneSpawn select 2; 
_paraPlaneHeight = 500; 
_paraPlane setpos [getposATL _paraPlane select 0,getposATL _paraPlane select 1, _paraPlaneHeight]; 
_paraPlane flyInHeight _paraPlaneHeight; 
player assignAsCargo _paraPlane; 
player moveinCargo _paraPlane; 
_paraGroup move getMarkerPos "despawn_paradrop";



player addBackpack "B_Parachute";
titleText ["You parachute is ready to go", "PLAIN DOWN", 3]; titleFadeOut 2;



player addBackpack "B_Parachute"; 
titleText ["Touche windows/Equipment/PutBackpackFront ... et pis après l'atterissage drop le parachute et fait l'inverse", "PLAIN DOWN", 3]; titleFadeOut 2;



if (hasInterface) then {  
 this addAction ["Activate tracing", { 
  [player, 0] spawn BIS_fnc_traceBullets; 
  [player, 3] spawn BIS_fnc_traceBullets; 
  titleText ["Bullet tracing ON", "BLACK FADED", 2]; titleFadeOut 1; 
 },[],10,true,true]; 
 this addAction ["Deactivate tracing", { 
  [player, 0] spawn BIS_fnc_traceBullets; 
  titleText ["Bullet tracing OFF", "BLACK FADED", 2]; titleFadeOut 1; 
 },[],10,true,true];  
}; 


//Add virtual shit to box 
[this, true, false] call ace_arsenal_fnc_addVirtualItems;
[this, true] call ace_arsenal_fnc_initBox;

//Fix parachute trigger message
hint "Put your backpack on the front and walk to plane. You'll get a parachute";
sleep 60;

//Add chute 
player addBackpack "B_Parachute";
titleText ["You parachute is ready to go", "PLAIN DOWN", 3]; titleFadeOut 2;
sleep 60;




//Add sleep to UI popup
titleText ["Camp is cleared. Time to go home", "BLACK FADED", 3]; titleFadeOut 2;
uiSleep 5;


//Add advanced tracing

if (hasInterface) then {    
 this addAction ["Activate basic tracing", { 
  nul=execVM "max_basic_tracing.sqf"; 
  titleText ["Bullet tracing ON", "BLACK FADED", 5]; titleFadeOut 2;   
   },[],10,true,true];   
 this addAction ["Deactivate basic tracing", {  
  nul=execVM "max_basic_tracing_off.sqf";   
  titleText ["Bullet tracing OFF", "BLACK FADED", 5]; titleFadeOut 2;   
  },[],10,true,true]; 
 this addAction ["Advanced sniping mode", {   
  titleText ["Advanced mode on", "BLACK FADED", 5]; titleFadeOut 2; 
  nul=execVM "max_dynamic_range.sqf";   
  },[],10,true,true]; 
 this addAction ["Advanced sniping mode OFF", {   
  titleText ["Advanced mode on", "BLACK FADED", 5]; titleFadeOut 2; 
  nul=execVM "max_dynamic_range_off.sqf"; 
  },[],10,true,true]; 
 this addAction ["WIP --- Activate advanced tracing", {  
  [player, nil, nil, nil, nil, nil, true] call hyp_fnc_traceFire;
  //Adding of the option to manually clear lines.  If you don't want the addaction, simply remove these 4 lines
  (player) addAction["Clear Lines", {
    {[_x] call hyp_fnc_traceFireClear;} forEach hyp_var_tracer_tracedUnits;
	}]; //Clears the lines of all drawn projectiles
  titleText ["Advanced Tracing ON", "BLACK FADED", 5]; titleFadeOut 2;   
   },[],10,true,true];  
 this addAction ["WIP --- Activate ALL tracing", {   
  titleText ["Advanced mode on", "BLACK FADED", 5]; titleFadeOut 2; 
  nul=execVM "max_color_tracing_all.sqf"; 
  },[],10,true,true]; 
 }; 


 // Make passive target. Put this in unit Init
 //Completely static
this disableAI "TARGET";
this disableAI "WEAPONAIM";
this disableAI "MOVE";
this disableAI "AUTOCOMBAT";
this disableAI "AUTOTARGET";
this disableAI "CHECKVISIBLE";
this disableAI "COVER"; 
this disableAI "RADIOPROTOCOL";  

//Force move
this disableAI "TARGET"; 
this disableAI "WEAPONAIM"; 
this disableAI "AUTOCOMBAT"; 
this disableAI "AUTOTARGET";
this disableAI "CHECKVISIBLE";
this disableAI "COVER"; 
this disableAI "RADIOPROTOCOL";  


// Real targets: activate/deActivateKey
spawn_static_menu1 = player addaction [
	("Activate static soldier" + "</t>"), "max_real_spawn.sqf", ["O_G_Soldier_F", false, false, false], 0, false, false];
spawn_moving_menu1 = player addaction [
	("Activate moving soldier" + "</t>"), "max_real_spawn.sqf", ["O_G_Soldier_F", false, false, false], 0, false, true];
//OnDeactivate
player removeAction spawn_static_menu1;
player removeAction spawn_moving_menu1;


//Custom texture 
//On the empty userTexture 
this setObjectTexture [0, "range_100.jpg"];
this attachTo [rangepost_100, [0,-0.06,0.6]];

//Eject event catcher
player addEventHandler ["GetOutMan", {_this execVM "max_autochute.sqf"}];


//Check backpack
_backpack = backpack player;
titleText [_backpack, "PLAIN DOWN", 2];


//Remove advanced tracing

if (hasInterface) then {    
 this addAction ["Activate basic tracing", { 
  nul=execVM "max_basic_tracing.sqf"; 
  titleText ["Bullet tracing ON", "BLACK FADED", 5]; titleFadeOut 2;   
   },[],10,true,true];   
 this addAction ["Deactivate basic tracing", {  
  nul=execVM "max_basic_tracing_off.sqf";   
  titleText ["Bullet tracing OFF", "BLACK FADED", 5]; titleFadeOut 2;   
  },[],10,true,true]; 
 this addAction ["Advanced sniping mode", {   
  titleText ["Advanced mode on", "BLACK FADED", 5]; titleFadeOut 2; 
  nul=execVM "max_dynamic_range.sqf";   
  },[],10,true,true]; 
 this addAction ["Advanced sniping mode OFF", {   
  titleText ["Advanced mode on", "BLACK FADED", 5]; titleFadeOut 2; 
  nul=execVM "max_dynamic_range_off.sqf"; 
  },[],10,true,true]; 
 }; 


 //Custom antistasi box 
this addWeaponCargo ["rhs_weap_m38_rail",20];
this addWeaponCargo ["rhs_weap_m1garand_sa43",20];
this addItemCargo ["rhsusf_acc_LEUPOLDMK4",20];
this addWeaponCargo ["rhs_weap_rpg7",20];
this addWeaponCargo ["rhs_weap_makarov_pmm",20];
this addWeaponCargo ["rhsusf_bino_lerca_1200_black",20];
this addItemCargo ["rhs_mag_m67",500];
this addItemCargo ["rhsgref_5Rnd_762x54_m38",500];
this addItemCargo ["rhsgref_8Rnd_762x63_M2B_M1rifle",500];
this addItemCargo ["rhsusf_acc_nt4_black",500];
this addItemCargo ["rhs_rpg7_PG7VL_mag",500];
this addItemCargo ["ToolKit",20];
this addItemCargo ["ACE_EarPlugs",20];
this addItemCargo ["ACE_RangeCard",20];
this addItemCargo ["ACE_Clacker",20];
this addItemCargo ["ACE_M26_Clacker",20];
this addItemCargo ["ACE_DeadManSwitch",20];
this addItemCargo ["ACE_DefusalKit",20];
this addItemCargo ["ACE_MapTools",20];
this addItemCargo ["ACE_Flashlight_MX991",20];
this addItemCargo ["ACE_wirecutter",20];
this addItemCargo ["ACE_RangeTable_82mm",20];
this addItemCargo ["ACE_EntrenchingTool",20];
this addItemCargo ["ACE_Cellphone",20];
this addItemCargo ["ACE_CableTie",20];
this addItemCargo ["ACE_SpottingScope",20];
this addItemCargo ["ACE_Tripod",20];
this addItemCargo ["ACE_Kestrel4500",20];
this addItemCargo ["ACE_ATragMX",20];
this addItemCargo ["ACRE_PRC343",20];
this addItemCargo ["ACRE_PRC148",20];
this addItemCargo ["ACRE_PRC152",20];
this addItemCargo ["IEDUrbanSmall_Remote_Mag",500];
this addItemCargo ["rhs_mag_rgd5",500];


//Format string 
hint str format ["Player position: %1", _target_distance_position];



// Real spawn ... lets do it 

//In presence trigger
realspawn_activate = player addAction [
	("MaxSpawn: new target" + "</t>"), "max_realspawn_activate.sqf", ["O_G_Soldier_F", 100, "Facing", false], 0, false, false];
realspawn_clear = player addaction [
	("MaxSpawn: clear target" + "</t>"), "max_realspawn_clear.sqf", [true], 0, false, false];
//OnDeactivate
player removeAction realspawn_activate;
player removeAction realspawn_clear;


realspawn_activate = player addAction [
	("MaxSpawn: new target" + "</t>"), "max_realspawn_activate.sqf", ["O_G_Soldier_F", 100, "Facing", false], 0, false, false];


player addAction ["Realspawn: show UI",
    {
        [] call max_fnc_OpenRealspawnUI;
    },"",0.03,false,false];



    // Alive jump to action
    this addAction["<t color='#ff9900'>Recruit Infantry</t>", "bon_recruit_units\open_dialog.sqf"];
    this addAction ["Select Assault Mission",{[_this select 1,"attacking"] call ALiVE_fnc_OPCOMJoinObjective},[],1,false,true,"","true"];
    this addAction ["Select Defense Mission",{[_this select 1,"defending"] call ALiVE_fnc_OPCOMJoinObjective},[],1,false,true,"","true"];


this addAction ["Select Assault Mission",{[_this select 1,"attacking"] call ALiVE_fnc_OPCOMJoinObjective},[],1,false,true,"","true"]; 
this addAction ["Select Defense Mission",{[_this select 1,"defending"] call ALiVE_fnc_OPCOMJoinObjective},[],1,false,true,"","true"];

this addAction ["Skip 4 hours",{skipTime 4},[],1,false,true,"","true"];


this addAction ["Skip 3 hours",{remoteExec ["skipTime", 3, false]},[],1,false,true,"","true"];

this addAction ["Skip 1 hours", {nul=execVM "max_sleep_1.sqf";},[],10,true,true]; 
this addAction ["Skip 3 hours", {nul=execVM "max_sleep_3.sqf";},[],10,true,true];
this addAction ["Skip 6 hours", {nul=execVM "max_sleep_6.sqf";},[],10,true,true];  






//List of items for Ace Fortify
[west, -1, [
["Land_CncBarrierMedium_F",1],
["Land_HBarrier_3_F",1],
["Land_HBarrier_5_F",1],
["Land_HBarrier_Big_F",1],
["Land_HBarrier_1_F",1],
["Land_Plank_01_4m_F",1],
["Land_Plank_01_8m_F",1],
["Land_CncShelter_F",1],
["Land_BagBunker_Small_F",1],
["Land_BagBunker_Tower_F",1],
["Land_BagFence_Long_F",1],
["Land_BagFence_Short_F",1],
["Land_BagFence_Round_F",1],
["Land_SandbagBarricade_01_half_F",1],
["Land_SandbagBarricade_01_F",1],
["Land_SandbagBarricade_01_hole_F",1],
["Wire",1],
["Land_HelipadCircle_F",1]
["Land_CncBarrierMedium_F",1],
["CamoNet_BLUFOR_big_F",1],
["CamoNet_BLUFOR_open_F",1],
["CamoNet_BLUFOR_F",1],
["Land_CanvasCover_01_F",1],
["Land_CanvasCover_02_F",1],
["Land_DragonsTeeth_01_4x2_new_redwhite_F",1],
["Land_MedicalTent_01_MTP_closed_F",1],
["I_E_CargoNet_01_ammo_F",1],
["B_Slingload_01_Repair_F",1],
["B_Slingload_01_Medevac_F",1],
["B_Slingload_01_Ammo_F",1],
["B_Slingload_01_Fuel_F",1],
]] call acex_fortify_fnc_registerObjects;




Briefing 
<marker name ='marker_mines'>old destroyed base</marker>

Situation
This was supposed to be a standard training deployment. Shit has hit the fan and the south is in full rebellion. Get ready to assist the local NATO forces in taking back their territory. 

Mission 
Prepare for war
Get ready. Check the armory and get familiar with your kit. Practice the roles and tools you will need for this campain.<br/>
On the <marker name ='marker_island'>Island</marker> you can train your <marker name ='marker_medical'>medical skills</marker>, practice <marker name ='marker_parachute'>paradropping</marker> , give your rifle a try at the <marker name ='marker_zero'>range</marker>. Please keep the destruction to a minimum in this area as it also serves as our main base in the area<br/> 
For the big badabooms you have to get on Malden itself. It's a perfect time to try the paradropping actually. We have some facilities near an <marker name ='marker_oldbase'>old destroyed base</marker>. There is a <marker name ='marker_heavy'>heavy duty range</marker> for some serious gunning, some <marker name ='marker_targets'>hard targets</marker> to practice your air to ground and <marker name ='marker_demining'>demining game</marker>. It's also the perfect place to crash a <marker name ='marker_helicopter'>helicopter</marker>.<br/> 

<marker name ='marker_mines'>mines on the frontline</marker>
Soften up the enemy
Most of the southern towns are occupied by lightly equiped rebels, but there are reports of fully armored soldiers in the east. The frontline has solidified and is defended and mined. We'll have to start by softening them up.<br/>
Find their air defense assets, clean up some <marker name ='marker_mines'>mines on the frontline</marker> to open corridors, set up some FOB's to prepare for the invasion proper.


