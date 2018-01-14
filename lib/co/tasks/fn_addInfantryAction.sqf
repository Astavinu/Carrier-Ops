
_logic = param [0, objNull, [objNull]];
_units = param [1, [], [[]]];
_pos = param [2, [0,0,0], [[]]];

_handle = player addAction ["Infanterie rufen",
  "_temp = _this select 3; _temp pushBack (vehicle player); _grp = _temp call co_fnc_infantryFillVeh; [_grp, _this select 3 select 0] call co_fnc_infantryGetOutAndAttackLogic",
  [_logic, _units, _pos],
  1.5,
  true,
  true,
  ""//,
  //"player distance respawn_module < 10 && vehicle player != player"
];

[_logic, _handle] call co_fnc_addLogicHandle;
