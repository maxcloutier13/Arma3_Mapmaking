waitUntil {
	time > 1
};
sleep 20;
_text1 = [
	[
		["Camp Cambell - CGQC HeadQuarter", "<t align = 'center' shadow = '1' size = '1.2' font='PuristaBold'>%1</t><br/>"],
		["NO WEAPON AREA", "<t align = 'center' shadow = '1' size = '1.0' color='#ff0000'>%1</t><br/>"],
		["Please holster all your weapons", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 15]
	], 0, 1
];
_text1 spawn BIS_fnc_typeText;