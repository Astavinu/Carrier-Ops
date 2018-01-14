
[] spawn {
	_task_create = {
		task_airSuperiority = [
			west,			//0: BOOL or OBJECT or GROUP or SIDE or ARRAY - Task owner(s)
			["airSuperiority"],		//1: STRING or ARRAY - Task name or array in the format [task name, parent task name]
			[				//2: ARRAY or STRING - Task description in the format ["description", "title", "marker"] or CfgTaskDescriptions class
			"Stellen Sie Luftüberlegenheit im Einsatzgebiet her, indem Sie eine Rotte Luftüberlegenheitsjäger auf Patrouille schicken.
			
			[6 Spieler-Punkte/Minute]",
			"Luftüberlegenheit",
			""
			],			
			objNull,		//3: OBJECT or ARRAY or STRING - Task destination
			1,				//4: BOOL or NUMBER or STRING - Task state (or true to set as current)
			3,				//5: NUMBER - Task priority (when automatically selecting a new current task, higher priority is selected first)
			true,			//6: BOOL - Show notification (default: true)
			"plane",		//7: STRING - Task type as defined in the CfgTaskTypes
			true			//8: BOOL - Should the task be shared (default: false), if set to true, the assigned players are being counted
		] call BIS_fnc_taskCreate ;
		CO_tasks pushBack task_airSuperiority;
	};
	
	_task_clean = {
		["airSuperiority", true] spawn BIS_fnc_deleteTask;
		CO_tasks deleteAt (CO_tasks find "airSuperiority");
	};
	
	call _task_create;
	
	_loop = true;
	_status = 0;
	while {_loop} do {
		
		_players = [];
		{
			if(vehicle _x isKindof "Plane" && speed _x > 100) then {
				_players pushback _x;
			};
		} foreach allplayers;
		
		if (count _players >= 1) then {
			if(_status != 1) then {
				["airSuperiority", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
				_status = 1;
			};
			{_x addScore 1} foreach _players;
		} else {
			if(_status != 0) then {
				call _task_clean;
				sleep 1;
				call _task_create;
				_status = 0;
			};
		};
		sleep 20;
	};
};