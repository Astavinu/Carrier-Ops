
_array = param [0, [], [[]]];
_count = param [1, 0];

_i = 0;
_temp = [];
while {_i < _count} do {
  _temp pushBack (_array select (floor random count _array));
  _i = _i+1;
};
_temp
