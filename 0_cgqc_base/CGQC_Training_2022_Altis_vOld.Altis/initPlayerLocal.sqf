//Set training map variable 
cgqc_flag_isTraining = true;

//["InitializePlayer", [player]] call BIS_fnc_dynamicGroups; // Initializes the player/client side Dynamic Groups framework

// Add briefing to mission begin and map menu ("<br/>") == retour à la ligne (+) == Continuation du texte dans la même variable
_cgqc_info = (
"<font size='26' color='#00CA1B'Rejoignez-nous!</font>" +
"<br/>" +
"<font size='20' color='#BDBDBD'>discord.gg/RCyRKWVG</font>" +
"<br/>" +
"<font size='20' color='#BDBDBD'>Teamspeak: ts.cgqc.ca</font>"
);
player createDiaryRecord ["Diary", ["CGQC", _cgqc_info]];
player createDiaryRecord ["Diary", ["MK1", "Tentative de codifier un loadout standard pour simplifier la création de nos missions tout en offrant un haut niveau de détails pour les joueurs.</br>"]];