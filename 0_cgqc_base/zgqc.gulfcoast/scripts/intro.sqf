waitUntil {time > 1};
sleep 10;
_text = (
    "<img size= '6' style='vertical-align:middle' shadow='false' image='textures\CGQC.paa'/>" +
    "<br/>" +
    "<t size='2' >ZGQC</t><br /><t align='right'>by Darkangel</t>"
);

[_text,0,0,10,2] spawn BIS_fnc_dynamicText;
