
_logic = param [0, objNull, [objNull]];
_units = param [1, [], [[]]];
_pos = param [2, [0,0,0], [[]]];

player addAction [
  "Infanterie rufen","(_this select 3) call Task_cap_fnc_remoteInfantry;",
  [_logic, _units, _pos, vehicle player]
];

(_this select 3) call co_fnc_remoteInfantrySpawn;
[_this select 3 select 0, (_this select 3 select 3)] call co_fnc_remoteInfantryGetIn;
