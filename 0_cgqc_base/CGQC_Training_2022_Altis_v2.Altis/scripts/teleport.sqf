_tele = _this select 0;
//_caller1 = _this select 1;
hintsilent format ["Teleport: %1", _tele];
player setPos (getpos (_tele));