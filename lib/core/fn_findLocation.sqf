
_pos = param [0,[0,0,0], [[]]];

_min = 0;

_loc = [];
_loc pushback nearestLocation [ _pos, "NameVillage"];
_loc pushback nearestLocation [ _pos, "NameCity"];
_loc pushback nearestLocation [ _pos, "NameCityCapital"];

_dis = [];
_dis pushback (getPos (_loc select 0) distance2D _pos);
_dis pushback (getPos (_loc select 1) distance2D _pos);
_dis pushback (getPos (_loc select 2) distance2D _pos);

if(_dis select 0 < _dis select 1 && _dis select 0 < _dis select 2) then {
	_min = _loc select 0;
} else {
	if(_dis select 1 < _dis select 0 && _dis select 1 < _dis select 2) then {
		_min = _loc select 1;
	} else {
		_min = _loc select 2;
	};
};
_min