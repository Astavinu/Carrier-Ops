_logic = param[0, objNull, [objNull]];
_grp = param[1, grpNull, [grpNull]];


if (side _grp == west) then {
	_groups = _logic getVariable "CO_groups_own";
	if (isNil "_groups") then {
		_groups = [];
	};
	
	_groups pushBack _grp;
	_logic setVariable ["CO_groups_own",_groups];
} else {
	_groups = _logic getVariable "CO_groups";
	if (isNil "_groups") then {
		_groups = [];
	};
	
	_groups pushBack _grp;
	_logic setVariable ["CO_groups",_groups];
};
