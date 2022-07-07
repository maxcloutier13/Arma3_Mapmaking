private ["_text"];
// Black screen 
[0, "BLACK", 0.05] spawn BIS_fnc_fadeEffect;


// Kill sound 
0.1 fadeSound 0;
0.1 fadeMusic 0;


_null = [] spawn {
	// max not sure this is needed. Advise.
	titleText ["", "PLAIN"];
	titleFadeOut 2;
	// Wait a bit
	sleep 1;
	// Wake up with blur
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	// Fade in the sound
	10 fadeSound 1;
	15 fadeMusic 1;
	[1, "BLACK", 5] spawn BIS_fnc_fadeEffect;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 2;


	// Infotext en bas à droide
	sleep 15;
	[str ("QG de l'Unité 13"), str("Quelque part"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
	sleep 20;
};
