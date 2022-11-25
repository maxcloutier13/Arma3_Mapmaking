_arguments = _this select 3;
_tele = _arguments select 0;
//_caller1 = _this select 1;
hint format ["Teleport: %1", _tele];
player setPos (getpos (_tele));
sleep 3;
hintSilent "";