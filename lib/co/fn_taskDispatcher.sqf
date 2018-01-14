/*
OC_doTaskDispatch = true;
OC_taskClock = 6;

if (isNil "OC_tasks") then {
	OC_tasks = [];
};

while {OC_doTaskDispatch} do {
	_rnd = random (60*OC_taskClock);
	if (_rnd < 10) then {
		[] spawn task_fnc_dyn_dummy;
	};
	sleep (60/OC_taskClock);
};
*/