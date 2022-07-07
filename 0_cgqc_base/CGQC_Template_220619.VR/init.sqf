
//------------------------------------------------------
// triggers
//------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------
/*
private _var = missionNamespace getVariable "rearm_trg1";
private _area = [9.27,9.648,0,true];
private _condition = "this";
private _activation = "{[_x] execVM 'scripts\rearm.sqf'} foreach thislist;";
private _desactivation = "";
private _interval = 5;
_trigger1 = [_var,_area,_condition,_activation,_desactivation,_interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "rearm_trg2";
private _area = [4.941,7.53,61.59,true];
private _condition = "this";
private _activation = "{[_x] execVM 'scripts\rearmGround.sqf'} foreach thislist;";
private _desactivation = "";
private _interval = 5;
_trigger2 = [_var,_area,_condition,_activation,_desactivation,_interval] execVM "scripts\my_trigger.sqf";

private _var = missionNamespace getVariable "hq_trg";
private _area = [30.615,21.415,0,true,5];
private _condition = "this && {player in thisList}";
private _activation = "{[_x] execVM 'scripts\HQ_no_fire.sqf'} foreach thislist;";
private _desactivation = "thisTrigger setTriggerInterval 200;";
private _interval = 0;
_trigger3 = [_var,_area,_condition,_activation,_desactivation,_interval] execVM "scripts\my_trigger.sqf";
//-------------------------------------------------------------------------------------------------------------------------------------------------
*/

//------------------------------------------------------
// 3D text & icon over object
//------------------------------------------------------


//Auto 3D text based on variable keyword
//Arsenal: keyword = cgqc_arsenal
_arsenals = allVariables select {toUpper _x find "CGQC_ARSENAL" >= 0};
for [{_i=0},{_i < (count _arsenals)},{_i=_i+1}] do
{
	_current_arsenal = ["cgqc_arsenal_", i] joinString;
	_3dIcon_text_1 = addMissionEventHandler ["Draw3D", { 
	if ((_current_arsenal distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos _current_arsenal;	  
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
		drawIcon3D [   
		_texture,   
		[1, 0, 0, 1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];

/*
//-------------------------------------------------------------------------------------------------------------------------------------------------
//QG  Arsenal 1
_3dIcon_text_1 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_arsenal_box_1 distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_arsenal_box_1;	  
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
		drawIcon3D [   
		_texture,   
		[1, 0, 0, 1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];

*/

//QG  radio
_3dIcon_text_2 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_radio_box_1 distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_radio_box_1;	  
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
		drawIcon3D [   
		_texture,   
		[87, 18, 173, 1],
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];

//QG  Medical
_3dIcon_text_3 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_medical_stand_1 distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_medical_stand_1;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\red_cross.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Medical';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[245, 221, 39, 1],
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];

//QG  Base items
_3dIcon_text_4 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_base_items distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_base_items;	  
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
		drawIcon3D [   
		_texture,   
		[245, 221, 39, 1],
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];



//------------------------------------------------------
// CGQC Legacy init
//------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------

enableSentences false;
CHVD_allowNoGrass = true;

// Only run on clients, excluding HCs
[] spawn {

	// Delay until the server time has sync'd
	waitUntil {time > 5};
	// For JIP, wait until the main screen loads
	waitUntil {!isNull (findDisplay 46) };

	// Check if player name contains the word "Zeus"
	if (["zeus", format["%1",player]] call BIS_fnc_inString) then {		
	
		_checkIfValidCuratorSlot = {
			private _curatorList = _this;
			
			// Check that Zeus has been assigned to player
			if (isNull (getAssignedCuratorLogic player)) then {
				private _exitLoop = false;
				{	
					// Find an unassigned Zeus slot and assign it to the player
					if (isNull (getAssignedCuratorUnit _x)) then { 
						[player, _x] remoteExecCall ["assignCurator",2]; 
						sleep 2.0;
						// Check if a valid Zeus slot
						if (isNull (getAssignedCuratorLogic player)) then {
							// Broken Zeus slot, so clear and repeat
							_x remoteExecCall ["unassignCurator",2]; 
							sleep 2.0;
						} else {
							hint format["Zeus assigned to curator %1", _x];
							_exitLoop = true;
						};
					}; 
					if (_exitLoop) exitWith {}; 
					
				} forEach _curatorList; 
			};
		};		
		
		// Find all curators and reverse list so to lessen chance of admin Zeus conflicts
		private _curatorList = allcurators;
		reverse _curatorList;
		
		// Check that Zeus has been initially assigned to player
		_curatorList call _checkIfValidCuratorSlot;
		
		// Ensure Zeus keeps slot, despite admin logging
		while {true} do {
			// Check that Zeus has been assigned to player
			_curatorList call _checkIfValidCuratorSlot;
			
			sleep 10.0;			
		};			
	};		
};

//-------------------------------------------------------------------------------------------------------------------------------------------------

/*
//QG  Arsenal 2
_3dIcon_text_1 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_arsenal_box_1 distance player < 8)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_arsenal_box_1;	  
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
		drawIcon3D [   
		_texture,   
		[1, 0, 0, 1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];




/*
//-------------------------------------------------------------------------------------------------------------------------------------------------
_3dIcon_text2 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_vtt_ft2 distance player < 20)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_vtt_ft2;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\fast_travel.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Fast Travel to Heliport';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[1,1,1,1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];
//-------------------------------------------------------------------------------------------------------------------------------------------------
_3dIcon_text3 = addMissionEventHandler ["Draw3D", { 
	if ((cgqc_vtt_ft1 distance player < 20)) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos cgqc_vtt_ft1;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\fast_travel.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 1.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Fast Travel to HeadQuarter';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[1,1,1,1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];
//-------------------------------------------------------------------------------------------------------------------------------------------------
_3dIcon_text4 = addMissionEventHandler ["Draw3D", { 
	if (rearm_trg2 distance player < 40) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos rearm_trg2;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\repair.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 2.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Ground Vehicles Services';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[1,1,1,1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];
//-------------------------------------------------------------------------------------------------------------------------------------------------
_3dIcon_text5 = addMissionEventHandler ["Draw3D", {
	if (rearm_trg1 distance player < 40) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos rearm_trg1;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\repair.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 2.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Helicopters Services';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[1,1,1,1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];
//-------------------------------------------------------------------------------------------------------------------------------------------------
_3dIcon_text5 = addMissionEventHandler ["Draw3D", {
	if (med_tent1 distance player < 40) then { // distance from player text is visible (customise this value = 10) 
		private _position = getPos med_tent1;	  
		private _offsetX = 0;   
		private _offsetY = -0.07;   
		private _drawSideArrows = false;   
		private _texture = getMissionPath 'textures\red_cross.paa'; // custom icon path to show over object 
		_position set [2, (_position # 2) + 5.8]; // distance over object (customise this value = 3.3) 
		private _width = 0.8;   
		private _height = 0.8;   
		private _angle = 0;   
		private _text = 'Medical Tent';  // text to show over object 
		private _textSize = 0.05;   
		private _font = 'PuristaSemiBold';   
		private _textAlign = 'center';   
		private _shadow = 2;  
		drawIcon3D [   
		_texture,   
		[1,1,1,1],   
		_position,   
		_width,	
		_height,	
		_angle,   
		_text,   
		_shadow,   
		_textSize,   
		_font,   
		_textAlign,   
		_drawSideArrows,   
		_offsetX,   
		_offsetY   
		]; 
	};	
}];
//-------------------------------------------------------------------------------------------------------------------------------------------------

*/