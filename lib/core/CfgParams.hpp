class MT_paramcomment1
{
	title = "------------------------ ACE3 Medic Parameters ----------------------";
	values[] = {1};
	texts[] = {""};
	default = 1;
	ASTA_code = "";
};

class ace_medical_level { //This needs to match an ace_setting, this one is a "SCALAR"(number)
	title = "$STR_ACE_Medical_MedicalSettings_level_DisplayName"; // Name that is shown
	ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
	values[] = {1, 2}; //Values that ace_medical_level can be set to
	texts[] =  {"$STR_MT_Medic_difficulty_basic", "$STR_MT_Medic_difficulty_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
	default = 2; //Default value used - Value should be in the values[] list
};
class MT_Medicsystem
{
	title = "$STR_MT_Medic_difficulty_Displayname";
	values[] = {0,1,2,3};
	texts[] = {"$STR_MT_Medic_difficulty_Deactivated","$STR_MT_Medic_difficulty_Easy","$STR_MT_Medic_difficulty_base","$STR_MT_Medic_difficulty_havy"};
	default = 1;
	ASTA_code = "";
};
class MT_AIUnconsciousness
{
	title = "$STR_ACE_Medical_MedicalSettings_enableUnconsciousnessAI_DisplayName";
	values[] = {0,1,2};
	texts[] = {"$STR_A3_OPTIONS_DISABLED","50/50","$STR_A3_OPTIONS_Enabled"};
	default = 0;
	ASTA_code = "ace_medical_enableUnconsciousnessAI = %1;";
};
class MT_OneLiveMission
{
	title = "One Live Mission";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 0;
	ASTA_code = "";
};

class MT_paramcomment3
{
	title = "----------------------- ACE Logistic Parameters ---------------------";
	values[] = {1};
	texts[] = {""};
	default = 1;
	ASTA_code = "";
};
class MT_Logistic_Rearm_setting
{
	title = "$STR_ACE_Rearm_RearmSettings_level_DisplayName";
	values[] = {0,1,2};
	texts[] = {"$STR_ACE_Rearm_RearmSettings_vehicle","$STR_ACE_Rearm_RearmSettings_magazine", "$STR_ACE_Rearm_RearmSettings_caliber"};
	default = 0;
	ASTA_code = "ace_rearm_level = %1;";
};
class MT_Logistic_Refuel_setting
{
	title = "$STR_ACE_Refuel_RefuelSettings_speed_DisplayName";
	values[] = {1,2,5,10,15,20};
	texts[] = {"1","2","5","10","15","20"};
	default = 1;
	ASTA_code = "ace_refuel_rate = %1;";
};
class MT_paramcomment31
{
	title = "$STR_ACE_Repair_moduleName";
	values[] = {1};
	texts[] = {""};
	default = 1;
	ASTA_code = "";
};
class MT_Logistic_allow_repair
{
	title = "$STR_ACE_Repair_enginerSetting_Repair_name";
	values[] = {0,1,2};
	texts[] = {"$STR_ACE_Repair_engineerSetting_anyone","$STR_ACE_Repair_engineerSetting_EngineerOnly","$STR_ACE_Repair_engineerSetting_RepairSpecialistOnly"};
	default = 0;
	ASTA_code = "ace_repair_engineerSetting_Repair = %1;";
};
class MT_Logistic_allow_wheel
{
	title = "$STR_ACE_Repair_enginerSetting_Wheel_name";
	values[] = {0,1,2};
	texts[] = {"$STR_ACE_Repair_engineerSetting_anyone","$STR_ACE_Repair_engineerSetting_EngineerOnly","$STR_ACE_Repair_engineerSetting_RepairSpecialistOnly"};
	default = 0;
	ASTA_code = "ace_repair_engineerSetting_Wheel = %1;";
};
class MT_Logistig_consumeItem_Toolkit
{
	title = "$STR_ACE_Repair_consumeItem_ToolKit_name";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 0;
	ASTA_code = "ace_repair_consumeItem_ToolKit = %1;";
};
class MT_Logistic_full_repair_locations
{
	title = "$STR_ACE_Repair_fullRepairLocation";
	values[] = {0,1,2,3,4};
	texts[] = {"$STR_ACE_Repair_useAnywhere","$STR_ACE_Repair_repairVehicleOnly","$STR_ACE_Repair_repairFacilityOnly","$STR_ACE_Repair_vehicleAndFacility","Disabled"};
	default = 3;
	ASTA_code = "ace_repair_fullRepairLocation = %1;";
};
class MT_Logistic_allow_full_repair
{
	title = "$STR_ACE_Repair_engineerSetting_fullRepair_name";
	values[] = {0,1,2};
	texts[] = {"$STR_ACE_Repair_engineerSetting_anyone","$STR_ACE_Repair_engineerSetting_EngineerOnly","$STR_ACE_Repair_engineerSetting_RepairSpecialistOnly"};
	default = 0;
	ASTA_code = "ace_repair_engineerSetting_fullRepair = %1;";
};
class MT_Logistic_wheel_repair_requirements
{
	title = "$STR_ACE_Repair_wheelRepairRequiredItems_name";
	values[] = {0,1};
	texts[] = {"$STR_A3_None","$STR_a3_cfgweapons_toolkit0"};
	default = 0;
	ASTA_code = "ace_repair_wheelRepairRequiredItems = %1;";
};

class MT_paramcomment4
{
	title = "------------------------ ACE  misc Parameter ------------------------";
	values[] = {1};
	texts[] = {""};
	default = 1;
	ASTA_code = "";
};
class MT_BFTSystem
{
	title = "Blu Force Tracking";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_map_BFT_Enabled = %1;";
};
class MT_Balisticsystem
{
	title = "$STR_ACE_Advanced_Ballistics_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 0;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_advanced_ballistics_enabled = %1;";
};
class MT_MK6Computer
{
	title = "$STR_ACE_Mk6Mortar_Module_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_mk6mortar_allowComputerRangefinder = %1;";
};
class MT_mapIllumination
{
	title = "$STR_ACE_Map_MapIllumination_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 0;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_map_mapIllumination = %1;";
};
class MT_explosivesRequireSpecialist
{
	title = "$STR_ACE_Explosives_RequireSpecialist_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_explosives_RequireSpecialist = %1;";
};
class MT_ZeusAutoAdjust
{
	title = "Zeus Auto Addobjects";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_zeus_autoAddObjects = %1;";
};
class MT_nametags_playerNamesViewDistance
{
	title = "$STR_ACE_NameTags_PlayerNamesViewDistance_DisplayName";
	values[] = {5,10,15,20,25,30,35,40};
	texts[] = {"5m","10m","15m","20m","25m","30m","35m","40m"};
	default = 40;
	ASTA_code = "ace_nametags_playerNamesViewDistance = %1;";
};
class MT_cookoff_enable
{
	title = "$STR_ACE_CookOff_enable_name";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_cookoff_enable = %1;";
};

class MT_paramcomment5
{
	title = "------------------------ ACE weather setting ------------------------";
	values[] = {1};
	texts[] = {""};
	default = 1;
	ASTA_code = "";
};
class MT_weatherUseAceweather
{
	title = "$STR_ACE_Weather_useACEWeather_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_weather_useACEWeather = %1;";
};
class MT_weather_syncRain {
	title = "$STR_ACE_Weather_syncRain_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_weather_syncRain = %1;";
};
class ace_weather_syncWind {
	title = "$STR_ACE_Weather_syncWind_DisplayName";
	values[] = {0,1};
	texts[] = {"$STR_lib_info_no","$STR_lib_info_YES"};
	default = 1;
	ASTA_needsBoolean = true;
	ASTA_code = "ace_weather_syncWind = %1;";
};
