
_logic = param [0, objNull, [objNull]];
_handle = param [1, 0, [0]];

if(_handle > 0) then {
  player setVariable [format["%1", _logic getvariable "co_task"], _handle];
}
