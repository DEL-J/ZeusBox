private ["_obj", "_type"];
_obj = param [0, objNull, [objNull]];

if (isNull _obj) throw "Invalid Argument: must provide valid object";
if (_obj in playableUnits) exitWith {false};

_type = typeof _obj;

removeAllWeapons _obj;
removeAllItems _obj;
removeAllAssignedItems _obj;
removeUniform _obj;
removeVest _obj;
removeBackpack _obj;
removeHeadgear _obj;
removeGoggles _obj;

_obj setFace (selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_05","TanoanHead_A3_06","TanoanHead_A3_07","TanoanHead_A3_08"]);
_obj setSpeaker (selectRandom ["Male01CHI","Male02CHI","Male03CHI","Male01FRE","Male02FRE","Male03FRE","Male01ENGFRE","Male02ENGFRE"]);

switch (_type) do {

	case "I_G_medic_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_officer_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellGreen";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_AR_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 4 do {_obj addItemToVest "150Rnd_556x45_Drum_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_02_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_GL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_LAT_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "launch_NLAW_F";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_M_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_MRCO";
	};

	case "I_G_Soldier_SL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellGreen";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_G_Soldier_TL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_crew_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetCrew_I";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
	};

	case "I_diver_exp_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Aco";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_diver_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 2 do {_obj addItemToUniform "150Rnd_556x45_Drum_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 4 do {_obj addItemToBackpack "150Rnd_556x45_Drum_Mag_F";};
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "arifle_SPAR_02_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Aco";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_diver_TL_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 10 do {_obj addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 10 do {_obj addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
		_obj addItemToBackpack "SatchelCharge_Remote_Mag";
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Aco";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_engineer_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_helicrew_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest "V_TacVest_camo";
		_obj addHeadgear "H_CrewHelmetHeli_O";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
	};

	case "I_helipilot_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest "V_TacVest_camo";
		_obj addHeadgear "H_PilotHelmetHeli_O";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
	};

	case "I_medic_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_officer_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellGreen";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_pilot_F": {
		_obj forceAddUniform "U_I_pilotCoveralls";
		_obj addHeadgear "H_PilotHelmetFighter_I";
		for "_i" from 1 to 6 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
	};

	case "I_Sniper_F": {
		_obj forceAddUniform "U_I_FullGhillie_sard";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "7Rnd_408_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_03_blk_F";
		_obj addPrimaryWeaponItem "optic_SOS";
		_obj addWeapon "hgun_P07_F";
	};

	case "I_Soldier_AA_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AA";
		_obj addWeapon "launch_B_Titan_tna_F";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_AR_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 4 do {_obj addItemToVest "150Rnd_556x45_Drum_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_02_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_AT_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AP";
		_obj addItemToBackpack "Titan_AT";
		_obj addWeapon "launch_B_Titan_short_tna_F";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_exp_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_soldier_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_GL_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_LAT_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 4 do {_obj addItemToBackpack "RPG7_F";};
		_obj addWeapon "launch_RPG7_F";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_M_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Hamr";
	};

	case "I_Soldier_repair_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_SL_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellGreen";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_Soldier_TL_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	case "I_soldier_UAV_F": {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
		_obj linkItem "I_UavTerminal";
		_obj addBackpack "I_UAV_01_backpack_F";
	};

	case "I_Spotter_F": {
		_obj forceAddUniform "U_I_FullGhillie_sard";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};

	default {
		_obj forceAddUniform "U_I_C_Soldier_Camo_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		_obj addHeadgear "H_HelmetB_grass";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_Aco";
	};
};