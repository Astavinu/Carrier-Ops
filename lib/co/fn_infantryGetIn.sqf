
_grp = param [0, grpNull, [grpNull]];
_veh = param [1, objNull, [objNull]];

_units = units _grp;

//hint format["%1 in %2", _units, _veh];

{
	//_x assignAsCargo _veh;
	_x moveInCargo _veh;
} foreach _units;

//_units orderGetIn true;
