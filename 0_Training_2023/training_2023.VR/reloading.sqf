// --- reloading ----------------------------------------------------------
// Called when reloading  

// Skip if setting is turned off
if (cgqc_zeus_packRestricted) then {
	_type = _this select 0;
	_weaponInfo = _this select 1; // 0 - unit /1- Gun1 /2- Gun2? /3-[Mag, info]/4-[Mag2, info]
	_weapon = _weaponInfo select 1;
	_mag = _weaponInfo select 3;
	hint format ["Weapon:%1 - Mag:%2", _weapon, _mag];
	// Make sure the gun reloading is the primaryWeapon 
	_primary = primaryWeapon player;
	_handgun = handgunWeapon player;
	_launcher = secondaryWeapon player;
	// Ignore launchers
	if !(_weapon isEqualTo _launcher) then {
		switch (_type) do {
			case 0:{
				// Notes all the currently held primary mags
				_vest_validMags = [];
				_vest_allMags = vestMagazines player; 
				_magTypes =  getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");
				{if (_x in _magTypes) then {_vest_validMags pushBack _x}} forEach _vest_allMags;
				cgqc_player_vest_primaryMags = count _vest_validMags;
				// Pack mags
				_pack_validMags = [];
				_pack_allMags = vestMagazines player; 
				{if (_x in _magTypes) then {_pack_validMags pushBack _x}} forEach _pack_allMags;
				cgqc_player_pack_primaryMags = count _pack_validMags;
				break;
			};
			case 1:{
				// Check where the mag came from 
				_vest_validMags = [];
				_vest_allMags = vestMagazines player; 
				_magTypes =  getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");
				{if (_x in _magTypes) then {_vest_validMags pushBack _x}} forEach _vest_allMags;
				_current_vestMags = count _vest_validMags;
				// Pack mags
				_pack_validMags = [];
				_pack_allMags = vestMagazines player; 
				{if (_x in _magTypes) then {_pack_validMags pushBack _x}} forEach _pack_allMags;
				_current_packMags = count _pack_validMags;
				if !(_current_vestMags < cgqc_player_vest_primaryMags) then {
					//Mag NOT from the vest? Verify backpack to be sure 
					if(_current_packMags < cgqc_player_pack_primaryMags)  then {
						//Mag from pack! No way jose!
						hint "Cannot reload from backpack. Transfer mags to vest!";
						// Steal mag from gun 
						_primaryMag = (primaryWeaponMagazine player) select 0;
						player removePrimaryWeaponItem _primaryMag;
						player addItemToBackpack _primaryMag; 
						// Put it back in the backpack
					}else {
						hint "Reloaded from uniform?";
					};
				}else {
					hint "Reloaded from vest";
				};
			};
		};    
	}else {hint "Reloading launchers"};
};
