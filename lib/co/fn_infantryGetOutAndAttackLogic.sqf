
_grp = param [0, grpNull, [grpNull]];
_logic = param [1, objNull, [objNull]];
_pos = getPos _logic;

while {(count (waypoints (group player) )) > 0} do {
   deleteWaypoint ((waypoints (group player) ) select 0);
};
_lz = group player addWaypoint [_pos, 500];
_lz setWaypointType "TR UNLOAD";
_lz setWaypointCompletionRadius 500;

_wp = _grp addWaypoint [_pos, 0];
_wp setWaypointType "GETOUT";
//_wp setWaypointCompletionRadius 20;
_wp synchronizeWaypoint [_lz];
_grp setCurrentWaypoint _wp;
