//[this] execVM "silent1_intel_slides.sqf";
_objet_interval = _this select 0;
while {true} do {
_objet_interval setObjectTextureGlobal [0, "textures\CGQC.paa"];
hint "logo loaded";
sleep 2;
_objet_interval setObjectTextureGlobal [0, "textures\QG_mapboard_title.paa"];
sleep 2; 
_objet_interval setObjectTextureGlobal [0, "textures\QG_mapboard_missionbrief.paa"];
sleep 10; 
};