
_logic = param [0, objNull, [objNull]];
_unit_classes = param [1, ["B_Soldier_F"], [[]]];
_pos = param [2, [0,0,0], [[]]];
_veh = param [3, objNull, [objNull]];

_crew = fullCrew _veh;
_status = [_veh] call co_fnc_getVehicleCargoStatus;

_count_empty = (_status select 1) - (_status select 0);
_units = [_unit_classes, _count_empty] call co_fnc_randomDraw;

//hint format["%1\n%2\n%3\n%4", _this, _status, _units, _veh];

_grp = [_logic, _units, _pos] call co_fnc_InfantrySpawn;
[_grp, _veh] call co_fnc_InfantryGetIn;
_grp
