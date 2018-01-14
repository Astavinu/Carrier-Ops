// Features
enableFirstPersonOnly = true;//0 deaktiviert das Script komplett (auch die nächste Zeile)
enableVehicle3rdPerson = false;//3rd Person in Fahrzeugen erlaubt
enableDebug = false;

// Allgemeine Einstellungen
enableSaving [false,false];
enableTeamSwitch false;
setViewDistance 1500;

//-------------------------------------------------------------------------------------------------
//----------------------------------- DO NOT EDIT BELOW ------------------------------------
//-------------------------------------------------------------------------------------------------

//TFAR Einstellungen
if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	call compile preprocessFileLineNumbers "lib\mod\TFAR\init.sqf";
};

//AceParamSettings
if (isServer) then 
{
	if (isClass (configFile >> "CfgPatches" >> "ace")) then {
		call compile preprocessFileLineNumbers "lib\core\aceParams.sqf";
	};

	[] spawn 
	{
		sleep 5;
		call CO_fnc_taskStatic;
		call CO_fnc_taskDispatcher;
	}
};

//first person only
if(hasInterface) then
{
	forceView = true;
	[] spawn 
	{
		while {forceView} do 
		{
			waitUntil {(cameraView == "EXTERNAL") && ((vehicle player == player) || ((getMarkerPos "respawn_west" distance player) > 300))};
			vehicle player switchCamera "INTERNAL";
			sleep 0.1;
		};
	};
};
