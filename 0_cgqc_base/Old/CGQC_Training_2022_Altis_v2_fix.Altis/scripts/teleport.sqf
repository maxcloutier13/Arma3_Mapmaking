_arguments = _this select 3;
_tele = _arguments select 0;
//_caller1 = _this select 1;
hint format ["Teleport: %1", _tele];

switch (_tele) do {
	case tp_nimitz: {
		player setPosASL (getPosASL (_tele));
	};
	default {
		player setPos (getPosATL (_tele));
	};
};
sleep 3;
hintSilent "";