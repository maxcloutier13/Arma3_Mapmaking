// Add briefing to mission begin and map menu ("<br/>") == retour à la ligne (+) == Continuation du texte dans la même variable

_cgqc_ps_command = (
    "<font size='26' color='#00CA1B'>Persistance ADMIN Command</font>" +
    "<br/>" +
    "<font size='20' color='#BDBDBD'>Delete all data (Console Global Exec):</font>" +
    "<br/>" +
    "<font size='14' color='#ff0000'>""[] call grad_persistence_fnc_clearMissionData;""</font>" +
    "<br/>" +
    "<font size='20' color='#BDBDBD'>Save All Data (#Admin Chat Command):</font>" +
    "<br/>" +
    "<font size='14' color='#ff0000'>#gradPersistenceSave</font>"
);

player createDiaryRecord ["Diary", ["CGQC", _cgqc_ps_command]];
