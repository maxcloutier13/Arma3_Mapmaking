// Activation condition ===============================================================================================
private _playerVeh = vehicle player;
if (_playerVeh isKindOf "Helicopter" or _playerVeh isKindOf "Plane") then {
	private _unit = _this select 0;
		waitUntil{isTouchingGround _unit};
	sleep 3;
			if (!isTouchingGround _unit) exitWith{};
		waitUntil{speed _unit <2};
	sleep 3;
			if (speed _unit > 2) exitWith{};
	_unit setVehicleAmmo 1;
	
// Resupply =============================================================================================================

	//Start Message
	if ((damage _unit > 0) or (fuel _unit < 0.95)) then {
			//_unit engineOn false;
			titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#ff0000'>Maintenance rapide</t>", "PLAIN", 0, true, true];
			_timeleft4 = 5;
			while {true} do {
				hintsilent parseText format ["<t size='2' color='#ff0000'>Waiting... %1</t>", [((_timeleft4)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
				_timeleft4 = _timeleft4 -1;
			if (_timeleft4 <= 0) exitWith {
				hintsilent "";
				};
			};
		sleep 3;
		//---------------------------------------------------------------------------------------------------------------------
		//Repair Timer
		if (damage _unit > 0) then {
			_timeleft1 = 2;
			while {true} do {
				hintsilent parseText format ["<t size='2' color='#ff0000'>Réparation... %1</t>", [((_timeleft1)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
				_timeleft1 = _timeleft1 -1;
		sleep 1;
			if (_timeleft1 <= 0) exitWith {
				hintsilent "";
				titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#00FF22'>Réparation terminée</t>", "PLAIN", 0, true, true];
		sleep 3;
				titleText ["", "PLAIN"];
				_unit setDamage 0;
				};
			};
		} else {
			hint "Rien a réparer";
			sleep 5;
			hintsilent "";
		};
		//---------------------------------------------------------------------------------------------------------------------
		//Refuel Timer
		if (fuel _unit < 0.95) then {
			_unit setFuel 0;
			_timeleft3 = 2;
			while {true} do {
				hintSilent parseText format ["<t size='2' color='#ff0000'>Ravitaillement... %1</t>", [((_timeleft3)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
				_timeleft3 = _timeleft3 -1;
		sleep 1;
			if (_timeleft3 <= 0) exitWith {
				hintsilent "";
				titleText ["<t size='5' shadow='1' shadowOffset='0.05' color='#00FF22'>Ravitaillement terminé</t><br/><tt size='3' shadow='1' shadowOffset='0.05' color='#ffde00'>maintenance is finished.</t>", "PLAIN", 0, true, true];
				_unit setFuel 1;
			sleep 5;
				titleText ["", "PLAIN"];
			sleep 1;
				};
			};
		} else {
			hint "Pas besoin d'essence";
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

