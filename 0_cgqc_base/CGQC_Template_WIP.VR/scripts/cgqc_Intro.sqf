private ["_text"];

[] spawn {
	// Black screen 
	[0, "BLACK", 0.05] spawn BIS_fnc_fadeEffect;
	// Kill sound - Doesn't work
	0.1 fadeSound 0;
	0.1 fadeMusic 0;
	// Fade in the sound
	10 fadeSound 1;
	15 fadeMusic 1;

	// max not sure this is needed. Advise.
	titleText ["", "PLAIN"];
	titleFadeOut 2;

	// Audi CGQC Logo Intro
	sleep 4;
	_text = (
	"<img size= '6' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +// Logo here
	"<br/>" +
	"<t size='2' >Opération Face de Pet</t><br /><t align='right'>par Cpl. Cloutier</t>"// Mapmaker name here
	);
	[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
	sleep 5;

	// Wake up with blur
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	[1, "BLACK", 5] spawn BIS_fnc_fadeEffect;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 2;

	// Infotext en bas à droide
	sleep 10;
	[str ("QG de l'Unité 13"), str("Quelque part"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
	sleep 20;
};