// Activation condition ===============================================================================================
private _playerVeh = vehicle player;
if (_playerVeh isKindOf "LandVehicle") then {
	private _unit = _this select 0;
		waitUntil{(getPos _unit select 2)<2};
	sleep 3;
			if ((getPos _unit select 2)>2) exitWith{};
		waitUntil{speed _unit < 2};
	sleep 3;
			if (speed _unit > 2) exitWith{};
	_unit setVehicleAmmo 1;
	
// Resupply =============================================================================================================

	//Start Message
	if ((damage _unit > 0) or (fuel _unit < 0.95)) then {
			_unit engineOn false;
			titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#ff0000'>We stop the engine for maintance...</t>", "PLAIN", 0, true, true];
		sleep 3;
		//---------------------------------------------------------------------------------------------------------------------
		//Repair Timer
		if (damage _unit > 0) then {
			_timeleft1 = 60;
			while {true} do {
				hintsilent parseText format ["<t size='2' color='#ff0000'>Repairing... %1</t>", [((_timeleft1)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
				_timeleft1 = _timeleft1 -1;
		sleep 1;
			if (_timeleft1 <= 0) exitWith {
				hintsilent "";
				titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#00FF22'>Repairing completed</t>", "PLAIN", 0, true, true];
		sleep 3;
				titleText ["", "PLAIN"];
				_unit setDamage 0;
				};
			};
		} else {
			hint "NOTHING TO REPAIR";
			sleep 5;
			hintsilent "";
		};
		//---------------------------------------------------------------------------------------------------------------------
		//Refuel Timer
		if (fuel _unit < 0.95) then {
			_unit setFuel 0;
			_timeleft3 = 60;
			while {true} do {
				hintSilent parseText format ["<t size='2' color='#ff0000'>Refueling... %1</t>", [((_timeleft3)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
				_timeleft3 = _timeleft3 -1;
		sleep 1;
			if (_timeleft3 <= 0) exitWith {
				hintsilent "";
				titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#00FF22'>Refueling completed</t><br/><tt size='3' shadow='1' shadowOffset='0.05' color='#ffde00'>maintenance is finished.</t>", "PLAIN", 0, true, true];
				_unit setFuel 1;
			sleep 5;
				titleText ["", "PLAIN"];
			sleep 1;
				};
			};
		} else {
			hint "NOTHING TO REFUEL";
			sleep 5;
			hintsilent "";
		};
	//_unit engineOn true;
	} else {
		hint "NOTHING TO DO HERE";
		sleep 5;
		hintsilent "";
	};	
};