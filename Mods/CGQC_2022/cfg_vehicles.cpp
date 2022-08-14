class Air;
class Helicopter : Air
{
    class ViewPilot;
    class Turrets;
    class HitPoints
    {
        class HitGlass1;
        class HitGlass2;
        class HitGlass3;
        class HitGlass4;
        class HitGlass5;
        class HitGlass6;
        class HitHull;
        class HitEngine;
        class HitAvionics;
    };
};
class Helicopter_Base_F : Helicopter
{
    class Turrets : Turrets
    {
        class MainTurret;
    };
    class HitPoints : HitPoints
    {
        class HitGlass1;
        class HitGlass2;
        class HitGlass3;
        class HitGlass4;
        class HitGlass5;
        class HitGlass6;
        class HitMissiles;
        class HitHull;
        class HitFuel;
        class HitEngine;
        class HitAvionics;
        class HitVRotor;
        class HitHRotor;
    };
    class AnimationSources;
    class Eventhandlers;
    class ViewOptics;
    class CargoTurret;
    class RotorLibHelicopterProperties;
    class Reflectors
    {
        class Right;
    };
};
class Helicopter_Base_H : Helicopter_Base_F
{
    class EventHandlers;
    class Turrets : Turrets
    {
        class CopilotTurret;
    };
    class HitPoints : HitPoints
    {
        class HitHull;
        class HitFuel;
        class HitEngine;
        class HitAvionics;
        class HitVRotor;
        class HitHRotor;
        class HitGlass1;
        class HitGlass2;
        class HitGlass3;
        class HitGlass4;
        class HitGlass5;
        class HitGlass6;
    };
    class CargoTurret;
    class AnimationSources;
    class ViewOptics;
    class RotorLibHelicopterProperties;
    class Components;
};
class Heli_Transport_01_base_F : Helicopter_Base_H
{
    class Sounds;
    class SoundsExt
    {
        class Sounds;
    };
    class HitPoints : HitPoints
    {
        class HitHull;
        class HitFuel;
        class HitAvionics;
        class HitMissiles;
        class HitEngine1;
        class HitEngine2;
        class HitEngine;
        class HitHRotor;
        class HitVRotor;
        class HitGlass1;
        class HitGlass2;
        class HitGlass3;
        class HitGlass4;
        class HitGlass5;
        class HitGlass6;
        class HitGlass7;
        class HitGlass8;
    };
};
class Heli_Transport_02_base_F : Helicopter_Base_H
{
};

// Little birds --------------------------------------------------------------------------------------------
class cgqc_heli_melb_base : Helicopter_Base_H
{
    scope = 0;
    author = "silent1";
    displayName = "AH-6M LittleBird";
    dlc = "RHS_USAF";
    side = 1;
    faction = "cgqc";
#include "loadouts\cgqc_heli_light.sqf"
    crew = "CGQC_units_mk1_4_Pilot_heli";
    model = "rhsusf\addons\rhsusf_melb\MELB.p3d";
    picture = "rhsusf\addons\rhsusf_melb\Data\ui\melb_h_6m_ca.paa";
    icon = "rhsusf\addons\rhsusf_melb\Data\ui\map_melb_h_6m_ca.paa";
    mapSize = 11;
    destrType = "DestructWreck";
    accuracy = 0.5;
    unitInfoType = "RscUnitInfoAir_NoRadar_MELB";
    unitInfoTypeRTD = "RHSUSF_RscUnitInfoAirRTDFullDigital_MELB";
    nameSound = "veh_helicopter";
    driverAction = "MELB_Pilot";
    driverInAction = "MELB_Pilot";
    getInAction = "ChopperLight_L_In_H";
    getOutAction = "GetOutLow";
    memoryPointsGetInDriver = "pos pilot";
    memoryPointsGetInDriverDir = "pos pilot dir";
    memoryPointsGetInDriverPrecise = "pos pilot";
    memoryPointsGetInCargo[] = {"pos cargo"};
    memoryPointsGetInCargoDir[] = {"pos cargo dir"};
    memoryPointsGetInCargoPrecise[] = {"pos cargo"};
    usePreciseGetInAction = 1;
    getInRadius = 1.5;
    cargoCompartments[] = {"compartment3"};
    cargoGetInAction[] = {"GetInLow"};
    cargoGetOutAction[] = {"GetOutLow"};
    cargoAction[] = {"passenger_flatground_generic04"};
    preciseGetInOut = 0;
    castCargoShadow = 1;
    getInProxyOrder[] = {9, 1, 2, 3, 4, 5, 6, 7, 8, 10};
    extCameraPosition[] = {0, 0.75, -10};
    driverCanSee = 31;
    transportSoldier = 6;
    hideWeaponsDriver = 1;
    hideWeaponsGunner = 1;
    hideWeaponsCargo = 1;
    threat[] = {0, 0, 0};
    radarType = 0;
    irTarget = 1;
    irTargetSize = 0.7;
    visualTarget = 1;
    visualTargetSize = 0.8;
    radarTarget = 1;
    radarTargetSize = 0.8;
    receiveRemoteTargets = 1;
    reportRemoteTargets = 1;
    reportOwnPosition = 1;
    LockDetectionSystem = "4 + 8";
    incomingMissileDetectionSystem = 16;
    weapons[] = {"rhsusf_weap_LWIRCM"};
    magazines[] = {"rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM"};
    hiddenSelections[] = {"camo1", "d_SN"};
    hiddenSelectionsTextures[] = {"rhsusf\addons\rhsusf_melb\data\melb_ext_co.paa", "rhsusf\addons\rhsusf_melb\data\decals\SN\blank_ca.paa"};
    class MFD
    {
    };
    class ViewOptics : ViewOptics
    {
        initAngleX = 0;
        minAngleX = -30;
        maxAngleX = 30;
        initAngleY = 0;
        minAngleY = -86;
        maxAngleY = 86;
        minFov = 0.25;
        maxFov = 1.25;
        initFov = 0.75;
    };
    memorypointcm[] = {"flare_launcher1"};
    memorypointcmdir[] = {"flare_launcher1_dir"};
    driveOnComponent[] = {"Skids"};
    fuelCapacity = 236;
    fuelConsumptionRate = 0.06;
    maxFordingDepth = 0.65;
    mainBladeRadius = 4.32;
    tailBladeRadius = 0.77;
    class RotorLibHelicopterProperties : RotorLibHelicopterProperties
    {
        RTDconfig = "rhsusf\addons\rhsusf_c_melb\RTD_MELB.xml";
        autoHoverCorrection[] = {0.28, 2.88, 0};
        defaultCollective = 0.5;
        throttleOffToIdle = 8;
        throttleIdleToOff = 6;
        throttleIdleToFull = 12;
        throttleFullToIdle = 6;
        maxTorque = 1200;
        stressDamagePerSec = 0.0033333332;
        maxHorizontalStabilizerLeftStress = 10000;
        maxHorizontalStabilizerRightStress = 10000;
        maxVerticalStabilizerStress = 10000;
        horizontalWingsAngleCollMin = 0;
        horizontalWingsAngleCollMax = 0;
        maxMainRotorStress = 45000;
        maxTailRotorStress = 20200;
        retreatBladeStallWarningSpeed = 77.222;
        rtd_center = "rtd_center";
    };
    startDuration = 10;
    washDownStrength = "0.7f";
    maxSpeed = 200;
    slingLoadMemoryPoint = "slingLoad0";
    slingLoadMaxCargoMass = 900;
    liftForceCoef = 1;
    cyclicAsideForceCoef = 1.65;
    cyclicForwardForceCoef = 0.4;
    backrotorforcecoef = 0.9;
    bodyFrictionCoef = 0.3;
    sensitivity = 2.5;
    maximumLoad = 1000;
    cost = 4000000;
    memoryPointSupply = "memsupply";
    supplyradius = 4;
    occludeSoundsWhenIn = 0.762341;
    obstructSoundsWhenIn = 0.616228;
    attenuationEffectType = "OpenHeliAttenuation";
    soundGeneralCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_1", 1.0, 1, 100};
    soundGeneralCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_2", 1.0, 1, 100};
    soundGeneralCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_3", 1.0, 1, 100};
    soundCrashes[] = {"soundGeneralCollision1", 0.33, "soundGeneralCollision2", 0.33, "soundGeneralCollision3", 0.33};
    soundLandCrashes[] = {"emptySound", 0};
    soundBuildingCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundArmorCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundWoodCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundBushCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_1", 1.0, 1, 100};
    soundBushCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_2", 1.0, 1, 100};
    soundBushCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_3", 1.0, 1, 100};
    soundBushCrash[] = {"soundBushCollision1", 0.33, "soundBushCollision2", 0.33, "soundBushCollision3", 0.33};
    soundWaterCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_1", 1.0, 1, 100};
    soundWaterCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_2", 1.0, 1, 100};
    soundWaterCrashes[] = {"soundWaterCollision1", 0.5, "soundWaterCollision2", 0.5};
    soundGetIn[] = {"A3\Sounds_F\vehicles\air\noises\heli_get_in2", 0.56234133, 1};
    soundGetOut[] = {"A3\Sounds_F\vehicles\air\noises\heli_get_out2", 0.7943282, 1, 20};
    soundDammage[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_crash_default_ext_1", 3.1622777, 1};
    soundEngineOnInt[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Start", 0.4, 1};
    soundEngineOnExt[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Start", 0.7943282, 1.0, 600};
    soundEngineOffInt[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Off", 0.4, 1};
    soundEngineOffExt[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Off", 0.7943282, 1.0, 600};
    soundLocked[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_1", 1, 1};
    soundIncommingMissile[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_2", 0.7, 1};
    rotorDamageInt[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_rotor_int_open_1", 1.0, 1.0};
    rotorDamageOut[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_rotor_ext_1", 2.5118864, 1.0, 150};
    rotorDamage[] = {"rotorDamageInt", "rotorDamageOut"};
    tailDamageInt[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_tail", 1.0, 1.0};
    tailDamageOut[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_tail", 1.0, 1.0, 300};
    tailDamage[] = {"tailDamageInt", "tailDamageOut"};
    landingSoundInt0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.0, 1.0, 100};
    landingSoundInt1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.0, 1.0, 100};
    landingSoundInt[] = {"landingSoundInt0", 0.5, "landingSoundInt1", 0.5};
    landingSoundOut0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.7782794, 1.0, 100};
    landingSoundOut1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.7782794, 1.0, 100};
    landingSoundOut[] = {"landingSoundOut0", 0.5, "landingSoundOut1", 0.5};
    slingCargoAttach0[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEndINT", 1.0, 1.0};
    slingCargoAttach1[] = {"A3\Sounds_F\vehicles\air\noises\SL_1hookLock", 1.0, 1.0, 80};
    slingCargoAttach[] = {"slingCargoAttach0", "slingCargoAttach1"};
    slingCargoDetach0[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEndINT", 1.0, 1.0};
    slingCargoDetach1[] = {"A3\Sounds_F\vehicles\air\noises\SL_1hookUnlock", 1.0, 1.0, 80};
    slingCargoDetach[] = {"slingCargoDetach0", "slingCargoDetach1"};
    slingCargoDetachAir0[] = {"A3\Sounds_F\vehicles\air\noises\SL_unhook_air_int", 1.0, 1.0};
    slingCargoDetachAir1[] = {"A3\Sounds_F\vehicles\air\noises\SL_unhook_air_ext", 1.0, 1.0, 80};
    slingCargoDetachAir[] = {"slingCargoDetach0", "slingCargoDetach1"};
    slingCargoRopeBreak0[] = {"A3\Sounds_F\vehicles\air\noises\SL_rope_break_int", 1.0, 1.0};
    slingCargoRopeBreak1[] = {"A3\Sounds_F\vehicles\air\noises\SL_rope_break_ext", 1.0, 1.0, 80};
    slingCargoRopeBreak[] = {"slingCargoDetach0", "slingCargoDetach1"};
    class Sounds
    {
        class EngineExt
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Idle", 1.2889254, 1.0, 400};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.9";
            volume = "camPos*((rotorSpeed-0.72)*4)";
        };
        class RotorExt
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Low", 1.2589254, 1, 500};
            frequency = "1.3*(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
            volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
        };
        class RotorSwist
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Close", 1.2, 1.0, 600};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.9";
            volume = "camPos * (gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]) * (rotorThrust factor [0.7, 0.9])";
        };
        class EngineInt
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Idle", 1, 1};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.9";
            volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
        };
        class RotorInt
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Low", 0.501187, 1};
            frequency = "1*(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
            volume = "(1-camPos)*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)*0.9";
        };
        class RotorBench
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Low", 1.2589254, 1, 500};
            frequency = "1.3*(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
            volume = "(playerPos factor [3.9, 4]) * (1 - camPos) * (rotorSpeed factor [0.3, 1]) * (1 + rotorThrust) * 0.4";
            cone[] = {1.6, 3.14, 1.6, 0.95};
        };
        class EngineBench
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Idle", 1.2818383, 1};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.9";
            volume = "(playerPos factor [3.9, 4]) * (1 - camPos) * (0 max (rotorSpeed-0.4))";
        };
        class WindBench
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_out", 0.56234133, 1.0, 50};
            frequency = 1;
            volume = "4 * (playerPos factor [3.9, 4]) * (1 - camPos) * ((speed factor[0, 30]) + (speed factor[0, -30]))";
        };
        class TransmissionDamageExt_phase1
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageExt_phase2
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageInt_phase1
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageInt_phase2
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class RotorNoiseExt
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Rotor_Fast", 1.2818383, 1, 200};
            frequency = 1.5;
            volume = "(camPos*(rotorSpeed factor [0.6, 0.85]))";
            cone[] = {1.6, 3.14, 2, 0.95};
        };
        class FarDistance
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Distance", 2.0918384, 1.1, 1100};
            frequency = "rotorSpeed";
            volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
        };
        class FarDistanceRotor
        {
            sound[] = {"rhsusf\addons\rhsusf_melb\Sound\tail_rotor", 2.0918384, 1, 1000};
            frequency = "rotorSpeed";
            volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
        };
        class damageAlarmInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.31622776, 1.0};
            frequency = 1;
            volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
        };
        class damageAlarmExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.2238721, 1.0, 20};
            frequency = 1;
            volume = "engineOn * camPos * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0, 0.001])";
        };
        class rotorLowAlarmInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.31622776, 1.0};
            frequency = 1;
            volume = "engineOn * (1 - camPos) * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
        };
        class rotorLowAlarmExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.2238721, 1.0, 20};
            frequency = 1;
            volume = "engineOn * camPos * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
        };
        class scrubLandInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandInt_open", 1.0, 1.0, 100};
            frequency = 1;
            volume = "2 * (1-camPos) * (scrubLand factor[0.02, 0.05])";
        };
        class scrubLandExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (scrubLand factor[0.02, 0.05])";
        };
        class scrubBuildingInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingInt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "2 * (1 - camPos) * (scrubBuilding factor[0.02, 0.05])";
        };
        class scrubBuildingExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (scrubBuilding factor[0.02, 0.05])";
        };
        class scrubTreeInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "(1 - camPos) * ((scrubTree) factor [0, 0.01])";
        };
        class scrubTreeExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * ((scrubTree) factor [0, 0.01])";
        };
        class RainExt
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\rain1_ext", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (rain - rotorSpeed/2) * 2";
        };
        class RainInt
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\rain1_int_open", 1.0, 1.0, 100};
            frequency = 1;
            volume = "(1-camPos)*(rain - rotorSpeed/2)*2";
        };
        class SlingLoadDownExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEXT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "camPos*(slingLoadActive factor [0,-1])";
        };
        class SlingLoadUpExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEXT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "camPos*(slingLoadActive factor [0,1])";
        };
        class SlingLoadDownInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownINT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "(1-camPos)*(slingLoadActive factor [0,-1])";
        };
        class SlingLoadUpInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpINT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "(1-camPos)*(slingLoadActive factor [0,1])";
        };
        class WindInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_int", 1, 1.0, 50};
            frequency = 1;
            volume = "(1-camPos)*(speed factor[5, 50])*(speed factor[5, 50])";
        };
        class WindLateralMovementInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_lateral_open_int", 1, 1.0, 50};
            frequency = 1;
            volume = "(1-camPos)*lateralMovement*((speed factor [5,40]) + (speed factor [-5,-40]))";
        };
        class GStress
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\vehicle_stress2b", 0.11622776, 1.0, 50};
            frequency = 1;
            volume = "engineOn * (1-camPos) * ((gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]))";
        };
    };
    class SoundsExt
    {
        class SoundEvents
        {
        };
        class Sounds
        {
            class EngineExt
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Idle", 1.2889254, 1.0, 400};
                frequency = "1.3*rotorSpeed";
                volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
            };
            class RotorExt
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Low", 1.2589254, 1, 500};
                frequency = "1.3*(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
                volume = "camPos * (rotorSpeed factor [0.3, 1]) * (1 + rotorThrust)";
            };
            class RotorSwist
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Close", 1.2, 1.0, 600};
                frequency = "1.3*rotorspeed";
                volume = "camPos * (gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]) * (rotorThrust factor [0.7, 0.9])";
            };
            class EngineInt
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Idle", 1, 1};
                frequency = "rotorSpeed";
                volume = "(1-camPos)*2*(0 max (rotorSpeed-0.4))";
            };
            class RotorInt
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Int_Low", 1.2818383, 1};
                frequency = "(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
                volume = "(1 - camPos) * (rotorSpeed factor [0.3, 0.7]) * (1 + rotorThrust) * 0.7";
            };
            class RotorBench
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Low", 1.2589254, 1, 500};
                frequency = "1.3*(rotorSpeed factor [0.3, 0.7]) * (rotorSpeed factor [0.3, 1]) * (1 - rotorThrust/6)";
                volume = "(playerPos factor [3.9, 4]) * (1 - camPos) * (rotorSpeed factor [0.3, 1]) * (1 + rotorThrust) * 0.4";
                cone[] = {1.6, 3.14, 1.6, 0.95};
            };
            class EngineBench
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Ext_Idle", 1.2818383, 1};
                frequency = "1.3*rotorSpeed";
                volume = "(playerPos factor [3.9, 4]) * (1 - camPos) * (0 max (rotorSpeed-0.4))";
            };
            class WindBench
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_out", 0.56234133, 1.0, 50};
                frequency = 1;
                volume = "4 * (playerPos factor [3.9, 4]) * (1 - camPos) * ((speed factor[0, 30]) + (speed factor[0, -30]))";
            };
            class TransmissionDamageExt_phase1
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageExt_phase2
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageInt_phase1
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageInt_phase2
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class RotorNoiseExt
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Rotor_Fast", 1.2818383, 1, 200};
                frequency = 1;
                volume = "(camPos*(rotorSpeed factor [0.6, 0.85]))";
                cone[] = {1.6, 3.14, 2, 0.95};
            };
            class FarDistance
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\Distance", 2.0918384, 1.1, 1100};
                frequency = "rotorSpeed";
                volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
            };
            class FarDistanceRotor
            {
                sound[] = {"rhsusf\addons\rhsusf_melb\Sound\tail_rotor", 2.0918384, 1, 1000};
                frequency = "rotorSpeed";
                volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
            };
            class damageAlarmInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.31622776, 1.0};
                frequency = 1;
                volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
            };
            class damageAlarmExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.2238721, 1.0, 20};
                frequency = 1;
                volume = "engineOn * camPos * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0, 0.001])";
            };
            class rotorLowAlarmInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.31622776, 1.0};
                frequency = 1;
                volume = "engineOn * (1 - camPos) * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
            };
            class rotorLowAlarmExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.2238721, 1.0, 20};
                frequency = 1;
                volume = "engineOn * camPos * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
            };
            class scrubLandInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandInt_open", 1.0, 1.0, 100};
                frequency = 1;
                volume = "2 * (1-camPos) * (scrubLand factor[0.02, 0.05])";
            };
            class scrubLandExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (scrubLand factor[0.02, 0.05])";
            };
            class scrubBuildingInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingInt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "2 * (1 - camPos) * (scrubBuilding factor[0.02, 0.05])";
            };
            class scrubBuildingExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (scrubBuilding factor[0.02, 0.05])";
            };
            class scrubTreeInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "(1 - camPos) * ((scrubTree) factor [0, 0.01])";
            };
            class scrubTreeExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * ((scrubTree) factor [0, 0.01])";
            };
            class RainExt
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\rain1_ext", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (rain - rotorSpeed/2) * 2";
            };
            class RainInt
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\rain1_int_open", 1.0, 1.0, 100};
                frequency = 1;
                volume = "(1-camPos)*(rain - rotorSpeed/2)*2";
            };
            class SlingLoadDownExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEXT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "camPos*(slingLoadActive factor [0,-1])";
            };
            class SlingLoadUpExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEXT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "camPos*(slingLoadActive factor [0,1])";
            };
            class SlingLoadDownInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownINT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "(1-camPos)*(slingLoadActive factor [0,-1])";
            };
            class SlingLoadUpInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpINT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "(1-camPos)*(slingLoadActive factor [0,1])";
            };
            class WindInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_int", 1.1220185, 1.0, 50};
                frequency = 1;
                volume = "(1-camPos)*(speed factor[5, 50])*(speed factor[5, 50])";
            };
            class WindLateralMovementInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_lateral_open_int", 1.9952624, 1.0, 50};
                frequency = 1;
                volume = "(1-camPos)*lateralMovement*((speed factor [5,40]) + (speed factor [-5,-40]))";
            };
            class GStress
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\vehicle_stress2b", 0.11622776, 1.0, 50};
                frequency = 1;
                volume = "engineOn * (1-camPos) * ((gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]))";
            };
        };
    };
    class pilotCamera
    {
    };
    class Exhausts
    {
        class Exhaust01
        {
            position = "exhaust1";
            direction = "exhaust1_dir";
            effect = "ExhaustEffectHeli";
        };
    };
    class Library
    {
        libTextDesc = "Syko's Little Birds";
    };
    armor = 35;
    armorStructural = 20.0;
    epeImpulseDamageCoef = 20;
    damageResistance = 0.01039;
    crewCrashProtection = 0.2;
    hullDamageCauseExplosion = 1;
    hullExplosionDelay[] = {10, 20};
    class HitPoints : HitPoints
    {
        class HitFuel : HitFuel
        {
            armor = -130;
            armorComponent = "fuel_hit";
            name = "fuel_hit";
            visual = "-";
            radius = 0.125;
            minimalhit = -0.04;
            explosionShielding = 0.5;
            passThrough = 0;
        };
        class HitHull : HitHull
        {
            depends = "HitEngine";
            simulation = "RHS_Hull_Helicopter";
            armor = -120;
            minimalHit = -0.15;
            radius = 0.02;
            name = "hull_hit";
            armorComponent = "hull_hit";
            visual = "zbytek";
            passThrough = 1;
            class DestructionEffects : RHS_Effects_Helicopter_Hull_Destruction
            {
            };
        };
        class HitEngine : HitEngine
        {
            armorComponent = "engine_hit";
            name = "engine_hit";
            armor = -120;
            visual = "-";
            radius = 0.15;
            explosionShielding = 0.85;
            minimalhit = -0.05;
            passThrough = 0.3;
        };
        class HitAvionics : HitAvionics
        {
            name = "avionics_hit";
            armor = 2;
            visual = "-";
            radius = 0.05;
            explosionShielding = 0.5;
        };
        class HitVRotor : HitVRotor
        {
            visual = "tail rotor static";
            armor = 1;
            radius = 0.05;
            explosionShielding = 0.8;
        };
        class HitHRotor : HitHRotor
        {
            visual = "main rotor static";
            armor = 3;
            radius = 0.2;
            explosionShielding = 0.5;
        };
        class HitGlass1 : HitGlass1
        {
            armor = 2;
            radius = 0.15;
            explosionShielding = 2;
        };
        class HitGlass2 : HitGlass2
        {
            armor = 2;
            radius = 0.15;
            explosionShielding = 2;
        };
        class HitGlass3 : HitGlass3
        {
            armor = 2;
            radius = 0.15;
            explosionShielding = 2;
        };
        class HitGlass4 : HitGlass4
        {
            armor = 2;
            radius = 0.15;
            explosionShielding = 2;
        };
        class HitPylon1
        {
            armor = -30;
            name = "hit_pylon_1";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_1";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_1";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_1";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_1";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon2
        {
            armor = -30;
            name = "hit_pylon_2";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_2";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_2";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_2";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_2";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon3
        {
            armor = -30;
            name = "hit_pylon_3";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_3";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_3";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_3";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_3";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon4
        {
            armor = -30;
            name = "hit_pylon_4";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_4";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_4";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_4";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_4";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
    };
    class Damage
    {
        tex[] = {};
        mat[] = {"rhsusf\addons\rhsusf_melb\data\melb_ext.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_ext_damage.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_ext_destruct.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass_damage.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass_destruct.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass_in.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass_damage.rvmat", "rhsusf\addons\rhsusf_melb\data\melb_glass_destruct.rvmat"};
    };
    class AnimationSources : AnimationSources
    {
        class AddBenches
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
        };
        class Addgunrack
        {
            source = "user";
            animPeriod = 1e-07;
            initPhase = 0;
        };
        class Addcrosshair
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
        };
        class Addfueltank
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
        };
        class AddBobhead
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
            displayName = "Bobblehead";
        };
        class hide_NoFear
        {
            source = "user";
            animPeriod = 1e-05;
            initPhase = 0;
            displayName = "No Fear Decal";
        };
        class hide_SGDM : hide_NoFear
        {
            displayName = "Six Guns Decal";
        };
        class hide_SN_nose : hide_NoFear
        {
            displayName = "Tail Number on nose";
        };
        class hide_clan : hide_NoFear
        {
            displayName = "Squad XML";
        };
        class HitGlass1
        {
            source = "Hit";
            hitpoint = "HitGlass1";
            raw = 1;
        };
        class HitGlass2 : HitGlass1
        {
            hitpoint = "HitGlass2";
        };
        class HitGlass3 : HitGlass1
        {
            hitpoint = "HitGlass3";
        };
        class HitGlass4 : HitGlass1
        {
            hitpoint = "HitGlass4";
        };
        class HitGlass5 : HitGlass1
        {
            hitpoint = "HitGlass5";
        };
        class HitGlass6 : HitGlass1
        {
            hitpoint = "HitGlass6";
        };
        class MFD_Pilot
        {
            source = "user";
            animPeriod = 1;
            initPhase = 0;
        };
        class MFD_CoPilot : MFD_Pilot
        {
        };
        class pilotpip
        {
            source = "user";
            animperiod = 0.001;
            initPhase = 0;
        };
        class copilotpip : pilotpip
        {
        };
        class hit_pylon_1_source
        {
            source = "Hit";
            hitpoint = "HitPylon1";
        };
        class hit_pylon_2_source
        {
            source = "Hit";
            hitpoint = "HitPylon2";
        };
        class hit_pylon_3_source
        {
            source = "Hit";
            hitpoint = "HitPylon3";
        };
        class hit_pylon_4_source
        {
            source = "Hit";
            hitpoint = "HitPylon4";
        };
    };
    class UserActions
    {
        class MFD_Toggle
        {
            displayName = "Toggle Monitor";
            onlyforplayer = 1;
            position = "doplnovani";
            radius = 2;
            shortcut = "LandGearUp";
            condition = "((call rhsusf_fnc_findPlayer)==driver this) or ((call rhsusf_fnc_findPlayer)==gunner this) ";
            statement = "call RHS_MELB_fnc_MFD_toggle";
            showWindow = 0;
        };
        class SAFEMODE
        {
            displayName = "<t color='#00FF7F'>MASTERSAFE</t>";
            condition = "(call rhsusf_fnc_findPlayer) in this";
            statement = "(call rhsusf_fnc_findPlayer) action ['SwitchWeapon', this, (call rhsusf_fnc_findPlayer), 0];";
            position = "";
            radius = 10;
            priority = 10.5;
            onlyforplayer = 1;
            showWindow = 0;
            shortcut = "user13";
            hideOnUse = 1;
        };
    };
    class Attributes
    {
        class rhs_MELB_TailNumber
        {
            displayName = "Define Tail Number";
            tooltip = "Select tail number specific to this helicopter.";
            property = "rhs_MELB_TailNumber";
            control = "Combo";
            expression = "if(_value != 'NoChange')then{ [_this,'d_SN',_value] call RHS_MELB_fnc_tailNumber}";
            defaultValue = 0;
            typeName = "STRING";
            class values
            {
                class NoChange
                {
                    name = "Default defined";
                    value = "NoChange";
                };
                class blank_ca
                {
                    name = "Empty";
                    value = "blank_ca";
                };
                class MELB_SN_25385_ca
                {
                    name = "25385";
                    value = "MELB_SN_25385_ca";
                };
                class MELB_SN_25381_ca
                {
                    name = "25381";
                    value = "MELB_SN_25381_ca";
                };
                class MELB_SN_25378_ca
                {
                    name = "25378";
                    value = "MELB_SN_25378_ca";
                };
                class MELB_SN_25376_ca
                {
                    name = "25376";
                    value = "MELB_SN_25376_ca";
                };
                class MELB_SN_25374_ca
                {
                    name = "25374";
                    value = "MELB_SN_25374_ca";
                };
                class MELB_SN_25372_ca
                {
                    name = "25372";
                    value = "MELB_SN_25372_ca";
                };
                class MELB_SN_25366_ca
                {
                    name = "25366";
                    value = "MELB_SN_25366_ca";
                };
                class MELB_SN_25363_ca
                {
                    name = "25363";
                    value = "MELB_SN_25363_ca";
                };
                class MELB_SN_25361_ca
                {
                    name = "25361";
                    value = "MELB_SN_25361_ca";
                };
                class MELB_SN_25358_ca
                {
                    name = "25358";
                    value = "MELB_SN_25358_ca";
                };
                class MELB_SN_25355_ca
                {
                    name = "25355";
                    value = "MELB_SN_25355_ca";
                };
                class MELB_SN_25350_ca
                {
                    name = "25350";
                    value = "MELB_SN_25350_ca";
                };
                class MELB_SN_25349_ca
                {
                    name = "25349";
                    value = "MELB_SN_25349_ca";
                };
                class MELB_SN_25348_ca
                {
                    name = "25348";
                    value = "MELB_SN_25348_ca";
                };
                class MELB_SN_25346_ca
                {
                    name = "25346";
                    value = "MELB_SN_25346_ca";
                };
                class MELB_SN_24683_ca
                {
                    name = "24683";
                    value = "MELB_SN_24683_ca";
                };
                class MELB_SN_23654_ca
                {
                    name = "23654";
                    value = "MELB_SN_23654_ca";
                };
                class MELB_SN_23653_ca
                {
                    name = "23653";
                    value = "MELB_SN_23653_ca";
                };
                class MELB_SN_23652_ca
                {
                    name = "23652";
                    value = "MELB_SN_23652_ca";
                };
                class MELB_SN_23649_ca
                {
                    name = "23649";
                    value = "MELB_SN_23649_ca";
                };
                class MELB_SN_23636_ca
                {
                    name = "23636";
                    value = "MELB_SN_23636_ca";
                };
                class MELB_SN_23635_ca
                {
                    name = "23635";
                    value = "MELB_SN_23635_ca";
                };
                class MELB_SN_23632_ca
                {
                    name = "23632";
                    value = "MELB_SN_23632_ca";
                };
                class MELB_SN_23631_ca
                {
                    name = "23631";
                    value = "MELB_SN_23631_ca";
                };
            };
        };
        class rhs_MELB_NoFear
        {
            displayName = "No Fear";
            property = "MELB_NoFear";
            control = "CheckboxNumber";
            expression = "_this animate ['hide_NoFear',_value,true]";
            defaultValue = 0;
        };
        class rhs_MELB_SGDM : rhs_MELB_NoFear
        {
            displayName = "Six Guns";
            property = "MELB_SGDM";
            expression = "_this animate ['hide_SGDM',_value,true]";
        };
        class rhs_MELB_SN_Nose : rhs_MELB_NoFear
        {
            displayName = "Tail Number";
            property = "MELB_SN_Nose";
            expression = "_this animate ['hide_SN_nose',_value,true]";
        };
        class rhs_MELB_clan : rhs_MELB_NoFear
        {
            displayName = "Squad XML";
            property = "MELB_clan";
            expression = "_this animate ['hide_clan',_value,true]";
        };
        class MELB_ToggleBoy : rhs_MELB_NoFear
        {
            displayName = "Bobblehead";
            property = "MELB_ToggleBoy";
            expression = "_this animate ['AddBobhead',_value,true]";
        };
    };
    class Reflectors
    {
        class Light
        {
            color[] = {7000, 7500, 10000, 1};
            ambient[] = {95, 95, 100, 0};
            intensity = 50;
            size = 1;
            innerAngle = 10;
            outerAngle = 60;
            coneFadeCoef = 7;
            position = "Light_pos";
            direction = "Light_dir";
            hitpoint = "Light_hitpoint";
            selection = "Light";
            useFlare = 1;
            flareSize = 6;
            flareMaxDistance = 250;
            dayLight = 0;
            class Attenuation
            {
                start = 1;
                constant = 0;
                linear = 0;
                quadratic = 4;
            };
        };
    };
    class NVGMarkers
    {
        class IR_Position
        {
            color[] = {0.1, 0.1, 0.1};
            ambient[] = {0.01, 0.01, 0.01};
            brightness = 0.15;
            name = "IR_Position";
            drawLight = 1;
            drawLightSize = 0.01;
            drawLightCenterSize = 0.005;
            activeLight = 0;
            blinking = 0;
            dayLight = 0;
            onlyInNvg = 1;
            useFlare = 0;
        };
    };
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
            gunnerCompartments = "Compartment1";
            body = "obsTurret";
            gun = "obsGun";
            animationSourceBody = "obsTurret";
            animationSourceGun = "obsGun";
            turretInfoType = "Rsc_MELB_Turret_UnitInfo";
            stabilizedInAxes = 3;
            memoryPointGunnerOptics = "commanderview";
            minElev = -180;
            maxElev = 180;
            initElev = 0;
            minTurn = -180;
            maxTurn = 180;
            initTurn = 0;
            minFov = 0.25;
            maxFov = 0.9;
            initFov = 0.75;
            lodTurnedOut = 1100;
            lodTurned = 1100;
            memoryPointsGetInGunner = "pos gunner";
            memoryPointsGetInGunnerDir = "pos gunner dir";
            memoryPointsGetInGunnerPrecise = "pos gunner";
            gunBeg = "commanderview";
            gunEnd = "laserstart";
            memoryPointGun = "commanderview";
            discretedistance[] = {100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000};
            discretedistanceinitindex = 3;
            weapons[] = {"rhs_weap_laserDesignator_AI", "rhs_weap_fcs_ah64"};
            magazines[] = {"rhs_laserfcsmag", "rhs_LaserMag_ai"};
            soundServo[] = {"", 0.01, 1, 30};
            inGunnerMayFire = 1;
            outGunnerMayFire = 1;
            primaryGunner = 1;
            gunnerAction = "MELB_Copilot";
            gunnerInAction = "MELB_Copilot";
            usePreciseGetInAction = 1;
            precisegetinout = 0;
            gunnerGetInAction = "Chopperlight_R_In_H";
            gunnergetOutAction = "GetOutLow";
            gunnerOpticsModel = "";
            TurretCanSee = "1+2+4+8";
            showAllTargets = 1;
            gunnerHasFlares = 1;
            usepip = 1;
            canUseScanners = 1;
            allowTabLock = 0;
            class ViewGunner
            {
                minAngleX = -65;
                maxAngleX = 85;
                initAngleX = 0;
                minAngleY = -150;
                maxAngleY = 150;
                initAngleY = 0;
                minFov = 0.25;
                maxFov = 0.9;
                initFov = 0.75;
            };
            class OpticsIn
            {
                class Wide
                {
                    opticsDisplayName = "TRK COR";
                    initAngleX = 0;
                    minAngleX = -360;
                    maxAngleX = 360;
                    initAngleY = 0;
                    minAngleY = -15;
                    maxAngleY = 85;
                    initFov = 0.3;
                    minFov = 0.3;
                    maxFov = 0.3;
                    visionMode[] = {"Normal", "NVG", "Ti"};
                    thermalMode[] = {0};
                    directionStabilized = 1;
                    horizontallyStabilized = 1;
                    gunnerOpticsModel = "rhsusf\addons\rhsusf_melb\data\optics\melb_flir_wf.p3d";
                    opticsPPEffects[] = {"OpticsCHAbera3", "OpticsBlur3"};
                    gunnerOpticsEffect[] = {"TankCommanderOptics2"};
                };
                class WideT : Wide
                {
                    initFov = 0.2;
                    minFov = 0.2;
                    maxFov = 0.2;
                    gunnerOpticsModel = "rhsusf\addons\rhsusf_melb\data\optics\melb_flir_w2.p3d";
                };
                class MediumT : WideT
                {
                    initFov = 0.1;
                    minFov = 0.1;
                    maxFov = 0.1;
                    gunnerOpticsModel = "rhsusf\addons\rhsusf_melb\data\optics\melb_flir_m.p3d";
                };
                class NarrowT : WideT
                {
                    initFov = 0.022;
                    minFov = 0.022;
                    maxFov = 0.022;
                    gunnerOpticsModel = "rhsusf\addons\rhsusf_melb\data\optics\melb_flir_n.p3d";
                };
                class NarrowT2 : WideT
                {
                    initFov = 0.0092;
                    minFov = 0.0092;
                    maxFov = 0.0092;
                    gunnerOpticsModel = "rhsusf\addons\rhsusf_melb\data\optics\melb_flir_n2.p3d";
                };
            };
            class Components
            {
                class VehicleSystemsDisplayManagerComponentLeft : VehicleSystemsTemplateLeftPilot
                {
                };
                class VehicleSystemsDisplayManagerComponentRight : VehicleSystemsTemplateRightPilot
                {
                };
            };
            class Hitpoints
            {
            };
        };
    };
    class EventHandlers : EventHandlers
    {
        class RHS_MELB_EH
        {
            handleDamage = "_this call RHS_MELB_fnc_fallDamage";
            postInit = "_this call rhs_fnc_reapplyTextures";
        };
    };
    class Components : Components
    {
        class SensorsManagerComponent
        {
            class Components
            {
                class DataLinkSensorComponent : SensorTemplateDataLink
                {
                };
                class PassiveRadarSensorComponent : SensorTemplatePassiveRadar
                {
                };
                class LaserSensorComponent : SensorTemplateLaser
                {
                };
            };
        };
        class VehicleSystemsDisplayManagerComponentLeft : VehicleSystemsTemplateLeftPilot
        {
        };
        class VehicleSystemsDisplayManagerComponentRight : VehicleSystemsTemplateRightPilot
        {
        };
    };
};

class cgqc_heli_ah6 : cgqc_heli_melb_base
{
    scope = 2;
    author = "silent1";
    displayName = "AH-6M LilBird (1+1)";
    editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\rhs_MELB_AH6M.paa";
    forceInGarage = 1;
    dlc = "RHS_USAF";
    picture = "rhsusf\addons\rhsusf_melb\Data\ui\melb_ah_6m_ca.paa";
    icon = "rhsusf\addons\rhsusf_melb\Data\ui\map_melb_ah_6m_l_ca.paa";
    slingLoadMaxCargoMass = 0;
    fuelCapacity = 436;
    fuelConsumptionRate = 0.08;
    transportSoldier = 1;
    cargoProxyIndexes[] = {10};
    hideWeaponsCargo = 0;
    ejectDeadCargo = 1;
    cargoGetInAction[] = {"MELB_L_Rack_in"};
    cargoAction[] = {"MELB_L_Rack"};
    memoryPointsGetInCargo[] = {"pos rack"};
    memoryPointsGetInCargoDir[] = {"pos rack dir"};
    memoryPointsGetInCargoPrecise[] = {"pos rack"};
    usePreciseGetInAction = 1;
    availableForSupportTypes[] = {"CAS_Heli"};
    weapons[] = {"Laserdesignator_mounted", "rhs_weap_MASTERSAFE", "rhsusf_weap_LWIRCM"};
    magazines[] = {"Laserbatteries", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM", "rhsusf_mag_LWIRCM"};
    threat[] = {0.6, 0.4, 0.1};
    cost = 1000000;
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
        };
    };
    class AnimationSources : AnimationSources
    {
        class Addcrosshair
        {
            source = "user";
            animPeriod = 1;
            initPhase = 1;
        };
        class Addgunrack
        {
            source = "user";
            animPeriod = 1;
            initPhase = 1;
        };
        class Addfueltank
        {
            source = "user";
            animPeriod = 1;
            initPhase = 1;
        };
        class ExtLongL
        {
            source = "user";
            animPeriod = 1e-05;
            initPhase = 0;
        };
        class ExtLongR
        {
            source = "user";
            animPeriod = 1e-05;
            initPhase = 0;
        };
    };
    class Attributes : Attributes
    {
        class rhs_MELB_TailNumber : rhs_MELB_TailNumber
        {
        };
        class rhs_MELB_SGDM : rhs_MELB_SGDM
        {
        };
        class rhs_MELB_SN_Nose : rhs_MELB_SN_Nose
        {
        };
        class rhs_MELB_clan : rhs_MELB_clan
        {
        };
        class MELB_ToggleBoy : MELB_ToggleBoy
        {
        };
        class rhs_ExtLongL
        {
            displayName = "Extend left pylon";
            tooltip = "Extended weapon pylon on the port side \nSome clipping occurs with GAU-19";
            property = "ExtLongL";
            control = "CheckboxNumber";
            expression = "_this animateSource ['ExtLongL',_value,true]";
            defaultValue = "1";
        };
        class rhs_ExtLongR
        {
            displayName = "Extend right pylon";
            tooltip = "Extended weapon pylon on the starboard side";
            property = "ExtLongR";
            control = "CheckboxNumber";
            expression = "_this animateSource ['ExtLongR',_value,true]";
            defaultValue = "1";
        };
    };
    class Components : Components
    {
        class TransportPylonsComponent
        {
            UIPicture = "\rhsusf\addons\rhsusf_melb\data\loadouts\RHS_AH6M_EDEN_CA.paa";
            class pylons
            {
                class pylon1
                {
                    hardpoints[] = {"RHS_HP_MELB", "RHS_HP_MELB_L"};
                    priority = 2;
                    attachment = "rhs_mag_M151_7";
                    maxweight = 1200;
                    UIposition[] = {0.625, 0.2};
                    bay = -1;
                    turret[] = {};
                    hitpoint = "HitPylon1";
                };
                class pylon2 : pylon1
                {
                    hardpoints[] = {"RHS_HP_MELB_M134", "RHS_HP_MELB"};
                    UIposition[] = {0.562, 0.3};
                    priority = 1;
                    attachment = "rhs_mag_m134_pylon_3000";
                    turret[] = {};
                    hitpoint = "HitPylon2";
                };
                class pylon3 : pylon2
                {
                    UIposition[] = {0.103, 0.3};
                    mirroredMissilePos = 2;
                    attachment = "rhs_mag_m134_pylon_3000";
                    turret[] = {};
                    hitpoint = "HitPylon3";
                };
                class pylon4 : pylon1
                {
                    hardpoints[] = {"RHS_HP_MELB", "RHS_HP_MELB_R"};
                    UIposition[] = {0.04, 0.2};
                    mirroredMissilePos = 1;
                    turret[] = {};
                    hitpoint = "HitPylon4";
                };
            };
            class Presets
            {
                class Light
                {
                    attachment[] = {"rhs_mag_M151_7", "rhs_mag_m134_pylon_3000", "rhs_mag_m134_pylon_3000", "rhs_mag_M151_7"};
                    displayname = "Light";
                };
                class Medium
                {
                    attachment[] = {"rhsusf_mag_gau19_melb_left", "", "", "rhs_mag_M151_19"};
                    displayname = "Medium";
                };
                class Heavy
                {
                    attachment[] = {"rhsusf_mag_gau19_melb_left", "", "", "rhs_mag_AGM114K_2"};
                    displayname = "Heavy";
                };
            };
        };
    };
};

class cgqc_heli_mh6 : cgqc_heli_melb_base
{
    scope = 2;
    author = "silent1";
    displayName = "MH-6M LilBird (7+1)";
    editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\rhs_MELB_MH6M.paa";
    forceInGarage = 1;
    dlc = "RHS_USAF";
    picture = "rhsusf\addons\rhsusf_melb\Data\ui\melb_mh_6m_ca.paa";
    icon = "rhsusf\addons\rhsusf_melb\Data\ui\map_melb_mh_6m_ca.paa";
    fuelCapacity = 436;
    fuelConsumptionRate = 0.08;
    ejectDeadCargo = 0;
    transportsoldier = 1;
    cargoProxyIndexes[] = {9};
    threat[] = {0.6, 0.4, 0.1};
    cost = 7000000;
    availableForSupportTypes[] = {"Drop", "Transport"};
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
        };
        class CargoTurret_03 : CargoTurret
        {
            gunnerAction = "passenger_bench_1";
            gunnerCompartments = "Compartment2";
            memoryPointsGetInGunner = "pos L1";
            memoryPointsGetInGunnerDir = "pos L1 dir";
            gunnerName = "Passenger (Left Bench 1)";
            proxyIndex = 3;
            maxElev = 45;
            minElev = -60;
            maxTurn = 95;
            minTurn = -15;
            isPersonTurret = 1;
            ejectDeadGunner = 0;
            playerPosition = 4;
            soundAttenuationTurret = "";
            disableSoundAttenuation = 1;
            gunnerGetInAction = "GetInHeli_Light_01bench";
            class Hitpoints
            {
            };
        };
        class CargoTurret_04 : CargoTurret_03
        {
            gunnerCompartments = "compartment3";
            memoryPointsGetInGunner = "pos R1";
            memoryPointsGetInGunnerDir = "pos R1 dir";
            gunnerName = "Passenger (Right Bench 1)";
            proxyIndex = 4;
            maxTurn = 15;
            minTurn = -95;
        };
        class CargoTurret_05 : CargoTurret_04
        {
            gunnerCompartments = "Compartment2";
            memoryPointsGetInGunner = "pos L2";
            memoryPointsGetInGunnerDir = "pos L2 dir";
            gunnerName = "Passenger (Left Bench 2)";
            proxyIndex = 5;
            maxElev = 45;
            minElev = -45;
            maxTurn = 95;
            minTurn = -95;
            class dynamicViewLimits
            {
                CargoTurret_03[] = {-30, 95};
                CargoTurret_07[] = {-95, 50};
            };
        };
        class CargoTurret_06 : CargoTurret_05
        {
            gunnerCompartments = "compartment3";
            memoryPointsGetInGunner = "pos R2";
            memoryPointsGetInGunnerDir = "pos R2 dir";
            gunnerName = "Passenger (Right Bench 2)";
            proxyIndex = 6;
            class dynamicViewLimits
            {
                CargoTurret_04[] = {-95, 30};
                CargoTurret_08[] = {-50, 95};
            };
        };
        class CargoTurret_07 : CargoTurret_06
        {
            gunnerCompartments = "Compartment2";
            memoryPointsGetInGunner = "pos L3";
            memoryPointsGetInGunnerDir = "pos L3 dir";
            gunnerName = "Passenger (Left Bench 3)";
            proxyIndex = 7;
            class dynamicViewLimits
            {
                CargoTurret_05[] = {-50, 95};
            };
        };
        class CargoTurret_08 : CargoTurret_07
        {
            gunnerCompartments = "compartment3";
            memoryPointsGetInGunner = "pos R3";
            memoryPointsGetInGunnerDir = "pos R3 dir";
            gunnerName = "Passenger (Right Bench 3)";
            proxyIndex = 8;
            class dynamicViewLimits
            {
                CargoTurret_06[] = {-95, 50};
            };
        };
    };
    class AnimationSources : AnimationSources
    {
        class AddBenches
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 1;
        };
    };
    class Attributes : Attributes
    {
        class rhs_MELB_TailNumber : rhs_MELB_TailNumber
        {
        };
        class rhs_MELB_NoFear : rhs_MELB_NoFear
        {
        };
        class rhs_MELB_SN_Nose : rhs_MELB_SN_Nose
        {
        };
        class rhs_MELB_clan : rhs_MELB_clan
        {
        };
        class MELB_ToggleBoy : MELB_ToggleBoy
        {
        };
    };
};

// Huey ----------------------------------------------------------------------------------------------------
class cgqc_heli_uh1_base : Helicopter_Base_H
{
    scope = 0;
    author = "silent1";
    displayName = "UH1H Huey(7+1)";
    forceInGarage = 0;
    picture = "rhsgref\addons\rhsgref_air\uh1h\ui\rhs_uh1h_pic_ca.paa";
    icon = "rhsgref\addons\rhsgref_air\uh1h\ui\icon_uh1h_ca.paa";
    mapSize = 14;
    model = "rhsgref\addons\rhsgref_air\uh1h\uh1h.p3d";
    unitInfoType = "RHSGREF_RscUnitInfoAir_UH1H";
    unitInfoTypeRTD = "RHSGREF_RscUnitInfoAirRTDFullDigital_UH1H";
    destrType = "DestructWreck";
    cargoAction[] = {"passenger_apc_narrow_generic02", "passenger_apc_narrow_generic02", "passenger_generic02_foldhands", "passenger_generic01_leanleft", "passenger_flatground_generic02", "passenger_flatground_leanleft"};
    GetInAction = "pilot_Heli_Light_02_Enter";
    GetOutAction = "pilot_Heli_Light_02_Exit";
    driverAction = "RHS_UH1H_Pilot";
    driverInAction = "RHS_UH1H_Pilot";
    driverLeftHandAnimName = "collective";
    driverDoor = "door_pilot";
    preciseGetInOut = 1;
    driverOpticsModel = "";
    transportSoldier = 6;
    cargoProxyIndexes[] = {1, 2, 3, 4, 5, 6, 7, 8};
    getInProxyOrder[] = {1, 2, 3, 4, 5, 6, 7, 8};
    cargoCompartments[] = {"compartment3"};
    getInRadius = 1;
    hideWeaponsDriver = 0;
    gForceShakeAttenuation = 0.3;
    minGForce = 0.05;
    maxGForce = 0.1;
    class Exhausts
    {
        class Exhaust1
        {
            position = "Exhaust";
            direction = "Exhaust_dir";
            effect = "ExhaustsEffectHeliBig";
        };
    };
    availableForSupportTypes[] = {"Drop", "Transport"};
    supplyradius = 2;
    epeImpulseDamageCoef = 20;
    damageResistance = 0.01039;
    crewCrashProtection = 0.2;
    extCameraPosition[] = {0, 2, -17};
    threat[] = {0.4, 0, 0};
    showCrewAim = 0;
    mainRotorSpeed = 1.2;
    backRotorSpeed = 6.1;
    fuelCapacity = 781;
    fuelConsumptionRate = 0.09;
    maxFordingDepth = 1.0;
    driveOnComponent[] = {"Skids"};
    mainBladeRadius = 8.2;
    tailBladeRadius = 1.5;
    washDownStrength = "0.9f";
    maxSpeed = 217;
    slingLoadMemoryPoint = "slingLoad0";
    slingLoadMaxCargoMass = 1900;
    radarType = 0;
    liftForceCoef = 1.3;
    cyclicAsideForceCoef = 0.55;
    cyclicForwardForceCoef = 0.5;
    backrotorforcecoef = 0.6;
    bodyFrictionCoef = 0.6;
    sensitivity = 0.5;
    maximumLoad = 4309.128;
    irTarget = 1;
    irTargetSize = 0.9;
    visualTarget = 1;
    visualTargetSize = 1;
    radarTarget = 1;
    radarTargetSize = 1;
    LockDetectionSystem = "0";
    incomingMissileDetectionSystem = "0";
    class RotorLibHelicopterProperties : RotorLibHelicopterProperties
    {
        RTDconfig = "rhsgref\addons\rhsgref_c_air\uh1h\rtd_uh1h.xml";
        autoHoverCorrection[] = {5, 2.4, 0};
        defaultCollective = 0.75;
        starterTime = 10;
        throttleOffToIdle = 10;
        throttleIdleToOff = 10;
        throttleIdleToFull = 8;
        throttleFullToIdle = 15;
        maxTorque = 2168;
        maxMainRotorStress = 130000;
        maxTailRotorStress = 10000;
        retreatBladeStallWarningSpeed = 63;
        rtd_center = "rtd_center";
    };
    enableManualFire = 0;
    class MFD
    {
    };
    class ViewPilot : ViewPilot
    {
        initFov = 0.85;
        maxFov = 0.95;
    };
    soundGetIn[] = {"rhsgref\addons\rhsgref_air\uh1h\Sounds\open_close", 0.56234133, 1};
    soundGetOut[] = {"rhsgref\addons\rhsgref_air\uh1h\Sounds\open_close", 0.7943282, 1, 20};
    soundEngineOnInt[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_start_int", 0.4, 1};
    soundEngineOnExt[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_start_ext", 0.7943282, 1.0, 600};
    soundEngineOffInt[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_stop_int", 0.4, 1};
    soundEngineOffExt[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_stop_ext", 0.7943282, 1.0, 600};
    soundGeneralCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_1", 1.0, 1, 100};
    soundGeneralCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_2", 1.0, 1, 100};
    soundGeneralCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_3", 1.0, 1, 100};
    soundCrashes[] = {"soundGeneralCollision1", 0.33, "soundGeneralCollision2", 0.33, "soundGeneralCollision3", 0.33};
    soundLandCrashes[] = {"emptySound", 0};
    soundBuildingCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundArmorCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundWoodCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
    soundBushCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_1", 1.0, 1, 100};
    soundBushCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_2", 1.0, 1, 100};
    soundBushCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_3", 1.0, 1, 100};
    soundBushCrash[] = {"soundBushCollision1", 0.33, "soundBushCollision2", 0.33, "soundBushCollision3", 0.33};
    soundWaterCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_1", 1.0, 1, 100};
    soundWaterCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_2", 1.0, 1, 100};
    soundWaterCrashes[] = {"soundWaterCollision1", 0.5, "soundWaterCollision2", 0.5};
    soundDammage[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_crash_default_ext_1", 3.1622777, 1};
    soundLocked[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_1", 1, 1};
    soundIncommingMissile[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_2", 0.7, 1};
    rotorDamageInt[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_rotor_int_open_1", 1.0, 1.0};
    rotorDamageOut[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_rotor_ext_1", 2.5118864, 1.0, 150};
    rotorDamage[] = {"rotorDamageInt", "rotorDamageOut"};
    tailDamageInt[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_tail", 1.0, 1.0};
    tailDamageOut[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_tail", 1.0, 1.0, 300};
    tailDamage[] = {"tailDamageInt", "tailDamageOut"};
    landingSoundInt0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.0, 1.0, 100};
    landingSoundInt1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.0, 1.0, 100};
    landingSoundInt[] = {"landingSoundInt0", 0.5, "landingSoundInt1", 0.5};
    landingSoundOut0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.7782794, 1.0, 100};
    landingSoundOut1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.7782794, 1.0, 100};
    landingSoundOut[] = {"landingSoundOut0", 0.5, "landingSoundOut1", 0.5};
    slingCargoAttach0[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEndINT", 1.0, 1.0};
    slingCargoAttach1[] = {"A3\Sounds_F\vehicles\air\noises\SL_1hookLock", 1.0, 1.0, 80};
    slingCargoAttach[] = {"slingCargoAttach0", "slingCargoAttach1"};
    slingCargoDetach0[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEndINT", 1.0, 1.0};
    slingCargoDetach1[] = {"A3\Sounds_F\vehicles\air\noises\SL_1hookUnlock", 1.0, 1.0, 80};
    slingCargoDetach[] = {"slingCargoDetach0", "slingCargoDetach1"};
    slingCargoDetachAir0[] = {"A3\Sounds_F\vehicles\air\noises\SL_unhook_air_int", 1.0, 1.0};
    slingCargoDetachAir1[] = {"A3\Sounds_F\vehicles\air\noises\SL_unhook_air_ext", 1.0, 1.0, 80};
    slingCargoDetachAir[] = {"slingCargoDetach0", "slingCargoDetach1"};
    slingCargoRopeBreak0[] = {"A3\Sounds_F\vehicles\air\noises\SL_rope_break_int", 1.0, 1.0};
    slingCargoRopeBreak1[] = {"A3\Sounds_F\vehicles\air\noises\SL_rope_break_ext", 1.0, 1.0, 80};
    slingCargoRopeBreak[] = {"slingCargoDetach0", "slingCargoDetach1"};
    class Sounds
    {
        class Engine
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_engine_ext_2", 1.2889254, 1.0, 1200};
            frequency = "rotorSpeed";
            volume = "camPos*((rotorSpeed-0.72)*4)";
        };
        class RotorLowOut
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_ext_1", 1.2589254, 1, 1500};
            frequency = "rotorSpeed";
            volume = "camPos*(0 max (rotorSpeed-0.1))";
            cone[] = {1.6, 3.14, 2.0, 0.5};
        };
        class RotorHighOut
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_high_ext_1", 1.2589254, 1, 1500};
            frequency = "rotorSpeed";
            volume = "camPos*10*(0 max (rotorThrust-0.9))";
            cone[] = {1.6, 3.14, 2.0, 0.5};
        };
        class EngineIn
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_engine_int_1", 1, 1};
            frequency = "rotorSpeed";
            volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
        };
        class RotorLowIn
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_int_1", 1, 1};
            frequency = "rotorSpeed";
            volume = "2*(1-camPos)*((rotorSpeed factor[0.3, 1.1]) min (rotorSpeed factor[1.1, 0.3]))";
        };
        class RotorHighIn
        {
            sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_high_int_1", 1, 1};
            frequency = "rotorSpeed";
            volume = "(1-camPos)*3*(rotorThrust-0.9)";
        };
        class TransmissionDamageExt_phase1
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageExt_phase2
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageInt_phase1
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class TransmissionDamageInt_phase2
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.0, 1.0, 150};
            frequency = "0.66 + rotorSpeed / 3";
            volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
        };
        class damageAlarmInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.31622776, 1.0};
            frequency = 1;
            volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
        };
        class damageAlarmExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.2238721, 1.0, 20};
            frequency = 1;
            volume = "engineOn * camPos * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0, 0.001])";
        };
        class rotorLowAlarmInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.31622776, 1.0};
            frequency = 1;
            volume = "engineOn * (1 - camPos) * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
        };
        class rotorLowAlarmExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.2238721, 1.0, 20};
            frequency = 1;
            volume = "engineOn * camPos * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
        };
        class scrubLandInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandInt_open", 1.0, 1.0, 100};
            frequency = 1;
            volume = "2 * (1-camPos) * (scrubLand factor[0.02, 0.05])";
        };
        class scrubLandExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (scrubLand factor[0.02, 0.05])";
        };
        class scrubBuildingInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingInt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "2 * (1 - camPos) * (scrubBuilding factor[0.02, 0.05])";
        };
        class scrubBuildingExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (scrubBuilding factor[0.02, 0.05])";
        };
        class scrubTreeInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "(1 - camPos) * ((scrubTree) factor [0, 0.01])";
        };
        class scrubTreeExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * ((scrubTree) factor [0, 0.01])";
        };
        class RainExt
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\rain1_ext", 1.0, 1.0, 100};
            frequency = 1;
            volume = "camPos * (rain - rotorSpeed/2) * 2";
        };
        class RainInt
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\rain1_int_open", 1.0, 1.0, 100};
            frequency = 1;
            volume = "(1-camPos)*(rain - rotorSpeed/2)*2";
        };
        class SlingLoadDownExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEXT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "camPos*(slingLoadActive factor [0,-1])";
        };
        class SlingLoadUpExt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEXT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "camPos*(slingLoadActive factor [0,1])";
        };
        class SlingLoadDownInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownINT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "(1-camPos)*(slingLoadActive factor [0,-1])";
        };
        class SlingLoadUpInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpINT", 1.0, 1.0, 500};
            frequency = 1;
            volume = "(1-camPos)*(slingLoadActive factor [0,1])";
        };
        class WindInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_int", 1, 1.0, 50};
            frequency = 1;
            volume = "(1-camPos)*(speed factor[5, 50])*(speed factor[5, 50])";
        };
        class WindLateralMovementInt
        {
            sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_lateral_open_int", 1, 1.0, 50};
            frequency = 1;
            volume = "(1-camPos)*lateralMovement*((speed factor [5,40]) + (speed factor [-5,-40]))";
        };
        class GStress
        {
            sound[] = {"A3\Sounds_F\vehicles\noises\vehicle_stress2b", 0.11622776, 1.0, 50};
            frequency = 1;
            volume = "engineOn * (1-camPos) * ((gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]))";
        };
    };
    class SoundsExt
    {
        class SoundEvents
        {
        };
        class Sounds
        {
            class Engine
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_engine_ext_2", 1.2889254, 1.0, 1200};
                frequency = "rotorSpeed";
                volume = "camPos*((rotorSpeed-0.72)*4)";
            };
            class RotorLowOut
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_ext_1", 1.2589254, 1, 1500};
                frequency = "rotorSpeed";
                volume = "camPos*(0 max (rotorSpeed-0.1))";
                cone[] = {1.6, 3.14, 2.0, 0.5};
            };
            class RotorHighOut
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_high_ext_1", 1.2589254, 1, 1500};
                frequency = "rotorSpeed";
                volume = "camPos*10*(0 max (rotorThrust-0.9))";
                cone[] = {1.6, 3.14, 2.0, 0.5};
            };
            class EngineIn
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_engine_int_1", 1, 1};
                frequency = "rotorSpeed";
                volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
            };
            class RotorLowIn
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_int_1", 1, 1};
                frequency = "rotorSpeed";
                volume = "2*(1-camPos)*((rotorSpeed factor[0.3, 1.1]) min (rotorSpeed factor[1.1, 0.3]))";
            };
            class RotorHighIn
            {
                sound[] = {"rhsgref\addons\rhsgref_air\uh1h\sounds\uh1h_rotor_high_int_1", 1, 1};
                frequency = "rotorSpeed";
                volume = "(1-camPos)*3*(rotorThrust-0.9)";
            };
            class TransmissionDamageExt_phase1
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageExt_phase2
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageInt_phase1
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class TransmissionDamageInt_phase2
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.0, 1.0, 150};
                frequency = "0.66 + rotorSpeed / 3";
                volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
            };
            class damageAlarmInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.31622776, 1.0};
                frequency = 1;
                volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
            };
            class damageAlarmExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_bluefor", 0.2238721, 1.0, 20};
                frequency = 1;
                volume = "engineOn * camPos * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0, 0.001])";
            };
            class rotorLowAlarmInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.31622776, 1.0};
                frequency = 1;
                volume = "engineOn * (1 - camPos) * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
            };
            class rotorLowAlarmExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_alarm_rotor_low", 0.2238721, 1.0, 20};
                frequency = 1;
                volume = "engineOn * camPos * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
            };
            class scrubLandInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandInt_open", 1.0, 1.0, 100};
                frequency = 1;
                volume = "2 * (1-camPos) * (scrubLand factor[0.02, 0.05])";
            };
            class scrubLandExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubLandExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (scrubLand factor[0.02, 0.05])";
            };
            class scrubBuildingInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingInt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "2 * (1 - camPos) * (scrubBuilding factor[0.02, 0.05])";
            };
            class scrubBuildingExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubBuildingExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (scrubBuilding factor[0.02, 0.05])";
            };
            class scrubTreeInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "(1 - camPos) * ((scrubTree) factor [0, 0.01])";
            };
            class scrubTreeExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * ((scrubTree) factor [0, 0.01])";
            };
            class RainExt
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\rain1_ext", 1.0, 1.0, 100};
                frequency = 1;
                volume = "camPos * (rain - rotorSpeed/2) * 2";
            };
            class RainInt
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\rain1_int_open", 1.0, 1.0, 100};
                frequency = 1;
                volume = "(1-camPos)*(rain - rotorSpeed/2)*2";
            };
            class SlingLoadDownExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEXT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "camPos*(slingLoadActive factor [0,-1])";
            };
            class SlingLoadUpExt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpEXT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "camPos*(slingLoadActive factor [0,1])";
            };
            class SlingLoadDownInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownINT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "(1-camPos)*(slingLoadActive factor [0,-1])";
            };
            class SlingLoadUpInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpINT", 1.0, 1.0, 500};
                frequency = 1;
                volume = "(1-camPos)*(slingLoadActive factor [0,1])";
            };
            class WindInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_open_int", 1.1220185, 1.0, 50};
                frequency = 1;
                volume = "(1-camPos)*(speed factor[5, 50])*(speed factor[5, 50])";
            };
            class WindLateralMovementInt
            {
                sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_lateral_open_int", 1.9952624, 1.0, 50};
                frequency = 1;
                volume = "(1-camPos)*lateralMovement*((speed factor [5,40]) + (speed factor [-5,-40]))";
            };
            class GStress
            {
                sound[] = {"A3\Sounds_F\vehicles\noises\vehicle_stress2b", 0.11622776, 1.0, 50};
                frequency = 1;
                volume = "engineOn * (1-camPos) * ((gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]))";
            };
        };
    };
    class Reflectors
    {
        class Front
        {
            color[] = {11000, 7000, 5000};
            ambient[] = {11, 7, 5};
            intensity = 120;
            size = 1;
            innerAngle = 15;
            outerAngle = 65;
            coneFadeCoef = 10;
            position = "Light_pos";
            direction = "Light_dir";
            hitpoint = "Light_hitpoint";
            selection = "Light";
            useFlare = 1;
            flareSize = 10;
            flareMaxDistance = 250;
            dayLight = 1;
            class Attenuation
            {
                start = 0;
                constant = 0;
                linear = 1;
                quadratic = 1;
                hardLimitStart = 100;
                hardLimitEnd = 300;
            };
        };
    };
    class MarkerLights
    {
        class CollisionLight_Red
        {
            name = "CollisionLight_Red";
            color[] = {0.9, 0.15, 0.1};
            ambient[] = {0.09, 0.015, 0.01};
            intensity = 20;
            blinking = 1;
            blinkingPattern[] = {0.1, 0.9};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
            class Attenuation
            {
                start = 0;
                constant = 0;
                linear = 25;
                quadratic = 50;
                hardLimitStart = 0;
                hardLimitEnd = 25;
            };
        };
        class Red_Interior : CollisionLight_Red
        {
            name = "Interior_Red";
            color[] = {0.9, 0.15, 0.1};
            ambient[] = {0.09, 0.015, 0.01};
            intensity = 800;
            blinking = 0;
            drawLightSize = 0;
            drawLightCenterSize = 0;
        };
        class Red_Top_Position : CollisionLight_Red
        {
            name = "CollisionLight_Top_Red";
            color[] = {0.9, 0.15, 0.1};
            ambient[] = {0.09, 0.015, 0.01};
            intensity = 20;
            blinking = 1;
            blinkingPattern[] = {0.5, 0.5};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
        };
        class Green_Position : CollisionLight_Red
        {
            name = "CollisionLight_Green";
            color[] = {0.4, 1, 0.5};
            ambient[] = {0.04, 0.1, 0.05};
        };
    };
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
            CanEject = 0;
            isCopilot = 1;
            hideWeaponsGunner = 0;
            gunnerAction = "RHS_UH1H_CoPilot";
            gunnerInAction = "RHS_UH1H_CoPilot";
            memoryPointsGetInGunner = "pos Codriver";
            memoryPointsGetInGunnerDir = "pos Codriver dir";
            gunnerGetInAction = "copilot_Heli_Light_02_Enter";
            gunnerGetOutAction = "copilot_Heli_Light_02_Exit";
            preciseGetInOut = 1;
            GunnerDoor = "door_copilot";
            gunnerLeftHandAnimName = "collective";
            gunnerRightHandAnimName = "stick_copilot";
            gunnerLeftLegAnimName = "PedalL";
            gunnerRightLegAnimName = "PedalR";
            gunBeg = "muzzle_copilot";
            gunEnd = "chamber_copilot";
            primaryGunner = 1;
            proxyIndex = 1;
            LODTurnedIn = 1100;
            LODTurnedOut = 1100;
            gunnerCompartments = "Compartment2";
            weapons[] = {"rhs_weap_DummyLauncher", "rhs_weap_fcs_nolrf_ammo"};
            magazines[] = {"rhs_laserfcsmag", "rhs_laserfcsmag"};
            class ViewGunner
            {
                minAngleX = -65;
                maxAngleX = 85;
                initAngleX = 0;
                minAngleY = -150;
                maxAngleY = 150;
                initAngleY = 0;
                minFov = 0.25;
                maxFov = 0.95;
                initFov = 0.85;
            };
            class Hitpoints
            {
            };
        };
        class RightGunner : MainTurret
        {
            body = "RightTurretBase";
            gun = "RightTurretGun";
            animationSourceBody = "RightTurretBase";
            animationSourceGun = "RightTurretGun";
            turretInfoType = "RHS_RscWeaponZeroing";
            CanEject = 1;
            isCopilot = 0;
            initelev = 0;
            initturn = -90;
            maxelev = 20;
            maxturn = -25;
            minelev = -55;
            minturn = -135;
            soundServo[] = {"", 0.01, 1.0};
            stabilizedInAxes = 0;
            weapons[] = {"rhs_weap_m240H_2"};
            magazines[] = {"rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80"};
            discreteDistance[] = {200, 300, 400, 500, 600, 700, 800};
            discreteDistanceInitIndex = 0;
            gunBeg = "muzzle_2";
            gunEnd = "chamber_2";
            gunnerName = "$STR_A3_RIGHT_GUNNER";
            memoryPointsGetInGunner = "pos Gunner R";
            memoryPointsGetInGunnerDir = "pos Gunner R dir";
            gunneropticsmodel = "\A3\weapons_f\reticle\optics_empty";
            memoryPointGunnerOptics = "gunnerview_2";
            gunnerOutOpticsShowCursor = 1;
            gunnerLeftHandAnimName = "OtocHlaven_2";
            gunnerRightHandAnimName = "OtocHlaven_2";
            gunnerLeftLegAnimName = "gunner_2_leg_left";
            gunnerRightLegAnimName = "gunner_2_legs";
            gunnerAction = "RHS_UH1H_Gunner_R";
            gunnerInAction = "RHS_UH1H_Gunner_R";
            selectionFireAnim = "zasleh_2";
            primaryGunner = 0;
            proxyIndex = 3;
            class ViewOptics
            {
                initanglex = 0;
                initangley = 0;
                initfov = 0.7;
                maxanglex = 30;
                maxangley = 100;
                maxfov = 1.1;
                minanglex = -30;
                minangley = -100;
                minfov = 0.25;
            };
            gunnerCompartments = "Compartment3";
            soundAttenuationTurret = "HeliAttenuationGunner";
            disableSoundAttenuation = 0;
            class Hitpoints
            {
            };
        };
        class LeftGunner : RightGunner
        {
            body = "LeftTurretBase";
            gun = "LeftTurretGun";
            animationSourceBody = "LeftTurretBase";
            animationSourceGun = "LeftTurretGun";
            weapons[] = {"rhs_weap_m240H_1"};
            magazines[] = {"rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80", "rhs_mag_762x51_M240_200_M80"};
            gunBeg = "muzzle_1";
            gunEnd = "chamber_1";
            gunnerLeftHandAnimName = "OtocHlaven_1";
            gunnerRightHandAnimName = "OtocHlaven_1";
            gunnerLeftLegAnimName = "gunner_1_leg_left";
            gunnerRightLegAnimName = "gunner_1_legs";
            gunnerAction = "RHS_UH1H_Gunner_L";
            gunnerInAction = "RHS_UH1H_Gunner_L";
            memoryPointsGetInGunner = "pos Gunner L";
            memoryPointsGetInGunnerDir = "pos Gunner L dir";
            primaryGunner = 0;
            proxyIndex = 2;
            memoryPointGunnerOptics = "gunnerview_1";
            selectionFireAnim = "zasleh_1";
            gunnerName = "$STR_A3_LEFT_GUNNER";
            initelev = 0;
            initturn = 90;
            maxelev = 20;
            maxturn = 125;
            minelev = -55;
            minturn = 30;
        };
        class CargoTurret_01 : CargoTurret
        {
            gunnerAction = "passenger_bench_1";
            gunnerGetInAction = "GetInHeli_Light_01bench";
            gunnerCompartments = "compartment3";
            memoryPointsGetInGunner = "pos Gunner L";
            memoryPointsGetInGunnerDir = "pos Gunner L dir";
            gunnerName = "Passenger (Left Door)";
            gunBeg = "muzzle_copilot";
            gunEnd = "chamber_copilot";
            proxyIndex = 7;
            maxElev = 45;
            minElev = -55;
            maxTurn = 70;
            minTurn = -10;
            isPersonTurret = 1;
            ejectDeadGunner = 0;
            playerPosition = 4;
            soundAttenuationTurret = "";
            disableSoundAttenuation = 1;
            weapons[] = {"rhs_weap_DummyLauncher"};
            class Hitpoints
            {
            };
        };
        class CargoTurret_02 : CargoTurret_01
        {
            gunnerCompartments = "compartment3";
            memoryPointsGetInGunner = "pos Gunner R";
            memoryPointsGetInGunnerDir = "pos Gunner R dir";
            gunnerName = "Passenger (Right Door)";
            proxyIndex = 8;
            maxTurn = 35;
            minTurn = -60;
        };
    };
    class AnimationSources : AnimationSources
    {
        class door_pilot
        {
            source = "door";
            animPeriod = 0.8;
            initPhase = 0;
            sound = "MetalDoorsSound";
            soundPosition = "axis_door_pilot";
        };
        class door_copilot : door_pilot
        {
            soundPosition = "axis_door_copilot";
        };
        class rightturretbase
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class rightturretgun
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class leftturretgun
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class leftturretbase
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class Hide_mid_doors
        {
            source = "user";
            animPeriod = 1e-07;
            initPhase = 1;
        };
        class close_cargo_doors
        {
            source = "door";
            sound = "RollDoorsSound";
            soundPosition = "door_sounds";
            animPeriod = 1.5;
            initPhase = 0;
        };
        class hide_crosshair
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 1;
        };
        class Hide_guns
        {
            source = "user";
            animPeriod = 1e-07;
            initPhase = 0;
        };
        class hide_gunmount
        {
            source = "user";
            animPeriod = 1e-07;
            initPhase = 1;
        };
        class reloadAnim_1
        {
            source = "reload";
            weapon = "rhs_weap_m240H_1";
        };
        class reloadMagazine_1
        {
            source = "reloadmagazine";
            weapon = "rhs_weap_m240H_1";
        };
        class revolving_1
        {
            source = "revolving";
            weapon = "rhs_weap_m240H_1";
        };
        class reloadAnim_2
        {
            source = "reload";
            weapon = "rhs_weap_m240H_2";
        };
        class reloadMagazine_2
        {
            source = "reloadmagazine";
            weapon = "rhs_weap_m240H_2";
        };
        class revolving_2
        {
            source = "revolving";
            weapon = "rhs_weap_m240H_2";
        };
        class hit_pylon_1_source
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class hit_pylon_2_source
        {
            source = "user";
            initPhase = 0;
            animPeriod = 0;
        };
        class HitGlass1
        {
            source = "Hit";
            hitpoint = "HitGlass1";
            raw = 1;
        };
        class HitGlass2
        {
            source = "Hit";
            hitpoint = "HitGlass2";
            raw = 1;
        };
        class HitGlass3
        {
            source = "Hit";
            hitpoint = "HitGlass3";
            raw = 1;
        };
        class HitGlass4
        {
            source = "Hit";
            hitpoint = "HitGlass4";
            raw = 1;
        };
        class HitGlass5
        {
            source = "Hit";
            hitpoint = "HitGlass5";
            raw = 1;
        };
        class HitGlass6
        {
            source = "Hit";
            hitpoint = "HitGlass6";
            raw = 1;
        };
        class HitGlass7
        {
            source = "Hit";
            hitpoint = "HitGlass7";
            raw = 1;
        };
    };
    armor = 35;
    armorStructural = 20;
    hullDamageCauseExplosion = 1;
    hullExplosionDelay[] = {10, 20};
    class HitPoints : HitPoints
    {
        class HitHull
        {
            simulation = "RHS_Hull_Helicopter";
            armor = -100;
            minimalHit = -0.2;
            explosionShielding = 1;
            radius = 0.4;
            armorComponent = "Hit_Hull";
            name = "hit_hull";
            visual = "zbytek";
            passThrough = 1;
            class DestructionEffects : RHS_Effects_Helicopter_Hull_Destruction
            {
            };
        };
        class HitFuel
        {
            armor = -70;
            name = "hit_fuel";
            visual = "-";
            radius = 0.15;
            explosionShielding = 1.5;
            passThrough = 0.2;
        };
        class HitGlass1
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass1";
            name = "glass1";
            visual = "glass1";
        };
        class HitGlass2
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass2";
            name = "glass2";
            visual = "glass2";
        };
        class HitGlass3
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass3";
            name = "glass3";
            visual = "glass3";
        };
        class HitGlass4
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass4";
            name = "glass4";
            visual = "glass4";
        };
        class HitGlass5
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass5";
            name = "glass5";
            visual = "glass5";
        };
        class HitGlass6
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass6";
            name = "glass6";
            visual = "glass6";
        };
        class HitGlass7
        {
            armor = -12;
            explosionShielding = 1;
            passThrough = 0.0;
            minimalHit = -0.1;
            radius = 0.2;
            armorComponent = "glass7";
            name = "glass7";
            visual = "glass7";
        };
        class HitVRotor : HitVRotor
        {
            simulation = "RHS_Hull_Helicopter";
            armorComponent = "Hit_Tail";
            name = "Hit_Rotor_Tail";
            visual = "tail rotor static";
            armor = -80;
            minimalHit = -0.2;
            radius = 0.3;
            explosionShielding = 3;
            passThrough = 0.5;
        };
        class HitHRotor : HitHRotor
        {
            armorComponent = "Hit_Rotor_Main";
            name = "Hit_Rotor_Main";
            visual = "main rotor static";
            armor = -90;
            radius = 0.2;
            explosionShielding = 0.5;
        };
        class HitAvionics : HitAvionics
        {
            armor = -40;
            visual = "";
            name = "elektronika";
            radius = 0.05;
            explosionShielding = 1.5;
        };
        class HitEngine : HitEngine
        {
            armorComponent = "Hit_Engine";
            armor = -80;
            name = "motor";
            passThrough = 0.5;
            minimalHit = -0.12;
            explosionShielding = 2;
            radius = 0.27;
        };
        class HitWinch
        {
            armor = 999;
            name = "";
            visual = "-";
            radius = 0.001;
            passThrough = 0;
        };
    };
    class Damage
    {
        tex[] = {};
        mat[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit1.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit1.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit1_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit2.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit2.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit2_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit3.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit3.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_cockpit3_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_glass.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_glass_damage.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_glass_damage.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_in.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_in.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_in_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_instruments.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_instruments.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_instruments_destruct.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_rotor.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_rotor.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_rotor_destruct.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default.rvmat", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_destruct.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default_destruct.rvmat"};
    };
    hiddenSelections[] = {"decals"};
    hiddenSelectionsTextures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
    irScanRangeMin = 100;
    irScanRangeMax = 1000;
    irScanToEyeFactor = 2;
    class Components;
    class textureSources
    {
        class hidf_grey
        {
            displayName = "HIDF Grey";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_grey_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_grey_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_hidf_grey_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_hidf_decals_ca.paa"};
            factions[] = {"rhsgref_faction_hidf"};
        };
        class hidf_summer : hidf_grey
        {
            displayName = "HIDF MERDC (Summer verdant)";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_summer_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_summer_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_hidf_tropical_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
        };
        class hidf_tropical : hidf_grey
        {
            displayName = "HIDF MERDC (Tropical verdant)";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_tropical_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_tropical_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_hidf_tropical_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
        };
        class hidf_olv : hidf_grey
        {
            displayName = "HIDF Olive";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_olv_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_olv_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_us_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_hidf_decals_ca.paa"};
        };
        class hidf_tan : hidf_grey
        {
            displayName = "HIDF Tan";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_tan_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_tan_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_tan_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_hidf_decals_ca.paa"};
        };
        class un
        {
            displayName = "UN";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_un_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_un_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_un_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_un_decals_ca.paa"};
            factions[] = {"rhsgref_faction_un"};
        };
        class idap
        {
            displayName = "IDAP";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_idap_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_idap_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_un_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_idap_decals_ca.paa"};
            factions[] = {"CIV_IDAP_F"};
        };
        class us_army
        {
            displayName = "US Army";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_us_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_us_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_us_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_us_decals_ca.paa"};
            factions[] = {"rhs_faction_usarmy_wd", "rhs_faction_usarmy_d"};
        };
        class us_army_med : us_army
        {
            displayName = "US Army (Medevac)";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_us_med_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_us_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_us_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_us_decals_ca.paa"};
        };
        class black
        {
            displayName = "Black";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_black_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_black_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_black_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
            factions[] = {"CIV_F"};
        };
        class iraq
        {
            displayName = "Iraqi Air Force";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_iaf_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_iaf_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_iaf_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
            factions[] = {"IND_F"};
        };
        class takistan
        {
            displayName = "Takistan";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_tka_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_in_tka_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_tka_co", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
            factions[] = {"OPF_F"};
        };
        class guerilla
        {
            displayName = "Guerilla";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_gue_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_gue_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_gue_co", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
            factions[] = {"IND_G_F", "BLU_G_F", "OPF_G_F"};
        };
        class tan
        {
            displayName = "Tan";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_tan_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_tan_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_tan_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
            factions[] = {"IND_G_F", "BLU_G_F", "OPF_G_F", "IND_F"};
        };
        class olive : tan
        {
            displayName = "Olive";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_olv_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_olv_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_us_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
        };
        class white : tan
        {
            displayName = "White";
            textures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_un_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_un_in_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\mlod_un_co.paa", "rhsgref\addons\rhsgref_air\uh1h\data\decals\blank_ca.paa"};
        };
    };
};

class cgqc_heli_uh1 : cgqc_heli_uh1_base
{
    scope = 2;
    author = "silent1";
    displayName = "UH1H Huey(8+3)";
    editorPreview = "rhsgref\addons\rhsgref_editorPreviews\data\rhs_uh1h_hidf.paa";
    scopeCurator = 2;
    side = 1;
    faction = "cgqc";
    crew = "CGQC_units_mk1_4_Pilot_heli";
    typicalCargo[] = {"CGQC_units_mk1_4_crew_heli"};
#include "loadouts\cgqc_heli_medium.sqf"
    enableSweep = 0;
    hiddenSelections[] = {"Camo1", "Camo2", "Camo_mlod", "decals"};
    hiddenSelectionsTextures[] = {"rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_grey_co.paa",
                                  "rhsgref\addons\rhsgref_air\uh1h\data\uh1h_hidf_grey_in_co.paa",
                                  "rhsgref\addons\rhsgref_air\uh1h\data\mlod_hidf_grey_co.paa",
                                  "rhsgref\addons\rhsgref_air\uh1h\data\decals\uh1h_hidf_decals_ca.paa"};
    class textureSources : textureSources
    {
        class hidf_grey : hidf_grey
        {
        };
        class hidf_summer : hidf_summer
        {
        };
        class hidf_tropical : hidf_tropical
        {
        };
        class hidf_olv : hidf_olv
        {
        };
        class hidf_tan : hidf_tan
        {
        };
        class us_army : us_army
        {
        };
        class us_army_med : us_army_med
        {
        };
        class black : black
        {
        };
        class iraq : iraq
        {
        };
        class takistan : takistan
        {
        };
        class guerilla : guerilla
        {
        };
    };
    class AnimationSources : AnimationSources
    {
        class Hide_mid_doors
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 1;
        };
    };
    textureList[] = {};
    class Attributes
    {
        class uh1h_textures
        {
            control = "ObjectTexture";
            data = "ObjectTexture";
            displayName = "Paint";
            tooltip = "Select paint color.";
        };
    };
};

// Blackhawk ------------------------------------------------------------------------------------------------
class cgqc_heli_U60_base : Heli_Transport_01_base_F
{
    scope = 0;
    author = "silent1";
    dlc = "RHS_USAF";
    LESH_canBeTowed = 1;
    LESH_towFromFront = 0;
    LESH_AxisOffsetTarget[] = {0, -8, -1.62};
    LESH_WheelOffset[] = {0, 3};
    rhs_hasNoRadar = 1;
    category = "Air";
    memoryPointCM[] = {"flare_launcher1", "flare_launcher2"};
    memoryPointCMDir[] = {"flare_launcher1_dir", "flare_launcher2_dir"};
    irTarget = 1;
    irTargetSize = 0.9;
    visualTarget = 1;
    visualTargetSize = 1;
    radarTarget = 1;
    radarTargetSize = 1;
    LockDetectionSystem = "4 + 8";
    incomingMissileDetectionSystem = "2 + 8 + 16";
    class pilotCamera
    {
    };
    availableForSupportTypes[] = {"Drop", "Transport"};
    helmetMountedDisplay = 0;
    cargoCanEject = 1;
    driverCanEject = 0;
    class MFD
    {
    };
    class Components;
    weapons[] = {"rhsusf_weap_ANALQ144"};
    magazines[] = {"rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM"};
    unitInfoType = "RHSUSF_RscUnitInfoAir_UH60";
    unitInfoTypeRTD = "RHSUSF_RscUnitInfoAirRTDFullDigital";
    vehicleClass = "rhs_vehclass_helicopter";
    selectionHRotorStill = "velka vrtule staticka";
    selectionHRotorMove = "velka vrtule blur";
    selectionVRotorStill = "mala vrtule staticka";
    selectionVRotorMove = "mala vrtule blur";
    selectionDamage = "trup";
    selectionShowDamage = "poskozeni";
    slingLoadMaxCargoMass = 4084;
    memoryPointLRocket = "l raketa";
    memoryPointRRocket = "p raketa";
    memoryPointLMissile = "l strela";
    memoryPointRMissile = "p strela";
    GetInAction = "pilot_Heli_Light_02_Enter";
    GetOutAction = "pilot_Heli_Light_02_Exit";
    preciseGetInOut = 1;
    getInRadius = 1.5;
};

class cgqc_heli_UH60M_base : cgqc_heli_U60_base
{
    scope = 0;
    author = "silent1";
    displayName = "UH60M Blackhawk";
    model = "\rhsusf\addons\rhsusf_a2port_air\UH60M\UH60M.p3d";
    picture = "\rhsusf\addons\rhsusf_a2port_air\data\ico\rhs_uh60m_pic_ca.paa";
    icon = "\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_uh60m_CA.paa";
    mapSize = 17;
    helmetMountedDisplay = 0;
    class MFD
    {
    };
    class Library
    {
        libTextDesc = "UH60M";
    };
    crew = "CGQC_units_mk1_4_Pilot_heli";
    typicalCargo[] = {"CGQC_units_mk1_4_crew_heli"};
    transportSoldier = 12;
    driverDoor = "doorR";
    memoryPointsGetInDriver = "pos Driver";
    memoryPointsGetInDriverDir = "pos driver dir";
    memoryPointsGetInDriverPrecise = "pos driver";
    memoryPointsGetInGunner = "pos gunner";
    memoryPointsGetInGunnerDir = "pos gunner dir";
    memoryPointsGetInCargo[] = {"pos cargo L", "pos cargo L2", "pos cargo L3", "pos cargo L4", "pos cargo R", "pos cargo R2", "pos cargo R3", "pos cargo R4"};
    memoryPointsGetInCargoDir[] = {"pos cargo L dir", "pos cargo L2 dir", "pos cargo L3 dir", "pos cargo L4 dir", "pos cargo R dir", "pos cargo R2 dir", "pos cargo R3 dir", "pos cargo R4 dir"};
    cargoDoors[] = {"DoorLB", "DoorLB", "DoorLB", "DoorLB", "DoorRB", "DoorRB", "DoorRB", "DoorRB"};
    cargoIsCoDriver[] = {0};
    threat[] = {0.8, 0.1, 0.3};
    gunnerCanSee = "2+4+8+16";
    driverCanSee = "2+4+8+16";
    reportOwnPosition = 1;
    class Components : Components
    {
        class SensorsManagerComponent
        {
            class Components
            {
                class PassiveRadarSensorComponent : SensorTemplatePassiveRadar
                {
                };
            };
        };
        class VehicleSystemsDisplayManagerComponentLeft : DefaultVehicleSystemsDisplayManagerLeft
        {
            class Components
            {
                class EmptyDisplay
                {
                    componentType = "EmptyDisplayComponent";
                };
                class MinimapDisplay
                {
                    componentType = "MinimapDisplayComponent";
                    resource = "RscCustomInfoMiniMap";
                };
                class CrewDisplay
                {
                    componentType = "CrewDisplayComponent";
                    resource = "RscCustomInfoCrew";
                };
                class SlingLoadDisplay
                {
                    componentType = "SlingLoadDisplayComponent";
                    resource = "RscCustomInfoSlingLoad";
                };
                class SensorDisplay
                {
                    componentType = "SensorsDisplayComponent";
                    resource = "RscCustomInfoSensors";
                    range[] = {3000, 8000, 16000, 35000};
                };
            };
        };
        class VehicleSystemsDisplayManagerComponentRight : DefaultVehicleSystemsDisplayManagerRight
        {
            defaultDisplay = "SensorDisplay";
            class Components
            {
                class EmptyDisplay
                {
                    componentType = "EmptyDisplayComponent";
                };
                class MinimapDisplay
                {
                    componentType = "MinimapDisplayComponent";
                    resource = "RscCustomInfoMiniMap";
                };
                class CrewDisplay
                {
                    componentType = "CrewDisplayComponent";
                    resource = "RscCustomInfoCrew";
                };
                class SlingLoadDisplay
                {
                    componentType = "SlingLoadDisplayComponent";
                    resource = "RscCustomInfoSlingLoad";
                };
                class SensorDisplay
                {
                    componentType = "SensorsDisplayComponent";
                    resource = "RscCustomInfoSensors";
                    range[] = {3000, 8000, 16000, 35000};
                };
            };
        };
        class TransportPylonsComponent
        {
            UIPicture = "\rhsusf\addons\rhsusf_a2port_air\data\loadouts\RHS_UH60_EDEN_CA.paa";
            class pylons
            {
                class cmDispenser
                {
                    hardpoints[] = {"RHSUSF_cm_M130", "RHSUSF_cm_M130_x2"};
                    priority = 1;
                    attachment = "rhsusf_M130_CMFlare_Chaff_Magazine_x2";
                    maxweight = 800;
                    UIposition[] = {0.33, 0.0};
                };
            };
        };
    };
#include "loadouts\cgqc_heli_medium.sqf"
    radarType = 0;
    attenuationEffectType = "HeliAttenuation";
    occludeSoundsWhenIn = 0.56234133;
    obstructSoundsWhenIn = 0.31622776;
    driverInAction = "RHS_UH60M_Pilot";
    driverAction = "RHS_UH60M_Pilot";
    cargoAction[] = {"RHS_UH60_Cargo02"};
    class Sounds : Sounds
    {
        class EngineExt
        {
            sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_ext_engine", 1.71254, 1, 800};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.8";
            volume = "camPos*((rotorSpeed-0.72)*4)";
        };
        class EngineInt
        {
            sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_int_engine", 1, 1};
            frequency = "rotorSpeed*(1+rotorThrust/6)*0.8";
            volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
        };
        class RotorInt
        {
            sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_int_rotor", 0.501187, 1};
            frequency = "rotorSpeed * (1-rotorThrust/5) * 1.2";
            volume = "(1-camPos)*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)*0.9";
        };
        class DistanceSound
        {
            sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_distant", 1.41, 1, 3200};
            frequency = "rotorSpeed";
            volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
        };
    };
    class SoundsExt : SoundsExt
    {
        class SoundEvents
        {
        };
        class Sounds : Sounds
        {
            class EngineExt
            {
                sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_ext_engine", 1.71254, 1, 800};
                frequency = "rotorSpeed*(1+rotorThrust/6)*0.8";
                volume = "camPos*((rotorSpeed-0.72)*4)";
            };
            class EngineInt
            {
                sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_int_engine", 1, 1};
                frequency = "rotorSpeed*(1+rotorThrust/6)*0.8";
                volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
            };
            class RotorInt
            {
                sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_int_rotor", 0.501187, 1};
                frequency = "rotorSpeed * (1-rotorThrust/5) * 1.2";
                volume = "(1-camPos)*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)*0.9";
            };
            class DistanceSound
            {
                sound[] = {"rhsusf\addons\rhsusf_sounds\0_vehicles\uh60\BlackHawk_distant", 1.41, 1, 3200};
                frequency = "rotorSpeed";
                volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
            };
        };
    };
    class Exhausts
    {
        class Exhaust1
        {
            position = "exhaust1";
            direction = "exhaust1_dir";
            effect = "ExhaustsEffectHeliCom";
        };
        class Exhaust2
        {
            position = "exhaust2";
            direction = "exhaust2_dir";
            effect = "ExhaustsEffectHeliCom";
        };
    };
    class MarkerLights
    {
        class WhiteStill
        {
            name = "bily pozicni";
            color[] = {1, 1, 1};
            ambient[] = {0.1, 0.1, 0.1};
            blinking = 1;
            intensity = 75;
            blinkingPattern[] = {0.1, 0.9};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
        };
        class RedStill
        {
            name = "cerveny pozicni";
            color[] = {0.8, 0, 0};
            ambient[] = {0.08, 0, 0};
            intensity = 75;
            drawLight = 1;
            drawLightSize = 0.15;
            drawLightCenterSize = 0.04;
            activeLight = 0;
            blinking = 0;
            dayLight = 0;
            useFlare = 0;
        };
        class GreenStill : RedStill
        {
            name = "zeleny pozicni";
            color[] = {0, 0.8, 0};
            ambient[] = {0, 0.08, 0};
        };
        class RedBlinking
        {
            name = "bily pozicni blik";
            color[] = {0.9, 0.15, 0.1};
            ambient[] = {0.09, 0.015, 0.01};
            intensity = 75;
            blinking = 1;
            blinkingPattern[] = {0.1, 0.9};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
        };
        class WhiteBlinking : RedBlinking
        {
            name = "cerveny pozicni blik";
            blinkingPattern[] = {0.2, 1.3};
            drawLightSize = 0.25;
            drawLightCenterSize = 0.08;
        };
    };
    class Reflectors
    {
        class Middle
        {
            color[] = {7000, 7500, 10000, 1};
            ambient[] = {100, 100, 100, 0};
            position = "L svetlo";
            direction = "konec L svetla";
            hitpoint = "L svetlo";
            selection = "L svetlo";
            size = 1;
            innerAngle = 20;
            outerAngle = 60;
            coneFadeCoef = 10;
            intensity = 50;
            useFlare = 1;
            dayLight = 0;
            FlareSize = 6;
            class Attenuation
            {
                start = 1;
                constant = 0;
                linear = 0;
                quadratic = 4;
            };
        };
        class Right : Middle
        {
            position = "P svetlo";
            direction = "konec P svetla";
            hitpoint = "P svetlo";
            selection = "P svetlo";
        };
    };
    armorStructural = 20;
    epeImpulseDamageCoef = 1;
    hullDamageCauseExplosion = 1;
    hullExplosionDelay[] = {10, 20};
    class HitPoints : HitPoints
    {
        class HitHull : HitHull
        {
            simulation = "RHS_Hull_Helicopter";
            armor = -120;
            minimalHit = -0.2;
            radius = 0.2;
            name = "hull_hit";
            armorComponent = "Hit_Hull";
            visual = "zbytek";
            passThrough = 1;
            class DestructionEffects : RHS_Effects_Helicopter_Hull_Destruction
            {
            };
        };
        class HitEngine1 : HitEngine1
        {
            armor = -80;
            radius = 0.18;
            explosionShielding = 0.7;
            minimalHit = -0.05;
            name = "engine_1_hit";
            armorComponent = "Hit_Engine_1";
        };
        class HitEngine2 : HitEngine1
        {
            name = "engine_2_hit";
            armorComponent = "Hit_Engine_2";
        };
        class HitEngine : HitEngine2
        {
            armor = 999;
            name = "engine_hit";
            depends = "0.5 * (HitEngine1 + HitEngine2)";
        };
        class HitTail
        {
            armor = -150;
            explosionShielding = 0.2;
            passThrough = 0.5;
            minimalHit = -0.15;
            radius = 0.13;
            armorComponent = "Hit_Tail";
            name = "Hit_Tail";
            visual = "vis_tail";
            simulation = "RHS_Hull_Helicopter";
        };
        class HitVRotor
        {
            armor = -60;
            minimalHit = -0.1;
            armorComponent = "Hit_Rotor_Rear";
            name = "tail_rotor_hit";
            visual = "mala vrtule staticka";
            passThrough = 0.5;
            radius = 0.18;
            depends = "HitTail";
        };
        class HitHRotor
        {
            armor = -60;
            minimalHit = -0.1;
            armorComponent = "Hit_Rotor_Main";
            name = "velka vrtule";
            visual = "velka vrtule staticka";
            passThrough = 0.0;
            radius = 0.28;
        };
        class HitWinch
        {
            armor = -20;
            name = "Hit_Winch";
            visual = "";
            passThrough = 0;
            radius = 0.2;
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class Explo
                {
                    simulation = "particles";
                    type = "WinchDestructionExplo";
                    position = "slingLoad0";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.06;
                };
                class Sparks
                {
                    simulation = "particles";
                    type = "WinchDestructionSparks";
                    position = "slingLoad0";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.1;
                };
            };
        };
        class HitGlass7 : HitGlass1
        {
            name = "glass7";
            visual = "glass7";
        };
        class HitHydraulics
        {
            armor = -60;
            explosionShielding = 0.5;
            passThrough = 0.1;
            minimalHit = -0.15;
            radius = 0.13;
            material = -1;
            armorComponent = "hit_hydraulics";
            name = "hit_hydraulics";
            visual = "-";
            depends = "0";
        };
        class HitTransmission
        {
            armor = -20;
            explosionShielding = 0.5;
            passThrough = 0.1;
            minimalHit = -0.1;
            radius = 0.13;
            material = -1;
            name = "hit_transmission";
            visual = "-";
            depends = "0";
        };
        class HitHStabilizerL1
        {
            armor = -30;
            explosionShielding = 0.5;
            passThrough = 0.1;
            minimalHit = 0.1;
            radius = 0.13;
            material = -1;
            armorComponent = "Hit_Stabilizer_L";
            name = "Hit_Stabilizer_L";
            visual = "vis_stabilizer_h";
            depends = "0";
        };
        class HitHStabilizerR1
        {
            armor = -30;
            explosionShielding = 0.5;
            passThrough = 0.1;
            minimalHit = 0.1;
            radius = 0.13;
            material = -1;
            armorComponent = "Hit_Stabilizer_R";
            name = "Hit_Stabilizer_R";
            visual = "vis_stabilizer_h";
            depends = "0";
        };
        class HitPylon1
        {
            armor = -30;
            name = "hit_pylon_1";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_1";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_1";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_1";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_1";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon2
        {
            armor = -30;
            name = "hit_pylon_2";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_2";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_2";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_2";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_2";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon3
        {
            armor = -30;
            name = "hit_pylon_3";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_3";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_3";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_3";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_3";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
        class HitPylon4
        {
            armor = -30;
            name = "hit_pylon_4";
            passThrough = 0;
            minimalHit = -0.1;
            explosionShielding = 0.1;
            radius = 0.7;
            visual = "-";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                effectRadius = 1;
                ignoreFuel = 1;
                class RHS_Pylon_Flash
                {
                    simulation = "particles";
                    type = "RHS_ERA_Flash";
                    position = "fx_pylon_4";
                    intensity = 0.5;
                    interval = 1;
                    lifeTime = 0.006;
                };
                class RHS_Pylon_Sound
                {
                    simulation = "sound";
                    type = "RHS_ERA_Explosion_Sound";
                    position = "fx_pylon_4";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 1;
                };
                class RHS_Pylon_Smoke
                {
                    simulation = "particles";
                    type = "RHS_ERA_Smoke";
                    position = "fx_pylon_4";
                    intensity = 0.1;
                    interval = 1;
                    lifeTime = 0.04;
                };
                class RHS_Pylon_Shard
                {
                    simulation = "particles";
                    type = "RHS_ERA_Shard";
                    position = "fx_pylon_4";
                    intensity = 1;
                    interval = 1;
                    lifeTime = 0.03;
                };
            };
        };
    };
    class AnimationSources : AnimationSources
    {
        class hit_pylon_1_source
        {
            source = "user";
            animPeriod = 0;
            initPhase = 0;
        };
        class hit_pylon_2_source
        {
            source = "user";
            animPeriod = 0;
            initPhase = 0;
        };
        class hit_pylon_3_source
        {
            source = "user";
            animPeriod = 0;
            initPhase = 0;
        };
        class hit_pylon_4_source
        {
            source = "user";
            animPeriod = 0;
            initPhase = 0;
        };
        class cargolights_hide
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
        };
        class cabinlights_hide : cargolights_hide
        {
        };
        class DoorL
        {
            source = "door";
            animPeriod = 0.8;
            initPhase = 0;
            sound = "MetalDoorsSound";
            soundPosition = "doorL_axis";
        };
        class DoorR : DoorL
        {
            soundPosition = "doorR_axis";
        };
        class DoorRB : DoorL
        {
            animPeriod = 1.5;
            sound = "MetalOldBigDoorsSound";
            soundPosition = "doorRB_axis";
        };
        class DoorLB : DoorRB
        {
            soundPosition = "doorLB_axis";
        };
        class doorHandler_L : DoorL
        {
            source = "user";
            animPeriod = 0.0001;
        };
        class doorHandler_R : doorHandler_L
        {
        };
        class HitGlass1;
        class HitGlass7 : HitGlass1
        {
            hitpoint = "HitGlass7";
        };
        class Damper_1_source
        {
            source = "damper";
            wheel = "Wheel_1";
        };
        class Damper_2_source
        {
            source = "damper";
            wheel = "Wheel_2";
        };
        class Damper_3_source
        {
            source = "damper";
            wheel = "Wheel_3";
        };
        class Wheel_1_source
        {
            source = "wheel";
            wheel = "Wheel_1";
        };
        class Wheel_2_source
        {
            source = "wheel";
            wheel = "Wheel_2";
        };
        class Wheel_3_source
        {
            source = "wheel";
            wheel = "Wheel_3";
        };
        class Helicopter_Brakes
        {
            source = "user";
            animPeriod = 0.01;
            initPhase = 1;
        };
        class doors_hide
        {
            source = "user";
            displayName = "hide front doors";
            animPeriod = 0.0001;
            initPhase = 0;
            mass = -100;
        };
    };
    class Damage
    {
        tex[] = {};
        mat[] = {"rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_dust_filter.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_dust_filter.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_dust_filter_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_interior.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_interior.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_interior_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_navijak.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_navijak.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_navijak_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_glass.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_glass_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_glass_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine_MEV.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine_MEV.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_engine_MEV_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage_MEV.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage_MEV.rvmat", "rhsusf\addons\rhsusf_a2port_air\UH60M\Data\uh60m_fuselage_MEV_destruct.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default_destruct.rvmat"};
    };
    hiddenSelections[] = {"camo1", "camo2", "camo3", "filter"};
    hiddenSelectionsTextures[] = {"rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_fuselage_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_engine_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\default_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_dust_filter_co.paa"};
    class textureSources
    {
        class standard
        {
            displayName = "Standard";
            author = "$STR_RHSUSF_AUTHOR_FULL";
            textures[] = {"rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_fuselage_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_engine_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\default_co.paa", "rhsusf\addons\rhsusf_a2port_air\uh60m\data\uh60m_dust_filter_co.paa"};
            factions[] = {"rhs_faction_usarmy_wd", "rhs_faction_usarmy_d"};
        };
    };
    textureList[] = {"standard", 1};
    class Attributes
    {
        class ObjectTexture
        {
            control = "ObjectTexture";
            data = "ObjectTexture";
            displayName = "Skin";
            tooltip = "Texture and material set applied on the object.";
        };
        class DoorL
        {
            displayName = "Open left door";
            property = "DoorL";
            control = "CheckboxNumber";
            defaultValue = "0";
            expression = "_this animateDoor ['%s',_value,true]";
        };
        class DoorR : DoorL
        {
            displayName = "Open right door";
            property = "DoorR";
        };
        class DoorLB : DoorL
        {
            displayName = "Open left cargo door";
            property = "DoorLB";
            expression = "_this animateDoor ['%s',_value,true];_this animate ['doorHandler_L',_value,true]";
        };
        class DoorRB : DoorL
        {
            displayName = "Open right cargo door";
            property = "DoorRB";
            expression = "_this animateDoor ['%s',_value,true];_this animate ['doorHandler_R',_value,true]";
        };
    };
    startDuration = 35;
    fuelCapacity = 1372;
    maxSpeed = 295;
    mainRotorSpeed = 1.2;
    backRotorSpeed = 6.1;
    mainBladeRadius = 7.9;
    tailBladeRadius = 1.68;
    maxOmega = 2000;
    minOmega = 0;
    numberPhysicalWheels = 3;
    maxFordingDepth = 1.7;
    waterLeakiness = 0.2;
    waterDamageEngine = 0.1;
    class Wheels
    {
        disableWheelsWhenDestroyed = 1;
        class Wheel_1
        {
            steering = 0;
            side = "left";
            boneName = "wheel_1_1_damper";
            suspForceAppPointOffset = "Wheel_1_1_axis";
            tireForceAppPointOffset = "Wheel_1_1_axis";
            center = "Wheel_1_1_axis";
            boundary = "Wheel_1_1_bound";
            suspTravelDirection[] = {0, -1, 0};
            width = 0.16;
            mass = 15;
            MOI = 0.675;
            dampingRate = 0.1;
            dampingRateDamaged = 1;
            dampingRateDestroyed = 1000;
            maxBrakeTorque = 1000;
            maxHandBrakeTorque = 0;
            maxCompression = 0.0;
            maxDroop = 0.18;
            sprungMass = 3400;
            springStrength = 72000;
            springDamperRate = 5280;
            longitudinalStiffnessPerUnitGravity = 5000;
            latStiffX = 2.5;
            latStiffY = 18.0;
            frictionVsSlipGraph[] = {{0, 1}, {0.3, 1}, {0.7, 0.8}};
        };
        class Wheel_2 : Wheel_1
        {
            boneName = "wheel_1_2_damper";
            suspForceAppPointOffset = "Wheel_1_2_axis";
            tireForceAppPointOffset = "Wheel_1_2_axis";
            center = "Wheel_1_2_axis";
            boundary = "Wheel_1_2_bound";
        };
        class Wheel_3 : Wheel_2
        {
            steering = 1;
            side = "right";
            boneName = "wheel_2_1_damper";
            suspForceAppPointOffset = "Wheel_2_1_axis";
            tireForceAppPointOffset = "Wheel_2_1_axis";
            center = "Wheel_2_1_axis";
            boundary = "Wheel_2_1_bound";
            suspTravelDirection[] = {0, -1.0, 0.0};
            width = 0.12;
            maxCompression = 0.0;
            maxDroop = 0.18;
            maxBrakeTorque = 1000;
            sprungMass = 1100;
            springStrength = 5800;
            springDamperRate = 5120;
        };
    };
    gearRetracting = 0;
    gearMinAlt = 999999;
    turnCoef = 1.6;
    terrainCoef = 1;
    damperSize = 0.05;
    damperForce = 10;
    damperDamping = 100;
    wheelWeight = 30;
    driveOnComponent[] = {"wheels"};
    class RotorLibHelicopterProperties
    {
        RTDconfig = "rhsusf\addons\rhsusf_c_a2port_air\UH60M\RTD_UH60M.xml";
        autoHoverCorrection[] = {3, 2.45, 0};
        defaultCollective = 0.625;
        retreatBladeStallWarningSpeed = 99.2878;
        maxTorque = 1360;
        stressDamagePerSec = 0.008;
        maxHorizontalStabilizerLeftStress = 10000;
        maxHorizontalStabilizerRightStress = 10000;
        maxVerticalStabilizerStress = 10000;
        horizontalWingsAngleCollMin = 0;
        horizontalWingsAngleCollMax = 0;
        maxMainRotorStress = 200000;
        maxTailRotorStress = 60000;
    };
};

class cgqc_heli_uh60m : cgqc_heli_UH60M_base
{
    scope = 2;
    side = 1;
    accuracy = 1.5;
    author = "silent1";
    displayName = "UH60M Blackhawk (12+3)";
    editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\RHS_UH60M.paa";
    faction = "cgqc";
    vehicleClass = "rhs_vehclass_helicopter";
    crew = "CGQC_units_mk1_4_Pilot_heli";
    typicalCargo[] = {"CGQC_units_mk1_4_crew_heli"};
    selectionFireAnim = "";
    transportSoldier = 8;
    cargoProxyIndexes[] = {2, 3, 6, 7, 9, 10, 11, 12};
    getInProxyOrder[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
            CanEject = 0;
            gunnerAction = "RHS_UH60M_Pilot";
            gunnerInAction = "RHS_UH60M_Pilot";
            memoryPointsGetInGunner = "pos codriver";
            memoryPointsGetInGunnerDir = "pos codriver dir";
            gunnerGetInAction = "copilot_Heli_Light_02_Enter";
            gunnerGetOutAction = "copilot_Heli_Light_02_Exit";
            selectionFireAnim = "";
            preciseGetInOut = 1;
            GunnerDoor = "DoorL";
            gunnerLeftHandAnimName = "lever_copilot";
            gunnerRightHandAnimName = "stick_copilot";
            proxyIndex = 3;
            commanding = -1;
            class Reflectors
            {
                class cabin
                {
                    color[] = {830, 100, 100};
                    ambient[] = {5, 0, 0};
                    intensity = 9;
                    size = 1;
                    innerAngle = 90;
                    outerAngle = 165;
                    coneFadeCoef = 1;
                    position = "cabin_light";
                    direction = "cabin_light_dir";
                    hitpoint = "cabin_light";
                    selection = "cabin_light";
                    useFlare = 1;
                    flareSize = 1;
                    flareMaxDistance = 5;
                    dayLight = 1;
                    blinking = 0;
                    class Attenuation
                    {
                        start = 0;
                        constant = 0;
                        linear = 1;
                        quadratic = 50;
                        hardLimitStart = 1;
                        hardLimitEnd = 1.5;
                    };
                };
                class cargo_light_1 : cabin
                {
                    color[] = {830, 100, 100};
                    position = "cargo_light_1";
                    direction = "cargo_light_1_dir";
                    hitpoint = "cargo_light_1";
                    selection = "cargo_light_1";
                    intensity = 11;
                    useFlare = 0;
                    coneFadeCoef = 0.1;
                    class Attenuation
                    {
                        start = 0;
                        constant = 0;
                        linear = 1;
                        quadratic = 70;
                        hardLimitStart = 1;
                        hardLimitEnd = 1.5;
                    };
                };
                class cargo_light_2 : cargo_light_1
                {
                    position = "cargo_light_2";
                    direction = "cargo_light_2_dir";
                    hitpoint = "cargo_light_2";
                    selection = "cargo_light_2";
                };
            };
            class Hitpoints
            {
            };
        };
        class MainTurret : MainTurret
        {
            gunnerType = "rhsusf_army_ucp_helicrew";
            isCopilot = 0;
            showAsCargo = 1;
            body = "mainTurret";
            gun = "mainGun";
            minElev = -50;
            maxElev = 30;
            initElev = 0;
            minTurn = -7;
            maxTurn = 153;
            initTurn = 150;
            class TurnIn
            {
                limitsArrayTop[] = {{30, -7}, {30, 160}};
                limitsArrayBottom[] = {{-50.4841, -7}, {-50.3852, 32.969}, {-50.0, 86.4809}, {-50.144, 160}};
            };
            soundServo[] = {"", 0.01, 1};
            animationSourceHatch = "";
            stabilizedInAxes = "StabilizedInAxesNone";
            gunBeg = "muzzle_1";
            gunEnd = "chamber_1";
            selectionFireAnim = "zasleh";
            weapons[] = {"rhs_weap_m134_minigun_1"};
            magazines[] = {"rhs_mag_762x51_m80a1_4000"};
            gunnerName = "Crew Chief";
            gunnerOpticsModel = "\A3\weapons_f\reticle\optics_empty";
            gunnerOutOpticsShowCursor = 1;
            gunnerOpticsShowCursor = 1;
            gunnerAction = "RHS_UH60M_Gunner";
            gunnerInAction = "RHS_UH60M_Gunner";
            commanding = -2;
            primaryGunner = 1;
            lodTurnedIn = 0;
            lodTurnedOut = 0;
            lodOpticsIn = 0;
            lodOpticsOut = 0;
            class ViewOptics
            {
                initAngleX = 0;
                minAngleX = -30;
                maxAngleX = 30;
                initAngleY = 0;
                minAngleY = -100;
                maxAngleY = 100;
                initFov = 0.7;
                minFov = 0.25;
                maxFov = 1.1;
            };
            gunnerCompartments = "Compartment2";
            memoryPointGun = "machinegun";
            memoryPointGunnerOptics = "gunnerview";
            gunnerLeftHandAnimName = "gunner_1_hand_l";
            gunnerRightHandAnimName = "gunner_1_hand_r";
            gunnerLeftLegAnimName = "gunner_1_legs";
            gunnerRightLegAnimName = "gunner_1_legs";
            animationSourceStickX = "MainTurret_1_Inertia";
            animationSourceStickY = "MainGun_1_Inertia";
            discreteDistance[] = {400, 600};
            discreteDistanceInitIndex = 0;
            turretInfoType = "RHS_RscWeaponZeroing";
            class Components
            {
                class VehicleSystemsDisplayManagerComponentLeft : DefaultVehicleSystemsDisplayManagerLeft
                {
                    class Components
                    {
                        class EmptyDisplay
                        {
                            componentType = "EmptyDisplayComponent";
                        };
                        class CrewDisplay
                        {
                            componentType = "CrewDisplayComponent";
                            resource = "RscCustomInfoCrew";
                        };
                    };
                };
                class VehicleSystemsDisplayManagerComponentRight : DefaultVehicleSystemsDisplayManagerRight
                {
                    defaultDisplay = "SensorDisplay";
                    class Components
                    {
                        class EmptyDisplay
                        {
                            componentType = "EmptyDisplayComponent";
                        };
                        class CrewDisplay
                        {
                            componentType = "CrewDisplayComponent";
                            resource = "RscCustomInfoCrew";
                        };
                    };
                };
            };
            class Hitpoints
            {
            };
        };
        class RightDoorGun : MainTurret
        {
            gunnerType = "rhsusf_army_ucp_helicrew";
            body = "Turret_2";
            gun = "Gun_2";
            animationSourceBody = "Turret_2";
            animationSourceGun = "Gun_2";
            weapons[] = {"rhs_weap_m134_minigun_2"};
            stabilizedInAxes = "StabilizedInAxesNone";
            selectionFireAnim = "zasleh_1";
            proxyIndex = 2;
            gunnerName = "Door gunner";
            commanding = -3;
            minElev = -50;
            maxElev = 30;
            initElev = 0;
            minTurn = -153;
            maxTurn = 7;
            initTurn = -150;
            class TurnIn
            {
                limitsArrayTop[] = {{30, -160}, {30, 7}};
                limitsArrayBottom[] = {{-50.2377, -160}, {-43.3105, -148.5255}, {-50, -92.0832}, {-42.8167, 7}};
            };
            gunBeg = "muzzle_2";
            gunEnd = "chamber_2";
            primaryGunner = 0;
            memoryPointGun = "machinegun_1";
            memoryPointGunnerOptics = "gunnerview_2";
            gunnerLeftHandAnimName = "gunner_2_hand_l";
            gunnerRightHandAnimName = "gunner_2_hand_r";
            gunnerLeftLegAnimName = "gunner_2_legs";
            gunnerRightLegAnimName = "gunner_2_legs";
            animationSourceStickX = "MainTurret_2_inertia";
            animationSourceStickY = "MainGun_2_Inertia";
            class Hitpoints
            {
            };
        };
        class CargoTurret_01 : CargoTurret
        {
            weapons[] = {"rhsusf_weap_DummyLauncher"};
            gunnerAction = "passenger_inside_2";
            gunnerGetInAction = "GetInHeli_Transport_01Cargo";
            gunnerGetOutAction = "RHS_Heli_Cargo_Exit";
            memoryPointsGetInGunner = "pos cargo R2";
            memoryPointsGetInGunnerDir = "pos cargo R2 dir";
            gunnerName = "Passenger (Right Bench 2)";
            gunnerCompartments = "Compartment2";
            memoryPointGunnerOptics = "";
            proxyIndex = 4;
            maxElev = 15;
            minElev = -45;
            maxTurn = -10;
            minTurn = -43;
            isPersonTurret = 1;
            gunnerUsesPilotView = 1;
            selectionFireAnim = "";
            cantCreateAI = 1;
            playerPosition = 2;
            soundAttenuationTurret = "HeliAttenuationRamp";
            disableSoundAttenuation = 0;
            gunnerDoor = "DoorRB";
            enabledByAnimationSource = "doorRB";
            class Hitpoints
            {
            };
        };
        class CargoTurret_02 : CargoTurret_01
        {
            gunnerName = "Passenger (Right Bench 1)";
            memoryPointsGetInGunner = "pos cargo R";
            memoryPointsGetInGunnerDir = "pos cargo R dir";
            proxyIndex = 5;
            maxTurn = 70;
            minTurn = 22;
        };
        class CargoTurret_03 : CargoTurret_01
        {
            memoryPointsGetInGunner = "pos cargo L2";
            memoryPointsGetInGunnerDir = "pos cargo L2 dir";
            gunnerName = "Passenger (Left Bench 2)";
            proxyIndex = 1;
            maxTurn = 49;
            minTurn = 14;
            enabledByAnimationSource = "doorLB";
            gunnerDoor = "DoorLB";
        };
        class CargoTurret_04 : CargoTurret_03
        {
            gunnerName = "Passenger (Left Bench 1)";
            memoryPointsGetInGunner = "pos cargo L";
            memoryPointsGetInGunnerDir = "pos cargo L dir";
            proxyIndex = 8;
            maxTurn = -10;
            minTurn = -65;
        };
    };
    class AnimationSources : AnimationSources
    {
        class Hide_Scopes
        {
            source = "user";
            initPhase = 0;
            useSource = 1;
            animPeriod = 0.1;
            displayName = "Hide DCL-120 sights";
        };
        class Gatling_1
        {
            source = "revolving";
            weapon = "rhs_weap_m134_minigun_1";
        };
        class Gatling_2
        {
            source = "revolving";
            weapon = "rhs_weap_m134_minigun_2";
        };
        class muzzle_rot_hmg : Gatling_1
        {
            source = "ammorandom";
        };
        class muzzle_rot_hmg2 : Gatling_2
        {
            source = "ammorandom";
        };
        class ESSS_2x
        {
            source = "user";
            animPeriod = 1;
            initPhase = 0;
        };
    };
    class UserActions
    {
        class OpenCargoDoor
        {
            displayName = "Open right cargo door";
            position = "pos driver";
            radius = 15;
            showwindow = 0;
            condition = "this doorPhase 'doorRB' == 0 and (alive this) and player in this;";
            statement = "this animateDoor ['doorRB', 1];this animate ['doorHandler_R',1]";
            onlyforplayer = 1;
        };
        class CloseCargoDoor : OpenCargoDoor
        {
            displayName = "Close right cargo door";
            condition = "this doorPhase 'doorRB' > 0 and (alive this) and player in this;";
            statement = "this animateDoor ['doorRB', 0];this animate ['doorHandler_R',0];";
        };
        class OpenCargoLDoor : OpenCargoDoor
        {
            displayName = "Open left cargo door";
            condition = "this doorPhase 'doorLB' == 0 and (alive this) and player in this;";
            statement = "this animateDoor ['doorLB', 1];this animate ['doorHandler_L',1];";
            onlyforplayer = 1;
        };
        class CloseCargoLDoor : OpenCargoDoor
        {
            displayName = "Close left cargo door";
            condition = "this doorPhase 'doorLB' > 0 and (alive this) and player in this;";
            statement = "this animateDoor ['doorLB', 0];this animate ['doorHandler_L',0];";
        };
        class ToggleLight
        {
            displayName = "Toggle interior light";
            position = "pos driver";
            radius = 15;
            showwindow = 0;
            condition = "player in this;";
            statement = "[this,'cargolights_hide'] call rhs_fnc_toggleIntLight";
            onlyforplayer = 1;
        };
        class WheelBrakes : OpenCargoDoor
        {
            displayName = "Toggle Wheel Brakes";
            shortcut = "binocular";
            condition = "!difficultyEnabledRTD && (call rhs_fnc_findPlayer) isEqualTo (driver this)";
            statement = "[this] call rhs_fnc_heli_wheelBrakes";
        };
    };
    class EventHandlers : Eventhandlers
    {
        class RHSUSF_EventHandlers
        {
            postInit = "_this call rhs_fnc_reapplyTextures";
            getIn = "_this call rhs_fnc_uh60_doors";
            getOut = "_this call rhs_fnc_uh60_doors";
        };
    };
};

// Chinook --------------------------------------------------------------------------------------------------
class cgqc_heli_ch47_base : Heli_Transport_02_base_F
{
    rhs_paraRamp = "ramp_anim";
    rhs_paraOff = -8.5;
    rhs_rampAnim = "ramp";
    rhs_paraScript = "rhs_fnc_vehPara";
    dlc = "RHS_USAF";
    rhs_hasNoRadar = 1;
    LESH_canBeTowed = 1;
    LESH_towFromFront = 0;
    LESH_AxisOffsetTarget[] = {0, -8, -2.5};
    LESH_WheelOffset[] = {0, 3};
    category = "Air";
    maxOmega = 2000;
    numberPhysicalWheels = 4;
    class Wheels
    {
        disableWheelsWhenDestroyed = 1;
        class Wheel_1_1
        {
            steering = 0;
            side = "left";
            boneName = "Wheel_1_1_axis_damper";
            suspForceAppPointOffset = "Wheel_1_1_axis";
            tireForceAppPointOffset = "Wheel_1_1_axis";
            center = "Wheel_1_1_axis";
            boundary = "Wheel_1_1_bound";
            suspTravelDirection[] = {0, -1, 0};
            width = 0.565;
            mass = 15;
            MOI = 0.768;
            dampingRate = 0.25;
            dampingRateDamaged = 2;
            dampingRateDestroyed = 1000;
            maxBrakeTorque = 2000;
            maxHandBrakeTorque = 0;
            maxCompression = 0.14;
            maxDroop = 0.0;
            sprungMass = 2500;
            springStrength = 12000;
            springDamperRate = 1280;
            longitudinalStiffnessPerUnitGravity = 5000;
            latStiffX = 2.5;
            latStiffY = 18.0;
            frictionVsSlipGraph[] = {{0, 1}, {0.5, 1}, {1, 1}};
        };
        class Wheel_2_1 : Wheel_1_1
        {
            boneName = "Wheel_2_1_axis_damper";
            side = "right";
            suspForceAppPointOffset = "Wheel_2_1_axis";
            tireForceAppPointOffset = "Wheel_2_1_axis";
            center = "Wheel_2_1_axis";
            boundary = "Wheel_2_1_bound";
        };
        class Wheel_1_2 : Wheel_1_1
        {
            steering = 1;
            side = "left";
            boneName = "Wheel_1_2_axis_damper";
            suspForceAppPointOffset = "Wheel_1_2_axis";
            tireForceAppPointOffset = "Wheel_1_2_axis";
            center = "Wheel_1_2_axis";
            boundary = "Wheel_1_2_bound";
            width = 0.21;
            maxCompression = 0.15;
        };
        class Wheel_2_2 : Wheel_1_2
        {
            boneName = "Wheel_2_2_axis_damper";
            side = "right";
            suspForceAppPointOffset = "Wheel_2_2_axis";
            tireForceAppPointOffset = "Wheel_2_2_axis";
            center = "Wheel_2_2_axis";
            boundary = "Wheel_2_2_bound";
        };
    };
    gearRetracting = 0;
    gearUpTime = 1;
    gearDownTime = 1;
    backRotorForceCoef = 0.9;
    driveOnComponent[] = {"wheels"};
    fuelCapacity = 3200;
    fuelConsumptionRate = 0.398;
    slingLoadMaxCargoMass = 12700;
    canFloat = 1;
    waterLeakiness = 0.02;
    maxFordingDepth = 1.5;
    waterResistanceCoef = 0.5;
    waterResistance = 10;
    waterLinearDampingCoefY = 5;
    waterLinearDampingCoefX = 2;
    waterAngularDampingCoef = 5;
    mainRotorSpeed = 1;
    backRotorSpeed = 1;
    mainBladeRadius = 9.15;
    tailBladeRadius = 9.15;
    tailBladeVertical = 0;
    liftForceCoef = 1.7;
    cyclicAsideForceCoef = 1;
    cyclicForwardForceCoef = 1;
    bodyFrictionCoef = 0.9;
    useRoadwayForVehicles = 1;
    class RotorLibHelicopterProperties
    {
        RTDconfig = "rhsusf\addons\rhsusf_c_a2port_air\CH47\Rotorlib_CH47.xml";
        autoHoverCorrection[] = {4.7, 3.8, 0};
        defaultCollective = 0.665;
        retreatBladeStallWarningSpeed = 92.583;
        maxTorque = 4014;
        stressDamagePerSec = 0.00333333;
        maxHorizontalStabilizerLeftStress = 10000;
        maxHorizontalStabilizerRightStress = 10000;
        maxVerticalStabilizerStress = 10000;
        horizontalWingsAngleCollMin = 0;
        horizontalWingsAngleCollMax = 0;
        maxMainRotorStress = 185000;
        maxTailRotorStress = 185000;
    };
    availableForSupportTypes[] = {"Drop", "Transport"};
    class pilotCamera
    {
    };
    unitInfoType = "RHSUSF_RscUnitInfoAir_CH47";
    unitInfoTypeRTD = "RHSUSF_RscUnitInfoAirRTDFullDigital";
    selectionFireAnim = "";
    destrType = "DestructWreck";
    scope = 0;
    displayName = "CH-47F";
    side = 1;
    accuracy = 0.5;
    showNVGCargo[] = {1};
    maxSpeed = 293;
    nameSound = "veh_helicopter";
    model = "\rhsusf\addons\rhsusf_a2port_air\CH47\CH_47F";
    picture = "\rhsusf\addons\rhsusf_a2port_air\data\ico\rhs_ch47_pic_ca.paa";
    icon = "\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_ch47f_CA.paa";
    mapSize = 25;
    driverAction = "RHS_CH47_Pilot";
    driverLeftHandAnimName = "lever_pilot";
    driverRightHandAnimName = "stick_pilot";
    memoryPointsGetInCargo[] = {"pos cargo"};
    memoryPointsGetInCargoDir[] = {"pos cargo dir"};
    cargoaction[] = {"RHS_CH47_Cargo01", "RHS_CH47_Cargo01", "RHS_CH47_Cargo01", "RHS_CH47_Cargo02", "RHS_CH47_Cargo03", "RHS_CH47_Cargo01", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02", "RHS_CH47_Cargo01", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02", "RHS_CH47_Cargo03", "RHS_CH47_Cargo01", "RHS_CH47_Cargo02", "RHS_CH47_Cargo01", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02", "RHS_CH47_Cargo01", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02", "RHS_CH47_Cargo01", "RHS_CH47_Cargo03", "RHS_CH47_Cargo02"};
    cargoiscodriver[] = {0};
    cargoCompartments[] = {"Compartment1"};
    transportSoldier = 22;
    cargoProxyIndexes[] = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25};
    getInProxyOrder[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};
    transportMaxBackpacks = 10;
    reportOwnPosition = 1;
    irTarget = 1;
    irTargetSize = 1.2;
    visualTarget = 1;
    visualTargetSize = 1.3;
    radarTarget = 1;
    radarTargetSize = 1.12;
    radarType = 4;
    LockDetectionSystem = "8";
    incomingMissileDetectionSystem = "2 + 8 + 16";
    armor = 40;
    armorStructural = 20;
    hullDamageCauseExplosion = 1;
    hullExplosionDelay[] = {10, 20};
    damageResistance = 0.001;
    class HitPoints : HitPoints
    {
        class HitHull
        {
            simulation = "RHS_Hull_Helicopter";
            armor = -100;
            minimalHit = -0.2;
            explosionShielding = 2;
            radius = 0.4;
            armorComponent = "Hit_Hull";
            name = "hit_hull";
            visual = "zbytek";
            passThrough = 1;
            class DestructionEffects : RHS_Effects_Helicopter_Hull_Destruction
            {
            };
        };
        class HitEngine1
        {
            armor = -80;
            radius = 0.18;
            explosionShielding = 0.7;
            minimalHit = -0.05;
            passThrough = 0.4;
            visual = "";
            name = "engine_1_hit";
            armorComponent = "Hit_Engine_1";
        };
        class HitEngine2 : HitEngine1
        {
            name = "engine_2_hit";
            armorComponent = "Hit_Engine_2";
        };
        class HitEngine : HitEngine2
        {
            armor = -200;
            armorComponent = "";
            name = "engine_hit";
            depends = "0.5 * (HitEngine1 + HitEngine2)";
        };
        class HitVRotor
        {
            armor = -80;
            minimalHit = -0.1;
            name = "mala vrtule";
            visual = "mala vrtule staticka";
            passThrough = 0.5;
            armorComponent = "Hit_Rotor_Rear";
        };
        class HitHRotor
        {
            armor = -80;
            minimalHit = -0.1;
            name = "velka vrtule";
            visual = "velka vrtule staticka";
            passThrough = 0.5;
            armorComponent = "Hit_Rotor_Main";
        };
        class HitGlass1
        {
            name = "glass1";
            visual = "glass1";
            radius = 0.37;
            armor = -5;
            explosionShielding = 2.0;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass1";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects1";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass2
        {
            name = "glass2";
            visual = "glass2";
            radius = 0.37;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass2";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects2";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass3
        {
            name = "glass3";
            visual = "glass3";
            radius = 0.25;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass3";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects3";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass4
        {
            name = "glass4";
            visual = "glass4";
            radius = 0.25;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass4";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects4";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass5
        {
            name = "glass5";
            visual = "glass5";
            radius = 0.34;
            armor = -5;
            explosionShielding = 2.0;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass5";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects5";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass6
        {
            name = "glass6";
            visual = "glass6";
            radius = 0.34;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass6";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects6";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass7
        {
            name = "glass7";
            visual = "glass7";
            radius = 0.34;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass7";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects7";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass8
        {
            name = "glass8";
            visual = "glass8";
            radius = 0.34;
            armor = -5;
            explosionShielding = 1.5;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass8";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects8";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass9
        {
            name = "glass9";
            visual = "glass9";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass9";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects9";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass10
        {
            name = "glass10";
            visual = "glass10";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass10";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects10";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass11
        {
            name = "glass11";
            visual = "glass11";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass11";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects11";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass12
        {
            name = "glass12";
            visual = "glass12";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass12";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects12";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass13
        {
            name = "glass13";
            visual = "glass13";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass13";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects13";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass14
        {
            name = "glass14";
            visual = "glass14";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass14";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects14";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
        class HitGlass15
        {
            name = "glass15";
            visual = "glass15";
            radius = 0.24;
            armor = -5;
            explosionShielding = 1;
            minimalHit = -0.025;
            passThrough = 0;
            armorComponent = "glass15";
            class DestructionEffects
            {
                ammoExplosionEffect = "";
                class BrokenGlass1
                {
                    simulation = "particles";
                    type = "BrokenGlass1NS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2
                {
                    simulation = "particles";
                    type = "BrokenGlass2NS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3
                {
                    simulation = "particles";
                    type = "BrokenGlass3NS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4
                {
                    simulation = "particles";
                    type = "BrokenGlass4NS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5
                {
                    simulation = "particles";
                    type = "BrokenGlass5NS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass1S
                {
                    simulation = "particles";
                    type = "BrokenGlass1SS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass2S
                {
                    simulation = "particles";
                    type = "BrokenGlass2SS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass3S
                {
                    simulation = "particles";
                    type = "BrokenGlass3SS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass4S
                {
                    simulation = "particles";
                    type = "BrokenGlass4SS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
                class BrokenGlass5S
                {
                    simulation = "particles";
                    type = "BrokenGlass5SS";
                    position = "GlassEffects15";
                    intensity = 0.15;
                    interval = 1;
                    lifeTime = 0.05;
                };
            };
        };
    };
    class Components : Components
    {
        class TransportPylonsComponent
        {
            UIPicture = "\rhsusf\addons\rhsusf_a2port_air\data\loadouts\RHS_CH47_EDEN_CA.paa";
            class pylons
            {
                class cmDispenser
                {
                    hardpoints[] = {"RHSUSF_cm_M130", "RHSUSF_cm_M130_x2", "RHSUSF_cm_M130_x4", "RHSUSF_cm_M130_x8"};
                    priority = 1;
                    attachment = "rhsusf_M130_CMFlare_Chaff_Magazine_x8";
                    maxweight = 800;
                    UIposition[] = {0.33, 0.0};
                };
            };
        };
        class SensorsManagerComponent
        {
            class Components
            {
                class PassiveRadarSensorComponent : SensorTemplatePassiveRadar
                {
                };
            };
        };
        class VehicleSystemsDisplayManagerComponentLeft : DefaultVehicleSystemsDisplayManagerLeft
        {
            class Components
            {
                class EmptyDisplay
                {
                    componentType = "EmptyDisplayComponent";
                };
                class MinimapDisplay
                {
                    componentType = "MinimapDisplayComponent";
                    resource = "RscCustomInfoMiniMap";
                };
                class CrewDisplay
                {
                    componentType = "CrewDisplayComponent";
                    resource = "RscCustomInfoCrew";
                };
                class SlingLoadDisplay
                {
                    componentType = "SlingLoadDisplayComponent";
                    resource = "RscCustomInfoSlingLoad";
                };
                class SensorDisplay
                {
                    componentType = "SensorsDisplayComponent";
                    resource = "RscCustomInfoSensors";
                    range[] = {3000, 8000, 16000, 35000};
                };
            };
        };
        class VehicleSystemsDisplayManagerComponentRight : DefaultVehicleSystemsDisplayManagerRight
        {
            defaultDisplay = "SensorDisplay";
            class Components
            {
                class EmptyDisplay
                {
                    componentType = "EmptyDisplayComponent";
                };
                class MinimapDisplay
                {
                    componentType = "MinimapDisplayComponent";
                    resource = "RscCustomInfoMiniMap";
                };
                class CrewDisplay
                {
                    componentType = "CrewDisplayComponent";
                    resource = "RscCustomInfoCrew";
                };
                class SlingLoadDisplay
                {
                    componentType = "SlingLoadDisplayComponent";
                    resource = "RscCustomInfoSlingLoad";
                };
                class SensorDisplay
                {
                    componentType = "SensorsDisplayComponent";
                    resource = "RscCustomInfoSensors";
                    range[] = {3000, 8000, 16000, 35000};
                };
            };
        };
    };
    class Turrets : Turrets
    {
        class CopilotTurret : CopilotTurret
        {
            isCopilot = 1;
            CanEject = 0;
            gunnerAction = "RHS_CH47_Pilot";
            gunnerInAction = "RHS_CH47_Pilot";
            memoryPointsGetInGunner = "pos codriver";
            memoryPointsGetInGunnerDir = "pos codriver dir";
            gunnerGetInAction = "GetInHeli_Transport_01Cargo";
            gunnerGetOutAction = "GetOutLow";
            gunnerName = "Co-Pilot";
            preciseGetInOut = 0;
            GunnerDoor = "";
            gunnerLeftHandAnimName = "lever_copilot";
            gunnerRightHandAnimName = "stick_copilot";
            gunnerLeftLegAnimName = "";
            gunnerRightLegAnimName = "";
            proxyIndex = 4;
            gunnerCompartments = "Compartment3";
            commanding = -3;
            selectionFireAnim = "";
            class Reflectors
            {
                class cabin
                {
                    color[] = {830, 100, 100};
                    ambient[] = {5, 0, 0};
                    intensity = 9;
                    size = 1;
                    innerAngle = 90;
                    outerAngle = 165;
                    coneFadeCoef = 1;
                    position = "cabin_light";
                    direction = "cabin_light_dir";
                    hitpoint = "cabin_light";
                    selection = "cabin_light";
                    useFlare = 1;
                    flareSize = 1;
                    flareMaxDistance = 5;
                    dayLight = 1;
                    blinking = 0;
                    class Attenuation
                    {
                        start = 0;
                        constant = 0;
                        linear = 1;
                        quadratic = 50;
                        hardLimitStart = 1;
                        hardLimitEnd = 1.5;
                    };
                };
                class cargo_light_1 : cabin
                {
                    color[] = {830, 100, 100};
                    position = "cargo_light_1";
                    direction = "cargo_light_1_dir";
                    hitpoint = "cargo_light_1";
                    selection = "cargo_light_1";
                    intensity = 21;
                    useFlare = 0;
                    coneFadeCoef = 0.1;
                    class Attenuation
                    {
                        start = 0;
                        constant = 0;
                        linear = 1;
                        quadratic = 70;
                        hardLimitStart = 2;
                        hardLimitEnd = 2.5;
                    };
                };
                class cargo_light_2 : cargo_light_1
                {
                    position = "cargo_light_2";
                    direction = "cargo_light_2_dir";
                    hitpoint = "cargo_light_2";
                    selection = "cargo_light_2";
                };
                class cargo_light_3 : cargo_light_1
                {
                    position = "cargo_light_3";
                    direction = "cargo_light_3_dir";
                    hitpoint = "cargo_light_3";
                    selection = "cargo_light_3";
                };
            };
        };
        class MainTurret : MainTurret
        {
            isCopilot = 0;
            body = "mainTurret";
            gun = "mainGun";
            minElev = -30;
            maxElev = 30;
            initElev = -10;
            minTurn = 36;
            maxTurn = 140;
            initTurn = 0;
            soundServo[] = {"", 0.01, 1};
            memoryPointGunnerOptics = "gunnerview";
            memoryPointGun = "machinegun_1";
            animationSourceHatch = "";
            stabilizedInAxes = "StabilizedInAxesNone";
            selectionFireAnim = "zasleh";
            animationSourceBody = "MainTurret";
            animationSourceGun = "MainGun";
            gunBeg = "muzzle_1";
            gunEnd = "chamber_1";
            weapons[] = {"rhs_weap_m134_minigun_1"};
            magazines[] = {"rhs_mag_762x51_m80a1_4000"};
            gunnerName = "Crew Chief";
            gunnerOpticsModel = "\A3\weapons_f\reticle\optics_empty";
            gunnerOutOpticsShowCursor = 1;
            gunnerOpticsShowCursor = 1;
            gunnerAction = "RHS_CH47_Gunner";
            gunnerInAction = "RHS_CH47_Gunner";
            gunnerLeftHandAnimName = "OtocHlaven";
            gunnerRightHandAnimName = "OtocHlaven";
            gunnerLeftLegAnimName = "gunner1_leg_left";
            gunnerRightLegAnimName = "gunner1_leg_right";
            animationSourceStickX = "MainTurret_1_Inertia";
            animationSourceStickY = "MainGun_1_Inertia";
            gunnerForceOptics = 0;
            commanding = -1;
            primaryGunner = 1;
            outGunnerMayFire = 1;
            class ViewOptics
            {
                initAngleX = 0;
                minAngleX = -30;
                maxAngleX = 30;
                initAngleY = 0;
                minAngleY = -100;
                maxAngleY = 100;
                initFov = 0.7;
                minFov = 0.25;
                maxFov = 1.1;
            };
            gunnerCompartments = "Compartment2";
            memoryPointsGetInGunner = "pos gunner";
            memoryPointsGetInGunnerDir = "pos gunner dir";
            class Components
            {
                class VehicleSystemsDisplayManagerComponentLeft : DefaultVehicleSystemsDisplayManagerLeft
                {
                    class Components
                    {
                        class EmptyDisplay
                        {
                            componentType = "EmptyDisplayComponent";
                        };
                        class CrewDisplay
                        {
                            componentType = "CrewDisplayComponent";
                            resource = "RscCustomInfoCrew";
                        };
                    };
                };
                class VehicleSystemsDisplayManagerComponentRight : DefaultVehicleSystemsDisplayManagerRight
                {
                    defaultDisplay = "SensorDisplay";
                    class Components
                    {
                        class EmptyDisplay
                        {
                            componentType = "EmptyDisplayComponent";
                        };
                        class CrewDisplay
                        {
                            componentType = "CrewDisplayComponent";
                            resource = "RscCustomInfoCrew";
                        };
                    };
                };
            };
            class Hitpoints
            {
            };
        };
        class RightDoorGun : MainTurret
        {
            isCopilot = 0;
            body = "Turret2";
            gun = "Gun_2";
            minTurn = -140;
            maxTurn = -36;
            initTurn = 0;
            animationSourceBody = "Turret_2";
            animationSourceGun = "Gun_2";
            stabilizedInAxes = "StabilizedInAxesNone";
            selectionFireAnim = "zasleh_1";
            proxyIndex = 2;
            weapons[] = {"rhs_weap_m134_minigun_2"};
            magazines[] = {"rhs_mag_762x51_m80a1_4000"};
            gunnerOpticsModel = "\A3\weapons_f\reticle\optics_empty";
            gunnerOutOpticsShowCursor = 1;
            gunnerOpticsShowCursor = 1;
            gunnerName = "Door Gunner";
            gunnerLeftHandAnimName = "otochlaven_2";
            gunnerRightHandAnimName = "otochlaven_2";
            gunnerLeftLegAnimName = "gunner2_leg_left";
            gunnerRightLegAnimName = "gunner2_leg_right";
            animationSourceStickX = "MainTurret_2_inertia";
            animationSourceStickY = "MainGun_2_Inertia";
            commanding = -2;
            gunBeg = "muzzle_2";
            gunEnd = "chamber_2";
            primaryGunner = 0;
            preciseGetInOut = 1;
            memoryPointGun = "machinegun_2";
            memoryPointGunnerOptics = "gunnerview_2";
            gunnerCompartments = "Compartment2";
            memoryPointsGetInGunner = "pos gunner";
            memoryPointsGetInGunnerDir = "pos gunner dir";
        };
        class CargoTurret_01 : CargoTurret
        {
            weapons[] = {"rhsusf_weap_DummyLauncher"};
            gunnerAction = "passenger_inside_1";
            gunnerGetInAction = "GetInHeli_Transport_01Cargo";
            gunnerGetOutAction = "RHS_Heli_Cargo_Exit";
            memoryPointsGetInGunner = "pos cargo L";
            memoryPointsGetInGunnerDir = "pos cargo L dir";
            gunnerName = "Passenger (Left Ramp)";
            gunnerCompartments = "Compartment1";
            proxyIndex = 21;
            maxElev = 6;
            minElev = -25;
            maxTurn = -37;
            minTurn = -95;
            isPersonTurret = 1;
            gunnerUsesPilotView = 1;
            gunnerDoor = "Door_Cargo";
            selectionFireAnim = "";
            playerPosition = 2;
            soundAttenuationTurret = "HeliAttenuationRamp";
            disableSoundAttenuation = 0;
            memoryPointGunnerOptics = "";
            enabledByAnimationSource = "ramp_anim";
            class Hitpoints
            {
            };
        };
        class CargoTurret_02 : CargoTurret_01
        {
            gunnerName = "Passenger (Right Ramp)";
            memoryPointsGetInGunner = "pos cargo R";
            memoryPointsGetInGunnerDir = "pos cargo R dir";
            proxyIndex = 13;
            maxTurn = 84;
            minTurn = 37;
        };
    };
    class AnimationSources : AnimationSources
    {
        class cargolights_hide
        {
            source = "user";
            animPeriod = 1e-06;
            initPhase = 0;
        };
        class cabinlights_hide : cargolights_hide
        {
        };
        class Gatling_1
        {
            source = "revolving";
            weapon = "rhs_weap_m134_minigun_1";
        };
        class Gatling_2
        {
            source = "revolving";
            weapon = "rhs_weap_m134_minigun_2";
        };
        class muzzle_rot_hmg : Gatling_1
        {
            source = "ammorandom";
        };
        class muzzle_rot_hmg2 : Gatling_2
        {
            source = "ammorandom";
        };
        class ramp_anim
        {
            sound = "ServoRampSound_2";
            soundPosition = "osa_ramp";
            source = "user";
            animPeriod = 5;
            initPhase = 0;
        };
        class Hide_Scopes
        {
            source = "user";
            initPhase = 0;
            useSource = 1;
            animPeriod = 0.1;
            displayName = "Hide DCL-120 sights";
        };
        class hide_cargo
        {
            source = "user";
            mass = -20;
            displayName = "hide cargo benches";
            animPeriod = 1e-05;
            initPhase = 0;
            onPhaseChanged = "(_this select 0) lockCargo ((_this select 1)==1)";
        };
        class HitGlass1
        {
            source = "Hit";
            hitpoint = "HitGlass1";
            raw = 1;
        };
        class HitGlass2
        {
            source = "Hit";
            hitpoint = "HitGlass2";
            raw = 1;
        };
        class HitGlass3
        {
            source = "Hit";
            hitpoint = "HitGlass3";
            raw = 1;
        };
        class HitGlass4
        {
            source = "Hit";
            hitpoint = "HitGlass4";
            raw = 1;
        };
        class HitGlass5
        {
            source = "Hit";
            hitpoint = "HitGlass5";
            raw = 1;
        };
        class HitGlass6
        {
            source = "Hit";
            hitpoint = "HitGlass6";
            raw = 1;
        };
        class HitGlass7
        {
            source = "Hit";
            hitpoint = "HitGlass7";
            raw = 1;
        };
        class HitGlass8
        {
            source = "Hit";
            hitpoint = "HitGlass8";
            raw = 1;
        };
        class HitGlass9
        {
            source = "Hit";
            hitpoint = "HitGlass9";
            raw = 1;
        };
        class HitGlass10
        {
            source = "Hit";
            hitpoint = "HitGlass10";
            raw = 1;
        };
        class HitGlass11
        {
            source = "Hit";
            hitpoint = "HitGlass11";
            raw = 1;
        };
        class HitGlass12
        {
            source = "Hit";
            hitpoint = "HitGlass12";
            raw = 1;
        };
        class HitGlass13
        {
            source = "Hit";
            hitpoint = "HitGlass13";
            raw = 1;
        };
        class HitGlass14
        {
            source = "Hit";
            hitpoint = "HitGlass14";
            raw = 1;
        };
        class HitGlass15
        {
            source = "Hit";
            hitpoint = "HitGlass15";
            raw = 1;
        };
        class Damper_1_1_source
        {
            source = "damper";
            wheel = "Wheel_1_1";
        };
        class Damper_1_2_source
        {
            source = "damper";
            wheel = "Wheel_1_2";
        };
        class Damper_2_1_source
        {
            source = "damper";
            wheel = "Wheel_2_1";
        };
        class Damper_2_2_source
        {
            source = "damper";
            wheel = "Wheel_2_2";
        };
        class Wheel_1_1_source
        {
            source = "wheel";
            wheel = "Wheel_1_1";
        };
        class Wheel_1_2_source
        {
            source = "wheel";
            wheel = "Wheel_1_2";
        };
        class Wheel_2_1_source
        {
            source = "wheel";
            wheel = "Wheel_2_1";
        };
        class Wheel_2_2_source
        {
            source = "wheel";
            wheel = "Wheel_2_2";
        };
        class Helicopter_Brakes
        {
            source = "user";
            animPeriod = 0.01;
            initPhase = 1;
        };
    };
    class UserActions
    {
        class OpenCargoDoor
        {
            displayName = "Open Ramp";
            position = "pos driver";
            radius = 15;
            showwindow = 0;
            condition = "this animationSourcePhase 'ramp_anim' < 1 and (alive this) and ({player == _x} count [driver this,  this turretUnit [3], this turretUnit [4]] > 0)";
            statement = "this animateSource ['ramp_anim', 1];[this] call rhs_fnc_cargoDetach";
            onlyforplayer = 1;
            shortcut = "user12";
        };
        class LevelRamp : OpenCargoDoor
        {
            displayName = "Level Ramp";
            condition = "this animationSourcePhase 'ramp_anim' != 0.6 and (alive this) and (alive this) and ({player == _x} count [driver this,  this turretUnit [3], this turretUnit [4]] > 0);";
            statement = "this animateSource ['ramp_anim', 0.6];";
            shortcut = "user13";
        };
        class CloseCargoDoor : OpenCargoDoor
        {
            displayName = "Close Ramp";
            condition = "this animationSourcePhase 'ramp_anim' > 0 and (alive this) and (alive this) and ({player == _x} count [driver this,  this turretUnit [3], this turretUnit [4]] > 0);";
            statement = "this animateSource ['ramp_anim', 0];[this] call rhs_fnc_cargoAttach";
        };
        class VehicleParadrop : OpenCargoDoor
        {
            displayName = "Paradrop cargo";
            condition = "(count (attachedObjects this) > 0) AND ('man' countType (attachedObjects this) == 0) AND Alive(this)";
            statement = "[this] spawn rhs_fnc_vehPara";
            shortcut = "";
        };
        class ToggleLight
        {
            displayName = "Toggle interior light";
            position = "pos driver";
            radius = 15;
            showwindow = 0;
            condition = "player in this;";
            statement = "[this,'cargolights_hide'] call rhs_fnc_toggleIntLight";
            onlyforplayer = 1;
        };
        class WheelBrakes : OpenCargoDoor
        {
            displayName = "Toggle Wheel Brakes";
            shortcut = "binocular";
            condition = "!difficultyEnabledRTD && (call rhs_fnc_findPlayer) isEqualTo (driver this)";
            statement = "[this] call rhs_fnc_heli_wheelBrakes";
        };
    };
    weapons[] = {"rhsusf_weap_ANALQ212"};
    magazines[] = {"rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM", "rhsusf_mag_DIRCM"};
    memoryPointCM[] = {"flare_launcher1", "flare_launcher2"};
    memoryPointCMDir[] = {"flare_launcher1_dir", "flare_launcher2_dir"};
    selectionHRotorStill = "velka vrtule staticka";
    selectionHRotorMove = "velka vrtule blur";
    selectionVRotorStill = "mala vrtule staticka";
    selectionVRotorMove = "mala vrtule blur";
    selectionDamage = "trup";
    selectionShowDamage = "poskozeni";
    memoryPointLRocket = "l raketa";
    memoryPointRRocket = "p raketa";
    memoryPointLMissile = "l strela";
    memoryPointRMissile = "p strela";
    enableManualFire = 0;
    threat[] = {0.8, 1, 0.6};
    helmetMountedDisplay = 0;
    cargoCanEject = 1;
    driverCanEject = 0;
    class MFD
    {
    };
// Inventory
#include "loadouts\cgqc_heli_heavy.sqf"
    class Library
    {
        libTextDesc = "CH-47F";
    };
    attenuationEffectType = "HeliAttenuation";
    soundGetIn[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\close", 0.31622776, 1};
    soundGetOut[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\open", 0.31622776, 1, 40};
    soundDammage[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\int-alarm_loop", 0.56234133, 1};
    soundEngineOnInt[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_start_int", 0.1, 1};
    soundEngineOnExt[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_start_ext", 0.56234133, 1, 800};
    soundEngineOffInt[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_stop_int", 0.1, 1};
    soundEngineOffExt[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_stop_ext", 0.56234133, 1, 800};
    occludeSoundsWhenIn = 0.56234133;
    obstructSoundsWhenIn = 0.31622776;
    soundLocked[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_1", 0.1, 1};
    soundIncommingMissile[] = {"\A3\Sounds_F\weapons\Rockets\opfor_lock_2", 0.1, 1};
    class Sounds
    {
        class Engine
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_engine_high_ext", 1, 1, 800};
            frequency = "rotorSpeed";
            volume = "camPos*((rotorSpeed-0.72)*4)";
        };
        class RotorLowOut
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_rotor_ext.ogg", 8.162278, 1, 3500};
            frequency = "rotorSpeed";
            volume = "camPos*(0 max (rotorSpeed-0.1))";
            cone[] = {1.8, 3.14, 2, 0.09};
        };
        class RotorHighOut
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_rotor_forsage_ext", 6.1622777, 1, 2200};
            frequency = "rotorSpeed";
            volume = "camPos*10*(0 max (rotorThrust-0.95))";
            cone[] = {1.8, 3.14, 2, 0.09};
        };
        class EngineIn
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_engine_high_int", 1.7782794, 1};
            frequency = "rotorSpeed";
            volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
        };
        class RotorLowIn
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_rotor_ext.ogg", 2.7782793, 1};
            frequency = "rotorSpeed";
            volume = "2*(1-camPos)*((rotorSpeed factor[0.3, 1.1]) min (rotorSpeed factor[1.1, 0.3]))";
        };
        class RotorHighIn
        {
            sound[] = {"rhsusf\addons\rhsusf_a2port_air\data\sounds\CH47_rotor_forsage_int", 2.7782793, 1};
            frequency = "rotorSpeed";
            volume = "(1-camPos)*3*(rotorThrust-0.9)";
        };
    };
    class MarkerLights
    {
        class WhiteStill
        {
            name = "bily pozicni";
            color[] = {1, 1, 1};
            ambient[] = {0.1, 0.1, 0.1};
            blinking = 1;
            intensity = 75;
            blinkingPattern[] = {0.1, 0.09};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
        };
        class RedStill
        {
            name = "cerveny pozicni";
            color[] = {0.8, 0, 0};
            ambient[] = {0.08, 0, 0};
            intensity = 75;
            drawLight = 1;
            drawLightSize = 0.15;
            drawLightCenterSize = 0.04;
            activeLight = 0;
            blinking = 0;
            dayLight = 0;
            useFlare = 0;
        };
        class GreenStill
        {
            name = "zeleny pozicni";
            color[] = {0, 0.8, 0};
            ambient[] = {0, 0.08, 0};
            intensity = 75;
            drawLight = 1;
            drawLightSize = 0.15;
            drawLightCenterSize = 0.04;
            activeLight = 0;
            blinking = 0;
            dayLight = 0;
            useFlare = 0;
        };
        class RedBlinking
        {
            name = "bily pozicni blik";
            color[] = {0.09, 0.15, 0.1};
            ambient[] = {0.09, 0.015, 0.01};
            intensity = 75;
            blinking = 1;
            blinkingPattern[] = {0.1, 0.09};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.2;
            drawLightCenterSize = 0.04;
        };
        class WhiteBlinking
        {
            name = "cerveny pozicni blik";
            color[] = {0.09, 0.15, 0.1};
            intensity = 75;
            ambient[] = {0.09, 0.015, 0.01};
            blinking = 1;
            blinkingPattern[] = {0.2, 1.3};
            blinkingPatternGuarantee = 0;
            drawLightSize = 0.25;
            drawLightCenterSize = 0.08;
        };
    };
    class Reflectors
    {
        class Middle
        {
            color[] = {7000, 7500, 10000, 1};
            ambient[] = {100, 100, 100, 0};
            position = "svetlo";
            direction = "svetlo konec";
            hitpoint = "svetlo";
            selection = "svetlo";
            size = 1;
            innerAngle = 20;
            outerAngle = 60;
            coneFadeCoef = 10;
            intensity = 50;
            useFlare = 1;
            dayLight = 0;
            FlareSize = 6;
            class Attenuation
            {
                start = 1;
                constant = 0;
                linear = 0;
                quadratic = 4;
            };
        };
    };
    class Exhausts
    {
        class Exhaust1
        {
            direction = "exhaust1_dir";
            effect = "ExhaustEffectHeli";
            position = "exhaust1";
        };
        class Exhaust2
        {
            direction = "exhaust2_dir";
            effect = "ExhaustEffectHeli";
            position = "exhaust2";
        };
    };
    class Damage
    {
        tex[] = {};
        mat[] = {"rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1_int.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1_int.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_1_int_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2_int.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2_int.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_2_int_destruct.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo_in.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo_in_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo_in_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo_damage.rvmat", "rhsusf\addons\rhsusf_a2port_air\CH47\data\ch47_sklo_damage.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default.rvmat", "a3\data_f\default_destruct.rvmat"};
    };
    irScanRangeMin = 0;
    irScanRangeMax = 1000;
    irScanToEyeFactor = 2;
    gunnerCanSee = "2+4+8+16";
    driverCanSee = "2+4+8+16";
    hiddenSelections[] = {"camo1", "camo2", "camo3", "camo4"};
    hiddenSelectionsTextures[] = {"rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_1_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_2_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47f_nalepky_ca.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_mlod_co.paa"};
    class textureSources
    {
        class standard
        {
            displayName = "Standard";
            author = "$STR_RHSUSF_AUTHOR_FULL";
            textures[] = {"rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_1_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_2_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47f_nalepky_ca.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_mlod_co.paa"};
            factions[] = {"rhs_faction_usarmy_wd", "rhs_faction_usarmy_d"};
        };
        class Desert
        {
            displayName = "Desert";
            author = "$STR_RHSUSF_AUTHOR_FULL";
            textures[] = {"rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_1_light_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_2_light_co.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47f_nalepky_ca.paa", "rhsusf\addons\rhsusf_a2port_air\ch47\data\ch47_ext_light_mlod_co.paa"};
            factions[] = {"rhs_faction_usarmy_wd", "rhs_faction_usarmy_d"};
        };
    };
    textureList[] = {};
    class Attributes
    {
        class ObjectTexture
        {
            control = "ObjectTexture";
            data = "ObjectTexture";
            displayName = "Skin";
            tooltip = "Texture and material set applied on the object.";
        };
        class ramp_anim
        {
            displayName = "Open ramp";
            property = "ramp_anim";
            control = "slider";
            defaultValue = "0";
            expression = "_this animateSource ['%s',_value,true]";
        };
        class hide_cargo : ramp_anim
        {
            displayName = "Hide cargo benches";
            property = "hide_cargo";
            control = "CheckboxNumber";
            expression = "_this animate ['%s',_value,true];_this lockCargo (_value == 1)";
        };
        class rhs_attachCargo : hide_cargo
        {
            displayName = "Attach cargo";
            tooltip = "Attaching cargo (using attachTo command) just like when you use ramp action";
            property = "rhs_attachCargo";
            expression = "if(_value == 1)then{[_this] spawn rhs_fnc_cargoAttach}else{{if(not(_x isKindOf 'Man'))then{detach _x}}foreach attachedObjects _this};";
        };
    };
    class VehicleTransport
    {
        class Carrier
        {
            cargoBayDimensions[] = {"VTV_limit_1", "VTV_limit_2"};
            disableHeightLimit = 1;
            maxLoadMass = 9000;
            cargoAlignment[] = {"front", "center"};
            cargoSpacing[] = {0.075, 0.075, 0.075};
            exits[] = {"VTV_exit_1"};
            unloadingInterval = 2;
            loadingDistance = 15;
            loadingAngle = 60;
            parachuteClassDefault = "B_Parachute_02_F";
            parachuteHeightLimitDefault = 25;
        };
    };
};

class cgqc_heli_ch47f : cgqc_heli_ch47_base
{
    scope = 0;
    faction = "cgqc";
    author = "silent1";
    displayName = "CH47f Chinook (24+3)";
    vehicleClass = "rhs_vehclass_helicopter";
    crew = "CGQC_units_mk1_4_Pilot_heli";
    typicalCargo[] = {"CGQC_units_mk1_4_crew_heli"};
    accuracy = 1000;
    editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\RHS_CH_47F.paa";
};

class cgqc_heli_ch47_10 : cgqc_heli_ch47f
{
    scope = 2;
    faction = "cgqc";
    author = "silent1";
    vehicleClass = "rhs_vehclass_helicopter";
    crew = "CGQC_units_mk1_4_Pilot_heli";
    typicalCargo[] = {"CGQC_units_mk1_4_crew_heli"};
    editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\RHS_CH_47F_10.paa";
};