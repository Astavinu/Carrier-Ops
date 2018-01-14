this = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if(!local this) exitWith{};
switch((this) getVariable ["assignedRole", "notSet"]) do {
	case "Mario":{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;
		};
	case "Zeus":{};


	case "GefStdFhr":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Fleck";
		this addItemToUniform "ACE_MapTools";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addHeadgear "BWA3_Beret_Jaeger";
		this addGoggles "BWA3_G_Combat_Black";

		comment "Add weapons";
		this addWeapon "BWA3_P8";
		this addWeapon "Binocular";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
		this linkItem "ItemGPS";
	};

	
	case "Gruppenführer":{
		comment "Gewicht: 27.53kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Leader_Tropen";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
		this addItemToVest "ACE_microDAGR";
		this addBackpack "tf_rt1523g_big_bwmod_tropen";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 3 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 6 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM32_Orange";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM32_Yellow";};
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "StelvGrpFhr":{
		comment "Gewicht: 22.77kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Rifleman1_Tropen";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {this addItemToBackpack "ACE_M84";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Sani":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;
		
		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addWeapon "BWA3_P8";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Medic_Tropen";
		this addItemToVest "ACE_microDAGR";
			
		if(!isnil "ace_medical_medicSetting") then {
			if (ace_medical_medicSetting == 2) then {
				for "_i" from 1 to 6 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 3 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
				for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
				this addBackpack "BWA3_PatrolPack_Tropen";
				this addItemToBackpack "ACE_surgicalKit";
				for "_i" from 1 to 6 do {this addItemToBackpack "ACE_tourniquet";};
				for "_i" from 1 to 18 do {this addItemToBackpack "ACE_quikclot";};
				for "_i" from 1 to 48 do {this addItemToBackpack "ACE_elasticBandage";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_packingBandage";};
				for "_i" from 1 to 12 do {this addItemToBackpack "ACE_atropine";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_morphine";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_epinephrine";};
			}
			else {
				for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
				this addItemToUniform "ACE_EarPlugs";
				this addVest "BWA3_Vest_Medic_Tropen";
				for "_i" from 1 to 4 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 3 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
				for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
				this addItemToVest "ACE_microDAGR";
				this addBackpack "BWA3_PatrolPack_Tropen";
				for "_i" from 1 to 3 do {this addItemToBackpack "ACE_bloodIV";};
				for "_i" from 1 to 15 do {this addItemToBackpack "ACE_epinephrine";};
				for "_i" from 1 to 15 do {this addItemToBackpack "ACE_morphine";};
				for "_i" from 1 to 30 do {this addItemToBackpack "ACE_fieldDressing";};
			};
		};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM32_Yellow";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "Arzt":{
		comment "Gewicht: 29.26kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		this addVest "BWA3_Vest_Medic_Tropen";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 10 do {this addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {this addItemToVest "ACE_atropine";};
		for "_i" from 1 to 10 do {this addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 10 do {this addItemToVest "ACE_elasticBandage";};
		for "_i" from 1 to 10 do {this addItemToVest "ACE_packingBandage";};
		for "_i" from 1 to 10 do {this addItemToVest "ACE_quikclot";};
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		for "_i" from 1 to 14 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 14 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 18 do {this addItemToBackpack "ACE_atropine";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_salineIV";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 8 do {this addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_personalAidKit";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_surgicalKit";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 20 do {this addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 20 do {this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 20 do {this addItemToBackpack "ACE_packingBandage";};
		this addHeadgear "BWA3_Booniehat_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	case "ATschwer":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Rifleman1_Tropen";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addItemToVest "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		this addItemToBackpack "BWA3_Pzf3_IT";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addWeapon "BWA3_Pzf3_Loaded";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";
		this addSecondaryWeaponItem "BWA3_optic_NSA80";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	case "AT":{
		comment "Gewicht: 24.68kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Rifleman1_Tropen";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		this addItemToBackpack "BWA3_RGW90_HH";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addWeapon "BWA3_RGW90_Loaded";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "MG":{
		comment "Gewicht: 29.12kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Autorifleman_Tropen";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		this addItemToBackpack "BWA3_1200Rnd_762x51";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		this addItemToBackpack "BWA3_optic_IRV600";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "G_Combat";

		comment "Add weapons";
		this addWeapon "BWA3_MG5_Tan_equipped";
		this addWeapon "BWA3_P8";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "MGHilf":{
		comment "Gewicht: 25.04kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Rifleman1_Tropen";
		for "_i" from 1 to 6 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_120Rnd_762x51";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_M84";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Grenadier":{
		comment "Gewicht: 25.22kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;
		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38_AG";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Grenadier_Tropen";
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 2 do {this addItemToVest "UGL_FlareGreen_F";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 6 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_M84";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Schütze":{
		comment "Gewicht: 22.77kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Rifleman1_Tropen";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {this addItemToBackpack "ACE_M84";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Gruppenscharfschütze":{
		comment "Gewicht: 29.8kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_10Rnd_762x51_G28_AP";
		this addWeapon "BWA3_G28_Standard_equipped";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Marksman_Tropen";
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_bloodIV_500";
		this addItemToBackpack "BWA3_optic_NSV600";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 6 do {this addItemToBackpack "BWA3_10Rnd_762x51_G28_AP";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_10Rnd_762x51_G28_Tracer";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_M84";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_20x50";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Pilot":{
		comment "Gewicht: 18.46kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_Crew_Tropen";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_40Rnd_46x30_MP7";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Tropen";
		this addItemToVest "ACE_NVG_Gen4";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_40Rnd_46x30_MP7";};
		this addItemToVest "ACE_microDAGR";
		this addBackpack "tf_rt1523g";
		this addItemToBackpack "ACE_bloodIV_500";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		this addItemToBackpack "BWA3_DM51A1";
		this addHeadgear "H_PilotHelmetHeli_B";
		this addGoggles "G_Aviator";

		comment "Add weapons";
		this addWeapon "BWA3_MP7";
		this addHandgunItem "BWA3_acc_VarioRay_irlaser";
		this addHandgunItem "optic_Aco_smg";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Spotter":{
		comment "Gewicht: 32.16kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_Ghillie_Tropen";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38_AG";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addItemToUniform "ACE_MapTools";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addVest "BWA3_Vest_Marksman_Tropen";
		this addItemToVest "ACE_ATragMX";
		this addItemToVest "ACE_Kestrel4500";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		this addBackpack "tf_rt1523g_big_bwmod_tropen";
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
		this addItemToBackpack "ACE_Tripod";
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_HuntIR_M203";};
		this addItemToBackpack "ACE_HuntIR_monitor";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addItemToBackpack "ACE_SpottingScope";
		this addItemToBackpack "ACE_Sandbag_empty";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_muzzle_snds_G36";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "optic_DMS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Sniper":{
		comment "Gewicht: 35.65kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_Ghillie_Tropen";
		this addItemToUniform "BWA3_10Rnd_127x99_G82_AP";
		this addWeapon "BWA3_G82_equipped";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		this addItemToUniform "ACE_MapTools";
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Marksman_Tropen";
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_10Rnd_127x99_G82_AP";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addBackpack "ACE_NVG_Gen4";
		this addBackpack "ACE_microDAGR";
		for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_10Rnd_127x99_G82_AP";};
		this addItemToBackpack "BWA3_10Rnd_127x99_G82_Raufoss";
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		this addGoggles "BWA3_G_Combat_Clear";

		comment "Add weapons";
		this addPrimaryWeaponItem "optic_LRPS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};


	case "Pionier":{
		comment "Gewicht: 32.75kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Tropen";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToVest "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToVest "ACE_fieldDressing";};
		this addItemToVest "ACE_bloodIV_500";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addItemToVest "ACE_DefusalKit";
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ACE_wirecutter";
		this addItemToBackpack "ACE_Clacker";
		this addItemToBackpack "ACE_UAVBattery";
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM51A1";};
		for "_i" from 1 to 3 do {this addItemToBackpack "DemoCharge_Remote_Mag";};
		this addItemToBackpack "MineDetector";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Black";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "Mechaniker":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36";};
		this addVest "BWA3_Vest_Tropen";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToVest "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToVest "ACE_fieldDressing";};
		this addItemToVest "ACE_bloodIV_500";
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addItemToVest "ACE_DefusalKit";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_15Rnd_9x19_P8";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		this addItemToBackpack "ToolKit";
		this addItemToBackpack "ACE_NVG_Gen4";
		this addHeadgear "BWA3_M92_Tropen";
		this addGoggles "BWA3_G_Combat_Black";

		comment "Add weapons";
		this addWeapon "BWA3_G38";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30";
		this addWeapon "BWA3_P8";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "tf_anprc148jem_2";
		this linkItem "NVGoggles_OPFOR";

		comment "Set identity";
		this setFace "WhiteHead_09";
		this setSpeaker "ACE_NoVoice";
	};


	case "Operator":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform_idz_Tropen";
		this addItemToUniform "BWA3_30Rnd_556x45_G36_AP";
		this addWeapon "BWA3_G38";
		this addItemToUniform "BWA3_15Rnd_9x19_P8";
		this addWeapon "BWA3_P8";
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
		for "_i" from 1 to 2 do {this addItemToUniform "BWA3_15Rnd_9x19_P8";};
		this addItemToUniform "BWA3_G_Combat_Black";
		this addItemToUniform "ACE_EarPlugs";
		this addVest "BWA3_Vest_Tropen";
		for "_i" from 1 to 10 do {this addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {this addItemToVest "ACE_morphine";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		this addItemToVest "ACE_MapTools";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 2 do {this addItemToVest "ACE_CableTie";};
		this addBackpack "BWA3_PatrolPack_Tropen";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_UAVBattery";};
		this addItemToBackpack "ACE_NVG_Gen4";
		this addItemToBackpack "ACE_wirecutter";
		this addItemToBackpack "ACE_bloodIV_500";
		this addHeadgear "BWA3_M92_Tropen";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_LLM01_flash";
		this addPrimaryWeaponItem "BWA3_optic_RSAS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "KSKGF":{
		comment "Gewicht: 33.61kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform3_idz_Fleck";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G36K_AG";
		this addItemToUniform "BWA3_40Rnd_46x30_MP7_SD";
		this addWeapon "BWA3_MP7";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 5 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Marksman_Fleck";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 3 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		this addItemToVest "B_IR_Grenade";
		this addBackpack "tf_rt1523g_big_bwmod";
		for "_i" from 1 to 5 do {this addItemToBackpack "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_DM25";};
		for "_i" from 1 to 2 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
		this addItemToBackpack "NVGoggles_OPFOR";
		this addItemToBackpack "ACE_HandFlare_Green";
		this addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
		this addGoggles "G_Bandanna_oli";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_muzzle_snds_G36";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30_NSV";
		this addHandgunItem "BWA3_muzzle_snds_MP7";
		this addHandgunItem "BWA3_acc_VarioRay_irlaser";
		this addHandgunItem "BWA3_optic_RSAS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "KSK":{
		comment "Gewicht: 35.74kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform3_idz_Fleck";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38C";
		this addItemToUniform "BWA3_40Rnd_46x30_MP7_SD";
		this addWeapon "BWA3_MP7";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 5 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Marksman_Fleck";
		this addItemToVest "ACE_Clacker";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 5 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 4 do {this addItemToVest "BWA3_DM25";};
		this addItemToVest "B_IR_Grenade";
		this addBackpack "BWA3_PatrolPack_Fleck";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {this addItemToBackpack "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 8 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
		for "_i" from 1 to 8 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToBackpack "ACE_M84";};
		for "_i" from 1 to 4 do {this addItemToBackpack "BWA3_DM51A1";};
		for "_i" from 1 to 4 do {this addItemToBackpack "BWA3_DM25";};
		this addItemToBackpack "DemoCharge_Remote_Mag";
		this addItemToBackpack "ACE_HandFlare_Green";
		this addItemToBackpack "NVGoggles_OPFOR";
		this addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
		this addGoggles "G_Bandanna_oli";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_muzzle_snds_G36";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30_NSV";
		this addHandgunItem "BWA3_muzzle_snds_MP7";
		this addHandgunItem "BWA3_acc_VarioRay_irlaser";
		this addHandgunItem "BWA3_optic_RSAS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "KSKSpez":{
		comment "Gewicht: 38.6kg";
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform3_idz_Fleck";
		this addItemToUniform "BWA3_200Rnd_556x45";
		this addWeapon "BWA3_MG4";
		this addItemToUniform "BWA3_40Rnd_46x30_MP7_SD";
		this addWeapon "BWA3_MP7";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 5 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Marksman_Fleck";
		this addItemToVest "ACE_Clacker";
		this addItemToVest "ACE_microDAGR";
		for "_i" from 1 to 5 do {this addItemToVest "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
		this addItemToVest "B_IR_Grenade";
		this addBackpack "BWA3_PatrolPack_Fleck";
		for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_200Rnd_556x45";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_40Rnd_46x30_MP7_SD";};
		for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM25";};
		this addItemToBackpack "DemoCharge_Remote_Mag";
		this addItemToBackpack "ACE_HandFlare_Green";
		this addItemToBackpack "NVGoggles_OPFOR";
		this addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
		this addGoggles "G_Bandanna_oli";

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30_NSV";
		this addHandgunItem "BWA3_muzzle_snds_MP7";
		this addHandgunItem "BWA3_acc_VarioRay_irlaser";
		this addHandgunItem "BWA3_optic_RSAS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};

	
	case "KSKSani":{
		comment "Remove existing items";
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		comment "Add containers";
		this forceAddUniform "BWA3_Uniform3_idz_Fleck";
		this addItemToUniform "BWA3_30Rnd_556x45_G36";
		this addWeapon "BWA3_G38C";
		this addItemToUniform "BWA3_40Rnd_46x30_MP7_SD";
		this addWeapon "BWA3_MP7";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 5 do {this addItemToUniform "ACE_CableTie";};
		this addVest "BWA3_Vest_Marksman_Fleck";
		this addItemToVest "ACE_microDAGR";
				
		if(!isnil "ace_medical_level") then {
			if (ace_medical_level == 2) then {
				comment "Gewicht: 38.6kg";
				for "_i" from 1 to 4 do {this addItemToVest "BWA3_40Rnd_46x30_MP7_SD";};
				for "_i" from 1 to 6 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM51A1";};
				for "_i" from 1 to 2 do {this addItemToVest "BWA3_DM25";};
				for "_i" from 1 to 2 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
				this addItemToVest "B_IR_Grenade";
				this addBackpack "BWA3_PatrolPack_Fleck";
				for "_i" from 1 to 4 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 2 do {this addItemToBackpack "ACE_salineIV";};
				for "_i" from 1 to 4 do {this addItemToBackpack "ACE_salineIV_500";};
				for "_i" from 1 to 6 do {this addItemToBackpack "ACE_salineIV_250";};
				for "_i" from 1 to 3 do {this addItemToBackpack "ACE_surgicalKit";};
				for "_i" from 1 to 4 do {this addItemToBackpack "ACE_tourniquet";};
				for "_i" from 1 to 18 do {this addItemToBackpack "ACE_quikclot";};
				for "_i" from 1 to 42 do {this addItemToBackpack "ACE_elasticBandage";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_packingBandage";};
				for "_i" from 1 to 12 do {this addItemToBackpack "ACE_atropine";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_morphine";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_epinephrine";};
				this addItemToBackpack "ACE_HandFlare_Green";
				this addItemToBackpack "NVGoggles_OPFOR";
				this addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
				this addGoggles "G_Bandanna_oli";
			}
			else {
				comment "Gewicht: 36.42kg";
				for "_i" from 1 to 5 do {this addItemToVest "BWA3_40Rnd_46x30_MP7_SD";};
				for "_i" from 1 to 6 do {this addItemToVest "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 2 do {this addItemToVest "ACE_M84";};
				this addItemToVest "B_IR_Grenade";
				this addBackpack "BWA3_PatrolPack_Fleck";
				for "_i" from 1 to 3 do {this addItemToBackpack "BWA3_40Rnd_46x30_MP7_SD";};
				for "_i" from 1 to 4 do {this addItemToBackpack "BWA3_30Rnd_556x45_G36";};
				for "_i" from 1 to 2 do {this addItemToBackpack "BWA3_DM51A1";};
				for "_i" from 1 to 4 do {this addItemToBackpack "BWA3_DM25";};
				for "_i" from 1 to 8 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_morphine";};
				for "_i" from 1 to 24 do {this addItemToBackpack "ACE_epinephrine";};
				for "_i" from 1 to 40 do {this addItemToBackpack "ACE_fieldDressing";};
				this addItemToBackpack "ACE_bloodIV";
				for "_i" from 1 to 4 do {this addItemToBackpack "ACE_bloodIV_500";};
				for "_i" from 1 to 4 do {this addItemToBackpack "ACE_bloodIV_250";};
				this addItemToBackpack "ACE_HandFlare_Green";
				this addItemToBackpack "NVGoggles_OPFOR";
				this addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
				this addGoggles "G_Bandanna_oli";
			};
		};

		comment "Add weapons";
		this addPrimaryWeaponItem "BWA3_muzzle_snds_G36";
		this addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
		this addPrimaryWeaponItem "BWA3_optic_ZO4x30_NSV";
		this addHandgunItem "BWA3_muzzle_snds_MP7";
		this addHandgunItem "BWA3_acc_VarioRay_irlaser";
		this addHandgunItem "BWA3_optic_RSAS";
		this addWeapon "ACE_Vector";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
	};
};
