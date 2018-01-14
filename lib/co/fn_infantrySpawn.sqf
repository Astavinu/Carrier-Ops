
_logic = param [0, objNull, [objNull]];
_unit_classes = param [1, [], [[]]];
_pos = param [2, [0,0,0], [[]]];

_units = [];
_grp = createGroup west;
{
	_units pushBack (_grp createUnit [_x, _pos, [], 5, "NONE"]);
} foreach _unit_classes;
[_logic, _grp] call CO_fnc_addTaskGroup;
_grp
