waitUntil {
	time > 1
};
_text = (
"<img size= '6' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +
"<br/>" +
"<t size='2' >Terrain d'entraînement</t><br /><t align='right'>CGQC</t>"
);
[_text, 0, 0, 2, 2] spawn BIS_fnc_dynamicText;
// Holster weapon
player action ['SwitchWeapon', player, player, 100];
// set rank according to player name prefix
sleep 7;
_name = name player;
_prefix = _name select[0, 4];
// hint format ["%1 -Rank: %2", _name, _prefix];
switch (_prefix) do
{
	case "Sdt.": {
		player setRank "PRIVATE";
		_text = ("<br/>" + "<t size='2' >Bonsoir Soldat!</t>");
	};
	case "Cpl.": {
		player setRank "CORPORAL";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Caporal!</t>");
	};
	case "CplC": {
		player setRank "CORPORAL";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Caporal-Chef!</t>");
	};
	case "Sgt.": {
		player setRank "SERGEANT";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Sergeant!</t>");
	};
	case "Adju": {
		player setRank "SERGEANT";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Adjudent!</t>");
	};
	case "SLt.": {
		player setRank "LIEUTENANT";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Sous-Lieutenant!</t>");
	};
	case "Lt. ": {
		player setRank "LIEUTENANT";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Lieutenant!</t>");
	};
	case "Capt": {
		player setRank "CAPTAIN";
		_text = ("<br/>" + "<t size='2' >Sup, Tremblay!</t>");
	};
	case "Maj.": {
		player setRank "MAJOR";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Major!</t>");
	};
	case "LCol": {
		player setRank "COLONEL";
		_text = ("<br/>" + "<t size='2' >Sup Fréchette?</t>");
	};
	case "Col.": {
		player setRank "COLONEL";
		_text = ("<br/>" + "<t size='2' >Yo Audi!</t>");
	};
	default {
		player setRank "PRIVATE";
		_text = ("<br/>" + "<t size='2' >Bonsoir, Visiteur!</t>" +
		"<br/>" +"<t size='1' >Joint nous sur teamspeak: ts.cgqc.ca</t>" +
		"<br/>" +"<t size='1' >discord.gg/RCyRKWVG</t>");
	};
};
[_text, 0, 0, 2, 2] spawn BIS_fnc_dynamicText;
titleFadeOut 2;
{
	systemChat format [
		"%1 est %2",
		name _x,
		["mort", "vivant"] select alive _x
	];
	sleep 1;
} forEach allPlayers;