params ["_laptop"];
// Qualifications settings
cgqc_qualif_running = false;
cgqc_qualif_on = false;
cgqc_qualif_service_totalShots = 0;
cgqc_qualif_service_totalHits = 0;
cgqc_qualif_service_targets = [];
cgqc_qualif_service_student = "";
cgqc_qualif_service_gun = "";
cgqc_qualif_service_distances = [100, 150, 200, 250, 300, 350, 400, 450];
cgqc_qualif_service_neededHits = 2;
cgqc_qualif_service_maxTotal = 16;
cgqc_qualif_service_pntPerTgt = 5;
cgqc_qualif_service_qualify = [50, 59];
cgqc_qualif_service_marksman = [60, 74];
cgqc_qualif_service_expert = [75, 80];


#include "\CGQC\script_component.hpp"
// --- trainingQualification ----------------------------------------------------------
// Qualifications diverses
params ["_type", ["_subtype", "prep"], "_student"];
LOG_2("[trainingQualification] %1/%2 started", _type, _subtype);

CGQC_int_targetHit = {
    // --- targetHit ----------------------------------------------------------
    // Reaction to target hit
    params ["_target"];
    LOG_1("[targetHit] %1 started", _target);
    cgqc_qualif_service_totalHits = cgqc_qualif_service_totalHits + 1;
    cgqc_qualif_service_points = cgqc_qualif_service_points + cgqc_qualif_service_pntPerTgt;
    LOG_1("[targetHit] TotalHits: %1", cgqc_qualif_service_totalHits);
    _hits = _target getVariable ["cgqc_range_hit", 0];
    _hits = _hits + 1;
    LOG_1("[targetHit] Hits on this tgt: %1", _hits);
    if (_hits isEqualTo cgqc_qualif_service_neededHits) then {
        LOG_1("[targetHit] Two hits! Deleting Target %1", _target);
        _txtShots = format["Shot left: %1", cgqc_qualif_service_maxTotal - cgqc_qualif_service_totalShots];
        [["Neutralised!", 1.5], ["Next target!", 1], [_txtShots, 1], true] call CBA_fnc_notify;
        //This target is done. Destroying the object
        _target removeAllEventHandlers "HitPart";
        deleteVehicle _target;
        cgqc_qualif_service_targets - _target;
        (cgqc_qualif_service_targets select 0) hideObjectGlobal false;
    } else {
        LOG("[targetHit] One hit counted");
        [["Impact!", 1.5], ["One more!", 1], true] call CBA_fnc_notify;
        _target setVariable ["cgqc_range_hit", 1, true];
    };
    LOG("[targetHit] done");
};

CGQC_int_qualificationSave = {
    params ["_type"];
    LOG("[trainingQualification] saveQualification: Saving");
    sleep 1;
    _qualifyTxt = "";
    _qualifyTxtFlavor = "";
    // Qualify the score
    if (cgqc_qualif_service_points < cgqc_qualif_service_qualify select 0) then {
        _qualifyTxt = "Fail";
        _qualifyTxtFlavor = "You have failed to qualify";
    } else {
        // At least qualified
        if (cgqc_qualif_service_points >= cgqc_qualif_service_qualify select 0 && cgqc_qualif_service_points <= cgqc_qualif_service_qualify select 1) then {
            // Qualified
            _qualifyTxt = "Qualified";
            _qualifyTxtFlavor = "Le minimum requis pour passer la qualification. Vous êtes compétent votre arme de service.";
        };
        if (cgqc_qualif_service_points >= cgqc_qualif_service_marksman select 0 && cgqc_qualif_service_points <= cgqc_qualif_service_marksman select 1) then {
            // Marksman
            _qualifyTxt = "Marksman";
            _qualifyTxtFlavor = "Score excellent. Vous avez montré une bonne utilisation de votre arme et une capacité à frapper des cibles à différentes distances avec précision.";

        };
        if (cgqc_qualif_service_points >= cgqc_qualif_service_expert select 0 && cgqc_qualif_service_points <= cgqc_qualif_service_expert select 1) then {
            // Expert
            _qualifyTxt = "Expert";
            _qualifyTxtFlavor = "La perfection, ou presque. Vous avez démontrer une maîtrise exceptionnelle de votre fusil de service.";
        };
    };
    // Prep current result
    cgqc_qualif_newResult = [name cgqc_qualif_service_student, systemTime, _qualifyTxt, cgqc_qualif_service_points, cgqc_qualif_service_maxPoints];
    LOG_1("[trainingQualification] saveQualification New Result:%1", cgqc_qualif_newResult);

    // Do this on the _target computer!!!
    _previousResult = MissionProfileNamespace getVariable [_type, []];
    _txt_score = format["%1/%2", cgqc_qualif_service_points, cgqc_qualif_service_maxPoints];
    _txt_saving = "Saving Score";
    LOG_1("[trainingQualification] saveQualification Previous Result:%1", _previousResult);
    if (count _previousResult isEqualTo 0) then {
        LOG("[trainingQualification] saveQualification - First attempt? Saving.");
        //[["Qualification", 1.5], [_txt_score, 1], [_qualifyTxt, 1], [_qualifyTxtFlavor, 1], ["Saving Score", 1], false] call CBA_fnc_notify;
        MissionProfileNamespace setVariable [_type, cgqc_qualif_newResult];
        saveMissionProfileNamespace;
    } else {
        // Check if current result is better
        _oldPoints = _previousResult select 3;
        LOG_2("[trainingQualification] saveQualification - Comparing attempt %1/%2", cgqc_qualif_service_points, _oldPoints);
        if (cgqc_qualif_service_points > _oldPoints) then {
            LOG("[trainingQualification] New Highscore! Saving");
            MissionProfileNamespace setVariable [_type, cgqc_qualif_newResult];
            saveMissionProfileNamespace;
            //[["Qualification", 1.5], ["New Highscore!", 1], [_txt_score, 1], [_qualifyTxt, 1], [_qualifyTxtFlavor], ["Saving Score", 1], false] call CBA_fnc_notify;
        } else {
            LOG("[trainingQualification] Lower score. Not saving.");
            _txt_saving = "Not Saving Score";
            //[["Qualification", 1.5], ["Score lower than previous", 1], [_txt_score, 1], ["Not saving.", 1], false] call CBA_fnc_notify;
        };
    };
    _textDone = format ["
        <t size='3'>Qualification</t><br/>
        <t size ='2'>Score:%1</t><br/>
        <t size ='2'>%2</t><br/>
        <t size ='2'>%3</t><br/>
        <t size ='1'>%4</t><br/>
    ", _txt_score, _qualifyTxt, _qualifyTxtFlavor, _txt_saving];
    cutText ["","PLAIN", 1, false, true];
	cutText [_textDone,"PLAIN", 3, false, true];
    LOG("[trainingQualification] Saving finished");
};

CGQC_int_qualificationRemoveActions = {
    params ["_target"];
    // Remove all
    {
        [player, 1, _x] call ace_interact_menu_fnc_removeActionFromObject;
    } forEach action_qualif_list;
    action_qualif_list = [];
};

CGQC_int_qualificationRemoveEvent = {
    params ["_target"];
    _target removeEventHandler ["fired", qualification_shoot_event];
};

CGQC_int_createTarget = {
    params ["_range", "_pos", "_dir"];
    LOG_1("[trainingQualification] Creating target at %1", _range);
    // Create target
    _position = screenToWorld [0.5, 0.5];
    _spawnPos = _pos getPos [_range, _dir];
    _target = "metalTarget_Stand" createVehicle [0, 0, 0];
    _target setPosATL [_spawnPos select 0, _spawnPos select 1, 0.0];
    _vecToTarget = (getPosASL player) vectorFromTo (getPosASL _target);
    _direction = (_vecToTarget select 0) atan2 (_vecToTarget select 1);
    _target setDir _direction;
    _target addEventHandler ["HitPart", {
        (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect", "_instigator"];
        [_target] spawn CGQC_int_targetHit;
    }];
    cgqc_qualif_service_targets pushBack _target;
    if !(cgqc_qualif_firstTgt) then {
        hideObjectGlobal _target;
    };
    cgqc_qualif_firstTgt = false;
};

CGQC_int_createTargets = {
    params ["_pos", "_dir"];
    {
        [_x, _pos, _dir] call CGQC_int_createTarget;
    } forEach cgqc_qualif_service_distances;
};

CGQC_int_qualificationRemoveTargets = {
    params ["_targets"];
    {
        _x removeAllEventHandlers "HitPart";
        deleteVehicle _x
    } forEach cgqc_qualif_service_targets;
};

CGQC_int_riflePrep = {
    LOG("[trainingQualification] prepping Rifle Qualification");
    cgqc_qualif_on = true;
    cgqc_qualif_firstTgt = true;
    //cgqc_qualif_service_student = _student;
    cgqc_qualif_service_student = player;
    cgqc_qualif_oldGun = "";
    _action = [ "menu_qualif_rifles", "Start Qualification", "", {[] spawn CGQC_int_rifleStart;}, {!cgqc_qualif_running} ] call ace_interact_menu_fnc_createAction;
    action_qualif_rifles = [ player, 1, ["ACE_SelfActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    _action = [ "menu_qualif_riflec", "Cancel Qualification", "", {[] spawn CGQC_int_rifleCancel;}, {cgqc_qualif_on} ] call ace_interact_menu_fnc_createAction;
    action_qualif_riflec = [ player, 1, ["ACE_SelfActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
    action_qualif_list = [action_qualif_rifles, action_qualif_riflec];

    // Event when the player shoots
    //cgqc_qualif_service_student
    qualification_shoot_event = cgqc_qualif_service_student addEventHandler ["fired", {
        // The student shot total
        cgqc_qualif_service_totalShots = cgqc_qualif_service_totalShots + 1;
        LOG_1("[trainingQualification] Shot: Total:%1", cgqc_qualif_service_totalShots);
        if (cgqc_qualif_service_totalShots isEqualTo cgqc_qualif_service_maxTotal) then {
            LOG("[trainingQualification] Qualification Done!");
            // The qualification is finished!
            [] spawn CGQC_int_rifleDone;
        };
    }];
    ["ready", false] spawn CGQC_fnc_perksBasic;
    ["2024_service"] spawn CGQC_fnc_switchRole;
    [["Qualification", 1.5, [0.161,0.502,0.725,1]], ["2 shots per target", 1], ["16 shots total", 1], ["Get prone and start the session!", 1], false] call CBA_fnc_notify;
};

CGQC_int_rifleStart = {
    playSound "cgqc_sound_roundNew";
    cgqc_qualif_running = true;
    // Reset variables
    cgqc_qualif_service_totalShots = 0;
    cgqc_qualif_service_totalHits = 0;
    cgqc_qualif_service_points = 0;
    cgqc_qualif_service_maxPoints = cgqc_qualif_service_pntPerTgt * cgqc_qualif_service_maxTotal;
    cgqc_qualif_service_targets = [];
    [["Qualification started", 1.5, [0.161,0.502,0.725,1]], ["Fire!", 1] false] call CBA_fnc_notify;
    // Start creating targets
    _shootingPos = getPos cgqc_qualify_shootingPosition;
    _shootingDir = getDir cgqc_qualify_shootingPosition;
    [_shootingPos, _shootingDir] call CGQC_int_createTargets;
};

CGQC_int_rifleDone = {
    LOG("[trainingQualification] Finished");
    [cgqc_qualif_service_student] call CGQC_int_qualificationRemoveEvent;
    [cgqc_qualif_service_student] call CGQC_int_qualificationRemoveActions;
    ["cgqc_qualification_1_rifle_practice"] spawn CGQC_int_qualificationSave;
    playSound "cgqc_sound_roundEnd";
    sleep 1;
    [cgqc_qualif_service_targets] call CGQC_int_qualificationRemoveTargets;
    cgqc_qualif_running = false;
    cgqc_qualif_on = false;
};

CGQC_int_rifleCancel = {
    LOG("[trainingQualification] Cancelled");
    [cgqc_qualif_service_student] call CGQC_int_qualificationRemoveActions;
    [cgqc_qualif_service_student] call CGQC_int_qualificationRemoveEvent;
    [cgqc_qualif_service_targets] call CGQC_int_qualificationRemoveTargets;
    if (cgqc_qualif_oldGun isNotEqualTo "") then {
            _gun = primaryWeapon cgqc_qualif_service_student;
        cgqc_qualif_service_student removeWeapon _gun;
        cgqc_qualif_service_student addweapon cgqc_qualif_oldGun;
    };

    [["Qualification Cancelled", 1.5, [0.161,0.502,0.725,1]], false] call CBA_fnc_notify;
    cgqc_qualif_running = false;
    cgqc_qualif_on = false;
};

// Show instructions in Diary
// Wait for signal to start

// Can be paused?

// Save player score in his namespace
// Save the instructor's name
// Show the scores in a diary entry?

LOG("[trainingQualification] done");




// Actions ------------------------------------------------------------------------------
_action = [ "menu_qualif_trial", "Qualification Practice", "\CGQC\textures\icon_sniping", {}, {!cgqc_qualif_on} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_qualif_trial_shooting", "Shooting", "", {}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions", "menu_qualif_trial"], _action ] call  ace_interact_menu_fnc_addActionToObject;
_action = [ "menu_qualif_trial_shooting_service", "Service Rifle 100-450m", "", {[] spawn CGQC_int_riflePrep;}, {true} ] call ace_interact_menu_fnc_createAction;
_adding = [_laptop, 0, ["ACE_MainActions", "menu_qualif_trial"], _action ] call  ace_interact_menu_fnc_addActionToObject;