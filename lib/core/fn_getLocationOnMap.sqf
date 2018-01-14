script = param[0];

openMap true;
_mapEH = addMissionEventHandler ["MapSingleClick",{[_this select 1] call script; openMap false;}];
waitUntil {!visibleMap}; 
removeMissionEventHandler ["MapSingleClick",_mapEH];