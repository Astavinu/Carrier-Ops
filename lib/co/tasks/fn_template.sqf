
/*
  see 
  https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul
  https://community.bistudio.com/wiki/Arma_3_Task_Framework
  for details
*/

task_temp = [
	west,			//0: BOOL or OBJECT or GROUP or SIDE or ARRAY - Task owner(s)
	["task2"],		//1: STRING or ARRAY - Task name or array in the format [task name, parent task name]
	[				//2: ARRAY or STRING - Task description in the format ["description", "title", "marker"] or CfgTaskDescriptions class
	"Stellen Sie Luftüberlegenheit im Einsatzgebiet her, indem Sie eine Rotte Luftüberlegenheitsjäger auf Patrouille schicken.",
	"Luftüberlegenheit",
	""
	],			
	objNull,		//3: OBJECT or ARRAY or STRING - Task destination
	1,				//4: BOOL or NUMBER or STRING - Task state (or true to set as current)
	3,				//5: NUMBER - Task priority (when automatically selecting a new current task, higher priority is selected first)
	true,			//6: BOOL - Show notification (default: true)
	"plane",		//7: STRING - Task type as defined in the CfgTaskTypes
	true			//8: BOOL - Should the task being shared (default: false), if set to true, the assigned players are being counted
	] call BIS_fnc_taskCreate ;
	
/*
		A, armor, attack
		B, backpack, boat, box
		C, car, container
		D, danger, Default, defend, destroy, documents, download
		E, exit
		F,
		G, getin, getout
		H, heal, heli, help
		I, intel, interact
		J,
		K, kill
		L, land, listen
		M, map, meet, mine, move, move1, move2, move3, move4, move5
		N, navigate
		O,
		P, plane
		Q,
		R, radio, rearm, refuel, repair, rifle
		S, scout, search
		T, takeoff, talk, talk1, talk2, talk3, talk4, talk5, target, truck
		U, unknown, upload, use
		V,
		W, wait, walk, whiteboard
		X,
		Y,
		Z,
*/
//[params, target, desc, (dest, state, priority, showNotification, isGlobal, type, shared)] call BIS_fnc_setTask; 


//notify player
["TaskCreated",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
/*
["TaskCreatedIcon",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskAssigned",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskCanceled",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskFailed",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskSucceeded",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskUnassignedIcon",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
["TaskUpdated",["", "Luftüberlegenheit"]] call bis_fnc_showNotification;
*/
//task_airSuperiority setSimpleTaskDestination (position player);
["ScoreAdded",["Luftüberlegenheit",5]] call bis_fnc_showNotification;