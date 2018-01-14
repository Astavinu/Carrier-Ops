private["_name","_val","_code","_temp"];

{
	_name = configName ((missionConfigFile >> "Params") select _forEachIndex);
	_code = getText (missionConfigFile >> "Params" >> _name >> "ASTA_code");
	_val = paramsArray select _forEachIndex;
	if (getText (missionConfigFile >> "Params" >> _name >> "ASTA_needsBoolean") != "") then {_val = if (_val > 0) then {true} else {false}};
	_temp = format[_code, _val];
	if !( _code == "" ) then {
		call compileFinal _temp;
	};
} forEach paramsArray;

true