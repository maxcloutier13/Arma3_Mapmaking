_tele1 = _this select 0;
_caller1 = _this select 1;
_arguments = _this select 3;
_distance = _arguments select 0;

_group1=createGroup west;
_target= 'rhs_vdv_rifleman';
if (_distance == 1) then {
	_target createUnit [getmarkerPos 'vest_test_1', _group1, 'target_1=this;dostop target_1'];
} else {
	_target createUnit [getmarkerPos 'vest_test_2', _group1, 'target_1=this;dostop target_2'];
};