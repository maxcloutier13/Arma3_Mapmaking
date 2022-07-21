_loc = _this select 0;
_area = _this select 1;
_cond = _this select 2;
_act = _this select 3;
_deAct = _this select 4;
_int = _this select 5;

_trg = createTrigger ["EmptyDetector",_loc, false];
_trg setTriggerArea _area;
_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
_trg setTriggerStatements [_cond, _act, _deAct];
_trg setTriggerInterval _int;