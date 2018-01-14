
_veh = param [0, objNull, [objNull]];
_crew = fullCrew [_veh, "", true];

_status = [0,0,0];//[<units_count>,<cargo_count>]
{
  if(_x select 2 > -1) then {
    _status = _status vectorAdd [0,1,0];
    if(!isNull (_x select 0)) then {
      _status = _status vectorAdd [1,0,0];
    }
  };
} foreach _crew;
_status deleteAt 2;
_status
