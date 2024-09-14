0 fadeSound 0;
titleCut ["", "BLACK FADED", 999];
player enableFatigue false;
//klpq_musicRadio_enable = false;
enableSaving [false,false];

cgqc_spawnLeader = {
	hint "Respawning to group Leader position";
	_groupLeader = leader group player;
	_spawnPos = (getPosASL _groupLeader);
	player setPosASL _spawnPos;
};

cgqc_spawnCorpse = {
	hint "Respawning to corpse";
	player setPosASL cgqc_corpse_pos;
};


player addMPEventHandler ["MPRespawn", {
    params ["_unit", "_corpse"];
    player enableFatigue false;
	cgqc_corpse_pos = getPosASL _corpse;
	["<br/><br/><br/>CGQCPerks-> Teleport to Team", 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
}];

player addEventHandler ["VisionModeChanged", {
	params ["_person", "_visionMode"];
	hint "Your nvg's don't seem to work here...";
	if (_visionMode > 0) then {
		_person action ["nvGogglesOff", _person];
		NVGindex = _thisEventHandler;
	};
}];

spooky_action = [ "spawn_leader", "Teleport to Team", "", {[] spawn cgqc_spawnLeader}, {true} ] call ace_interact_menu_fnc_createAction;
spooky_adding = [ player, 1, ["ACE_SelfActions", "menu_self_cgqc"], spooky_action ] call ace_interact_menu_fnc_addActionToObject;
spooky_action = [ "spawn_corpse", "Teleport to Corpse", "", {[] spawn cgqc_spawncorpse}, {true} ] call ace_interact_menu_fnc_createAction;
spooky_adding = [ player, 1, ["ACE_SelfActions", "menu_self_cgqc"], spooky_action ] call ace_interact_menu_fnc_addActionToObject;


waitUntil { time > 20 };
[] spawn {
	0 fadeSound 0;
	titleCut ["", "BLACK FADED", 999];
	_text = (
		"<img size= '8' style='vertical-align:middle' shadow='false' image='cross.paa'/>" +
		"<br/>" +
		"<t size='2' >%1</t><br/>" +
		"<t size = '1'>par %2</t>"
	);
	//Pop le logo et le texte
	_text = format [_text, "La Croisade du Cauchemar", cgqc_config_author];
	[_text, 0, 0, 5, 5] spawn BIS_fnc_dynamicText;
	sleep 1;
	playMusic ["EHS_Ambience_City_3", 1];
	sleep 6;

	// Fade from black, to blur, to clear as text types.
	10 fadeSound 1;
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [3];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
	titleCut ["", "BLACK IN", 6];
};