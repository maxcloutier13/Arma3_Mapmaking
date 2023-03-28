_type = _this select 0;
_size_choice = _this select 1;
table_size = 4;

switch (_size_choice) do {
	case 0: { 
		table_size = 40; 
	};
	case 1: {
		table_size = 20; 
	};
	case 2: {
		table_size = 4; 
	};
};

switch (_type) do {
	case 0: { //Delete
		[seb_table] remoteExec ["sebs_briefing_table_fnc_clearTable", 0, seb_table]; 
	};
	case 1: {
		[seb_table, "table_spawn", 20, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
	case 2: {
		[seb_table, "table_heli", 20, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
	case 3: {
		[seb_table, "table_snipe", 50, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
	case 4: {
		[seb_table, "table_vic", 20, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
	case 5: {
		[seb_table, "table_weap", 20, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
	case 6: {
		[seb_table, "table_house", 20, table_size, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, seb_table];
	};
};
