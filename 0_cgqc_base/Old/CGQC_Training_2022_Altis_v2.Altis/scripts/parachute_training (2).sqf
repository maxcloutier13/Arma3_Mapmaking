_tele1 = _this select 0;
_caller1 = _this select 1;
_arguments = _this select 3;
_height = _arguments select 0;
if (backpack _caller1 isEqualTo "B_Parachute") then {
	// Fade to black  
	cutText ["", "BLACK FADED", 999];
	titleText ["Prêt?", "PLAIN"];
	sleep 3;

	switch (_height) do
	{
		case 800: {
			_caller1 setPos (getPos (para_training_800))
		};
		case 3000: {
			_caller1 setPos (getPos (para_training_3000))
		};
		case 5000: {
			_caller1 setPos (getPos (para_training_5000))
		};
		default {
			hint "Nope. Something's wrong"
		};
	};
	// Give some velocity 
	_caller1 setVelocity [(vectorDir _caller1 select 0)*300, (vectorDir _caller1 select 1)*300, (vectorDir _caller1 select 2)];
	// max not sure this is needed.
	titleFadeOut 2;
	// Wake up with blur
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	titleCut ["", "BLACK IN", 2];
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 2;
} else {
	hint "Sans parachute? T'es malade! Regarde dans la caisse blanche.";
};