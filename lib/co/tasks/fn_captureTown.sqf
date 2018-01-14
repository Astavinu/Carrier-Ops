/*
	[task_fnc_captureTown] spawn missiontemplate_fnc_getLocationOnMap;
*/

_pos = param [0,[0,0,0], [[]]];

[_pos] spawn {
	_pos = param [0];

	_loc_type = [];
	_loc_type pushback "NameVillage";
	_loc_type pushback "NameCity";
	_loc_type pushback "NameCityCapital";

	_points_side = 50;
	_points_player = 0;
	_points_player_minute = 0;


	_task_create = {
		_logic = param [0, objNull, [objNull]];
		_loc = param [1, locationNull, [locationNull]];

		_task = [
			west,								//0: BOOL or OBJECT or GROUP or SIDE or ARRAY - Task owner(s)
			[format["capture%1", text _loc]],		//1: STRING or ARRAY - Task name or array in the format [task name, parent task name]
			[										//2: ARRAY or STRING - Task description in the format ["description", "title", "marker"] or CfgTaskDescriptions class
			format["Unterstützen Sie die Infanterie dabei %1 einzunehmen.

			[%2 Fraktions-Punkte].", text _loc, _points_side],
			format["%1 einnehmen", text _loc],
			""
			],
			getPos _loc,				//3: OBJECT or ARRAY or STRING - Task destination
			1,									//4: BOOL or NUMBER or STRING - Task state (or true to set as current)
			3,									//5: NUMBER - Task priority (when automatically selecting a new current task, higher priority is selected first)
			true,								//6: BOOL - Show notification (default: true)
			"attack",						//7: STRING - Task type as defined in the CfgTaskTypes
			true								//8: BOOL - Should the task be shared (default: false), if set to true, the assigned players are being counted
		] call BIS_fnc_taskCreate;

		_logic setVariable ["CO_task", _task];
	};

	_task_clean = {
		_logic = param [0, objNull, [objNull]];
		_task = _logic getVariable "CO_task";
		[_task, true] spawn BIS_fnc_deleteTask;
	};


	_marker_create = {
		_logic = param [0, objNull, [objNull]];
		_loc = param [1, locationNull, [locationNull]];
		_size = param [2, 100, [0]];
		_task = _logic getVariable "CO_task";

		_m = createMarker [format["mkr%1",_task], getPos _loc];
		_m setMarkerSize [_size*100, _size*100];
		_m setMarkerColor "ColorEAST";
		_m setMarkerShape "ELLIPSE";
		_m setMarkerBrush "DiagGrid";

		_logic setVariable ["CO_marker", _m];
	};

	_marker_clean = {
		_logic = param [0, objNull, [objNull]];
		_marker = _logic getVariable "CO_marker";
		deleteMarker _marker;
	};


	_enemies_create = {
		_logic = param [0, objNull, [objNull]];
		_loc = param [1, locationNull, [locationNull]];
		_size = param [2, 100, [0]];

		_units = [];

		_grp = createGroup east;
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		[_grp,getPos _loc,_size*50] call BIS_fnc_taskPatrol;
		[_logic, _grp] call CO_fnc_addTaskGroup;

		_grp = createGroup east;
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		_units pushBack (_grp createUnit ["O_G_Soldier_SL_F", getPos _loc, [], 20, "NONE"]);
		[_grp,getPos _loc,_size*100] call BIS_fnc_taskPatrol;
		[_logic, _grp] call CO_fnc_addTaskGroup;

		_logic setVariable ["CO_units", _units];
		allcurators select 0 addCuratorEditableObjects [_units];
	};

	_enemies_clean = {
		_logic = param [0, objNull, [objNull]];
		_groups = _logic getVariable "CO_groups";
		{
			{
				_x setDamage 1;
			} foreach units _x;
		} foreach _groups;
	};


	_troops_create = {
		_logic = param [0, objNull, [objNull]];

		_units = [];
		_units pushBack "B_soldier_AR_F";
		_units pushBack "B_Soldier_GL_F";
		_units pushBack "B_Soldier_SL_F";
		_units pushBack "B_Soldier_F";

		_handle = [_logic, _units, getPosASL respawn_module] remoteExec ["Task_Cap_fnc_addInfantryAction", -2, true];
		//DEBUG!!
		[_logic, _units, getPosASL respawn_module] remoteExec ["Task_Cap_fnc_addInfantryAction", 2];
		_logic setVariable ["CO_JIP_handle", _handle];
	};

	_troops_clean = {
		_logic = param [0, objNull, [objNull]];

		_handle = _logic getVariable "CO_JIP_handle";
		remoteExec ["", _handle];
		[_logic] remoteExec ["co_fnc_delLogicHandle", 0];
	};


	_logic_create = {
		_center = createCenter sideLogic;
		_group = createGroup _center;
		_logic = _group createUnit ["LOGIC", getPos _loc, [], 0, "NONE"];
		_logic
	};


	_init = {
		_loc = param [0, locationNull, [locationNull]];
		temp = _loc;
		_size = _loc_type find type _loc;
		_size = _size +1;

		_logic = objNull;

		if(CO_tasks find format["capture%1", text _loc] == -1) then {
			_logic = [] call _logic_create;
			[_logic, _loc] call _task_create;

			_task = _logic getVariable "CO_task";
			missionNamespace setVariable [text _loc, _logic];
			CO_logics pushBack (missionNamespace getVariable text _loc);
			CO_tasks pushBack _task;

			[_logic, _loc, _size] call _marker_create;
			[_logic, _loc, _size] call _enemies_create;
			[_logic] call _troops_create;
		};

		_logic
	};

	_done = {
		_logic = param [0, objNull, [objNull]];

		_m = _logic getVariable "CO_marker";
		_m setMarkerColor "ColorWEST";
		_m setMarkerBrush "Solid";
		_m setMarkerAlpha 0.5;

		_task = _logic getVariable "CO_task";
		[_task, "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

		west addScoreSide _points_side;
	};

	_clean = {
		_logic = param [0, objNull, [objNull]];

		[_logic] call _enemies_clean;
		//leave marker on map
		//[_logic] call _marker_clean;
		_task = _logic getVariable "CO_task";
		CO_tasks deleteAt (CO_tasks find _task);
		[_logic] call _task_clean;
		[_logic] call _troops_clean;
	};




	_loc = [_pos] call missionTemplate_fnc_findLocation;
	_logic = [_loc] call _init;


	//GameLoop
	_units = _logic getVariable "CO_units";
	while {{alive _x} count _units > 0} do {
		sleep 5;
		_groups = _logic getVariable "CO_groups";
		_units = [];
		{
			{
				_units pushBack _x;
			} foreach units _x;
		} foreach _groups;
		temp_units = _units;
	} ;
	//GameLoop


	[_logic] call _done;
	[_logic] call _clean;

};
