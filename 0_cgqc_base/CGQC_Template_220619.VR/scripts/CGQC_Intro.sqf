
/*
//Kill sound
0.1 fadeSound 0;
0.1 fadeMusic 0;
//Black screen 
cutText ["", "BLACK FADED", 999];

[] Spawn {
	
	//Fade in the sound
	10 fadeSound 1;
	15 fadeMusic 1;
	titleText ["","PLAIN"];
	titleFadeOut 2;
	//Audi Intro
	sleep 2;
	_text = (
		"<img size= '6' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +
		"<br/>" +
		"<t size='2' >Opération Face de Pet</t><br /><t align='right'>par Cpl. Cloutier</t>"
	);
	[_text,0,0,3,2] spawn BIS_fnc_dynamicText;
	sleep 4;
	//Wake up with blur
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;
	titleCut ["", "BLACK IN", 2];
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 2; 

	/*
	// Intro dialog text 
	sleep 10;
	[str ("QG de l'Unité 13"), str("Quelque part"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
	sleep 20;
	QG_Commandant sideChat "Montez votre loadout de base.  Briefing dans 15mins.";
	sleep 10;
	QG_Commandant sideChat "Vous alez avoir du temps pour l'équipement spécifique quand vous aurez les détails de la mission.";
	sleep 10;
	QG_Commandant sideChat "Centaure et Griffon vous pouvez préparer vos véhicules dans le garage.";
	sleep 10;
	//QG_Commandant sideChat "Vous y trouverez aussi un stand de tir.";
	//sleep 10;
	QG_Commandant sideChat "Quand vous êtes prêts approchés vous du projecteur.";
	

};
