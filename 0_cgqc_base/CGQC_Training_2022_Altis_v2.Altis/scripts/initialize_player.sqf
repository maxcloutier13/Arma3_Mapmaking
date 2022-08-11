// Holster weapon ------------------------------------------------------------------------------------
player action ['SwitchWeapon', player, player, 100];

// Show intro info ------------------------------------------------------------------------------------
_text = (
"<img size= '6' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +
"<br/>" +
"<t size='2' >Terrain d'entraînement</t><br /><t>CGQC</t>"
);

sleep 2;
[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
sleep 6;

// set rank by prefix ----------------------------------------------------------------------------------
_name = name player;
_prefix = _name select[0, 4];
switch (_prefix) do
{
	case "Sdt.": {
		player setRank "PRIVATE";
		hint "Soldat";
	};
	case "Cpl.": {
		player setRank "CORPORAL";
		hint "Caporal";
	};
	case "CplC": {
		player setRank "CORPORAL";
		hint "Caporal-Chef";
	};
	case "Sgt.": {
		player setRank "SERGEANT";
		hint "Sergeant";
	};
	case "Adju": {
		player setRank "SERGEANT";
		hint "Adjudent";
	};
	case "SLt.": {
		player setRank "LIEUTENANT";
		hint "Sous-Lieutenant";
	};
	case "Lt. ": {
		player setRank "LIEUTENANT";
		hint "Lieutenant";
	};
	case "Capt": {
		player setRank "CAPTAIN";
		hint "Capitaine";
	};
	case "Maj.": {
		player setRank "MAJOR";
		hint "Major";
	};
	case "LCol": {
		player setRank "COLONEL";
		hint "Lieutenant-Colonel";
	};
	case "Col.": {
		player setRank "COLONEL";
		hint "Colonel";
	};
	default {
		player setRank "PRIVATE";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Visiteur!</t>" +
		"<br/>" +"<t size='1' >Joint nous sur teamspeak: ts.cgqc.ca</t>" +
		"<br/>" +"<t size='1' >discord.gg/RCyRKWVG</t>");
		[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
		sleep 6;
	};
};

// default text if the player is not known 
_text = (format ["<t size='2' >Bonjour %1</t><br/><t>what's up?</t>", _name]);
// default patch pour les joueurs qui en ont pas de custom 
[player, "cgqc_patch_logo"] call BIS_fnc_setUnitInsignia;

// Assign patch based on name  ------------------------------------------------------------------------------------
sleep 2;
if ((_name find ["Audi", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_audi.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Audi!</t><br/><t>what's up?</t>"
	);
	[player, "cgqc_patch_audi"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Braddock", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_braddock.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Mafia!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_cloutier"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Cloutier", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_cloutier.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Cloutier!</t><br/><t>Asti que t'es beau</t>"
	);
	[player, "cgqc_patch_cloutier"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Comeau", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_comeau.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Comeau!</t><br/><t>Asti que t'es beau!</t>"
	);
	[player, "cgqc_patch_comeau"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Fortin", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_fortin.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Dogo!</t><br/><t>ça roule?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_fortin"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Frechette", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_frechette.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Frechette!</t><br/><t>what's up buddy?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_frechette"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Genest", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_genest.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo petit beurre!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_genest"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Laforest", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_laforest.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Frog!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_laforest"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Pinard", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_pinard.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo PinHard!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_pinard"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Tremblay", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_tremblay.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Tremblay!</t><br/><t>what's up Captain'?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_tremblay"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Villeneuve", 0]) > 0) then {
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_villeneuve.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo Logic!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_villeneuve"] call BIS_fnc_setUnitInsignia;
};

if ((_name find ["Woods", 0]) > 0) then {
	hint "woods?";
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='\cgqc\patches\cgqc_patch_woods.paa'/>" +
	"<br/>" +
	"<t size='2' >Yo XiPoWnZX!</t><br/><t>what's up?</t>"
	);
	// load insignia 
	[player, "cgqc_patch_woods"] call BIS_fnc_setUnitInsignia;
};

// Show text and patch ------------------------------------------------------------------------------------
[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
// sleep a bit before going out
sleep 4;
/*
// Print all players status in chat
	{
		systemChat format [
			"%1 est %2", 
			name _x, 
			["mort", "vivant"] select alive _x
		];
		sleep 1;
	} forEach allPlayers;
*/