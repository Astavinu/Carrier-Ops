
_logic = param [0, objNull, [objNull]];

_name = format["%1", _logic getvariable "co_task"];
_handle = player getVariable [_name, 0];

if(!isNil "_handle" && _handle > 0) then {
  player removeAction _handle;
};

player setVariable [_name, nil];
