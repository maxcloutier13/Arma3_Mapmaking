// Show intro info ------------------------------------------------------------------------------------
waitUntil {time > 1};
sleep 2;
_text = (
"<img size= '8' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +
"<br/>" +
"<t size='2' >%1</t><br /><t size = '1'>%2</t>"
);

_text = format [_text, cgqc_mission_name, cgqc_mission_maker];

sleep 2;
[_text, 0, 0, 3, 2] spawn BIS_fnc_dynamicText;
sleep 6;

