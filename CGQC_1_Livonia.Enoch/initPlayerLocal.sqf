// Config options for quick toggle of features 
// Play the intro
cgqc_cfg_intro = false;
// Show 3dIcons 
cgqc_cfg_3dicons = false;

// ------------------------------------------------------
// Init Script on player connect
// ------------------------------------------------------

// Loads Briefing items
[] execVM "scripts\CGQC_Briefing.sqf";
// load intro
if (cgqc_cfg_intro) then {
	[] execVM "scripts\CGQC_Intro.sqf";
};

// load basic uniform
[] execVM "scripts\cgqc_default_loadout.sqf";

if (cgqc_cfg_3dicons) then {
	// ------------------------------------------------------
	// 3D text & icon over object
	// ------------------------------------------------------
	// Make a copy of an entry if needed.

	// Arsenal box -------------------------------------------------------------------------------------------
	_3dIcon_text = addMissionEventHandler ["Draw3D", {
		// distance from player. Can be changed.
		if ((cgqc_box_arsenal_1 distance player < cgqc_cfg_3dicons_dist)) then {
			private _position = getPos cgqc_box_arsenal_1;
			private _offsetX = 0;
			private _offsetY = -0.07;
			private _drawSideArrows = false;
			private _texture = getMissionPath 'textures\arsenal.paa'; // custom icon path to show over object 
			_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
			private _width = 0.8;
			private _height = 0.8;
			private _angle = 0;
			private _text = 'Arsenal';  // text to show over object 
			private _textSize = 0.05;
			private _font = 'PuristaSemiBold';
			private _textAlign = 'center';
			private _shadow = 2;
			drawIcon3D [_texture, [1, 0, 0, 1], _position, _width, _height, _angle, _text, _shadow, _textSize, _font, _textAlign, _drawSideArrows, _offsetX, _offsetY];
		};
	}];

	// Radio box -------------------------------------------------------------------------------------------
	_3dIcon_text_1 = addMissionEventHandler ["Draw3D", {
		if ((cgqc_box_radio_1 distance player < cgqc_cfg_3dicons_dist)) then {
			// distance from player text is visible (customise this value = 10) 
			private _position = getPos cgqc_box_radio_1;
			private _offsetX = 0;
			private _offsetY = -0.07;
			private _drawSideArrows = false;
			private _texture = getMissionPath 'textures\icon_radio.paa'; // custom icon path to show over object 
			_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
			private _width = 0.8;
			private _height = 0.8;
			private _angle = 0;
			private _text = 'Radios';  // text to show over object 
			private _textSize = 0.05;
			private _font = 'PuristaSemiBold';
			private _textAlign = 'center';
			private _shadow = 2;
			drawIcon3D [_texture, [87, 18, 173, 1], _position, _width, _height, _angle, _text, _shadow, _textSize, _font, _textAlign, _drawSideArrows, _offsetX, _offsetY];
		};
	}];

	// Medical stand -------------------------------------------------------------------------------------------
	_3dIcon_text_2 = addMissionEventHandler ["Draw3D", {
		if ((cgqc_stand_medical_1 distance player < cgqc_cfg_3dicons_dist)) then {
			// distance from player text is visible (customise this value = 10) 
			private _position = getPos cgqc_stand_medical_1;
			private _offsetX = 0;
			private _offsetY = -0.07;
			private _drawSideArrows = false;
			private _texture = getMissionPath 'textures\red_cross.paa'; // custom icon path to show over object 
			// distance over object (customise this value = 3.3) 
			_position set [2, (_position # 2) + 1.8];
			private _width = 0.8;
			private _height = 0.8;
			private _angle = 0;
			private _text = 'Medical';
			private _textSize = 0.05;
			private _font = 'PuristaSemiBold';
			private _textAlign = 'center';
			private _shadow = 2;
			drawIcon3D [_texture, [245, 221, 39, 1], _position, _width, _height, _angle, _text, _shadow, _textSize, _font, _textAlign, _drawSideArrows, _offsetX, _offsetY];
		};
	}];

	// Base items -------------------------------------------------------------------------------------------
	_3dIcon_text_3 = addMissionEventHandler ["Draw3D", {
		if ((cgqc_laptop_base distance player < cgqc_cfg_3dicons_dist)) then {
			// distance from player text is visible (customise this value = 10) 
			private _position = getPos cgqc_laptop_base;
			private _offsetX = 0;
			private _offsetY = -0.07;
			private _drawSideArrows = false;
			private _texture = getMissionPath 'textures\icon_basicitems.paa'; // custom icon path to show over object 
			_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
			private _width = 0.8;
			private _height = 0.8;
			private _angle = 0;
			private _text = 'Basic Items';  // text to show over object 
			private _textSize = 0.05;
			private _font = 'PuristaSemiBold';
			private _textAlign = 'center';
			private _shadow = 2;
			drawIcon3D [_texture, [245, 221, 39, 1], _position, _width, _height, _angle, _text, _shadow, _textSize, _font, _textAlign, _drawSideArrows, _offsetX, _offsetY];
		};
	}];
};

// ------------------------------------------------------
// Grad Persistence - Fortification / ACE interaction (SELF) / (MENU vehicle)
// ------------------------------------------------------
/*
// -------------------------------------------------------------------------------------------------------------------------------------------------
	[for_truck, "Land_BagFence_Long_F", 10] call grad_fortifications_fnc_addFort;
	[for_truck, "Land_Cargo_Patrol_V1_F", 2] call grad_fortifications_fnc_addFort;
	[for_truck, "Land_Cargo_House_V1_F", 1] call grad_fortifications_fnc_addFort;
	[for_truck, "Land_BagBunker_Small_F", 4] call grad_fortifications_fnc_addFort;
	[for_truck, "O_HMG_01_high_F", 4] call grad_fortifications_fnc_addFort;
	
	[exemple1, "Land_BagFence_Long_F", 40] call grad_fortifications_fnc_addFort;
	
// -------------------------------------------------------------------------------------------------------------------------------------------------
*/