_arguments = _this select 3;
_tele1 = _arguments select 0;

//_caller1 = _this select 1;
hintsilent format ["Teleport: %1", _tele1];
player setPos (getpos (_tele1));