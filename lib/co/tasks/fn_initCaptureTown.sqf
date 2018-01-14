_handle = co_terminal addAction ["Ortschaft einnehmen", {[Task_Cap_fnc_remoteCaptureTown] spawn missiontemplate_fnc_getLocationOnMap}, []];

co_terminal setVariable ["co_handle", _handle];