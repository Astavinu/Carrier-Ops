private["_medicsystem","_onelivemission"];
_medicsystem = "MT_Medicsystem" call BIS_fnc_getParamValue;
_onelivemission = "MT_OneLiveMission" call BIS_fnc_getParamValue;
switch (_medicsystem) do 
{ 
	case 0:	//Deactivate
	{
		ace_medical_medicSetting = 0;    //typeName = "SCALAR";
		ace_medical_increaseTrainingInLocations = true;    //typeName = "BOOL";
		ace_medical_enableFor = 2;    //typeName = "SCALAR";
		ace_medical_enableOverdosing = false;    //typeName = "BOOL";
		ace_medical_bleedingCoefficient = 0.5;    //typeName = "SCALAR";
		ace_medical_painCoefficient = 0.8;    //typeName = "SCALAR";
		ace_medical_enableAirway = false;    //typeName = "BOOL";
		ace_medical_enableFractures = false;    //typeName = "BOOL";
		ace_medical_enableAdvancedWounds = false;    //typeName = "BOOL";
		ace_medical_maxReviveTime = 600;    //typeName = "SCALAR";
		ace_medical_medicSetting_basicEpi = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_basicEpi = 0;    //typeName = "SCALAR";
		ace_medical_medicSetting_PAK = 0;    //typeName = "SCALAR";
		ace_medical_consumeItem_PAK = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_PAK = 4;    //typeName = "SCALAR";
		ace_medical_useCondition_PAK = 0;    //typeName = "SCALAR";
		ace_medical_medicSetting_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_consumeItem_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_SurgicalKit = 4;    //typeName = "SCALAR";
		ace_medical_useCondition_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_healHitPointAfterAdvBandage = true;    //typeName = "BOOL";
		ace_medical_painIsOnlySuppressed = false;    //typeName = "BOOL";
		ace_medical_menu_allow = 1;		//typeName = "SCALAR";
	};
	case 1:	//Easy
	{
		ace_medical_medicSetting = 1;    //typeName = "SCALAR";
		ace_medical_increaseTrainingInLocations = true;    //typeName = "BOOL";
		ace_medical_enableFor = 2;    //typeName = "SCALAR";
		ace_medical_enableOverdosing = true;    //typeName = "BOOL";
		ace_medical_bleedingCoefficient = 0.5;    //typeName = "SCALAR";
		ace_medical_painCoefficient = 0.8;    //typeName = "SCALAR";
		ace_medical_enableAirway = false;    //typeName = "BOOL";
		ace_medical_enableFractures = false;    //typeName = "BOOL";
		ace_medical_enableAdvancedWounds = false;    //typeName = "BOOL";
		ace_medical_maxReviveTime = 600;    //typeName = "SCALAR";
		ace_medical_medicSetting_basicEpi = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_basicEpi = 0;    //typeName = "SCALAR";
		ace_medical_medicSetting_PAK = 1;    //typeName = "SCALAR";
		ace_medical_consumeItem_PAK = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_PAK = 0;    //typeName = "SCALAR";
		ace_medical_useCondition_PAK = 1;    //typeName = "SCALAR";
		ace_medical_medicSetting_SurgicalKit = 3;    //typeName = "SCALAR";
		ace_medical_consumeItem_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useCondition_SurgicalKit = 1;    //typeName = "SCALAR";
		ace_medical_healHitPointAfterAdvBandage = true;    //typeName = "BOOL";
		ace_medical_painIsOnlySuppressed = false;    //typeName = "BOOL";
		ace_medical_menu_allow = 1;		//typeName = "SCALAR";
	};
	case 2:	//Base Medic
	{
		ace_medical_medicSetting = 2;    //typeName = "SCALAR";
		ace_medical_increaseTrainingInLocations = true;    //typeName = "BOOL";
		ace_medical_enableFor = 2;    //typeName = "SCALAR";
		ace_medical_enableOverdosing = true;    //typeName = "BOOL";
		ace_medical_bleedingCoefficient = 0.5;    //typeName = "SCALAR";
		ace_medical_painCoefficient = 0.8;    //typeName = "SCALAR";
		ace_medical_enableAirway = 0;    //typeName = "BOOL";
		ace_medical_enableFractures = 0;    //typeName = "BOOL";
		ace_medical_enableAdvancedWounds = true;    //typeName = "BOOL";
		ace_medical_maxReviveTime = 600;    //typeName = "SCALAR";
		ace_medical_medicSetting_basicEpi = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_basicEpi = 0;    //typeName = "SCALAR";
		ace_medical_medicSetting_PAK = 1;    //typeName = "SCALAR";
		ace_medical_consumeItem_PAK = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_PAK = 0;    //typeName = "SCALAR";
		ace_medical_useCondition_PAK = 1;    //typeName = "SCALAR";
		ace_medical_medicSetting_SurgicalKit = 1;    //typeName = "SCALAR";
		ace_medical_consumeItem_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useCondition_SurgicalKit = 1;    //typeName = "SCALAR";
		ace_medical_healHitPointAfterAdvBandage = true;    //typeName = "BOOL";
		ace_medical_painIsOnlySuppressed = false;    //typeName = "BOOL";
		ace_medical_menu_allow = 1;		//typeName = "SCALAR";
	};
	case 3:	//Heavy Medic/Doc
	{
		ace_medical_medicSetting = 2;    //typeName = "SCALAR";
		ace_medical_increaseTrainingInLocations = true;    //typeName = "BOOL";
		ace_medical_enableFor = 2;    //typeName = "SCALAR";
		ace_medical_enableOverdosing = true;    //typeName = "BOOL";
		ace_medical_bleedingCoefficient = 0.5;    //typeName = "SCALAR";
		ace_medical_painCoefficient = 0.8;    //typeName = "SCALAR";
		ace_medical_enableAirway = false;    //typeName = "BOOL";
		ace_medical_enableFractures = false;    //typeName = "BOOL";
		ace_medical_enableAdvancedWounds = false;    //typeName = "BOOL";
		ace_medical_maxReviveTime = 1800;    //typeName = "SCALAR";
		ace_medical_medicSetting_basicEpi = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_basicEpi = 0;    //typeName = "SCALAR";
		ace_medical_medicSetting_PAK = 2;    //typeName = "SCALAR";
		ace_medical_consumeItem_PAK = 1;    //typeName = "SCALAR";
		ace_medical_useLocation_PAK = 3;    //typeName = "SCALAR";
		ace_medical_useCondition_PAK = 1;    //typeName = "SCALAR";
		ace_medical_medicSetting_SurgicalKit = 2;    //typeName = "SCALAR";
		ace_medical_consumeItem_SurgicalKit = 0;    //typeName = "SCALAR";
		ace_medical_useLocation_SurgicalKit = 3;    //typeName = "SCALAR";
		ace_medical_useCondition_SurgicalKit = 1;    //typeName = "SCALAR";
		ace_medical_healHitPointAfterAdvBandage = false;    //typeName = "BOOL";
		ace_medical_painIsOnlySuppressed = false;    //typeName = "BOOL";
		ace_medical_menu_allow = 0;		//typeName = "SCALAR";
	};
};

if (_onelivemission == 0) then {
		ace_medical_preventInstaDeath = true;    //typeName = "BOOL";
		ace_medical_enableRevive = 2;    //typeName = "SCALAR";
		ace_medical_amountOfReviveLives = -1;    //typeName = "SCALAR";
}
else {
		ace_medical_preventInstaDeath = false;    //typeName = "BOOL";
		ace_medical_enableRevive = 2;    //typeName = "SCALAR";
		ace_medical_amountOfReviveLives = 0;    //typeName = "SCALAR";
};
true
