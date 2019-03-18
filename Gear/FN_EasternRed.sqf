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

_obj setFace (selectRandom ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07"]);
_obj setSpeaker (selectRandom ["Male01CHI","Male02CHI","Male03CHI","Male01CHI","Male02CHI","Male03CHI","Male01CHI","Male02CHI","Male03CHI","Male01CHI","Male02CHI","Male03CHI","Male01CHI","Male02CHI","Male03CHI","Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"]);
_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);

switch (_type) do {

	case "O_crew_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest "V_TacVest_oli";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_PilotHelmetHeli_O";
		_obj addWeapon "SMG_01_F";
	};

	case "O_diver_exp_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_Wetsuit";
		_obj addVest "V_RebreatherIR";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addGoggles "G_O_Diving";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_diver_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_Wetsuit";
		_obj addVest "V_RebreatherIR";
		for "_i" from 1 to 4 do {_obj addItemToUniform "100Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 4 do {_obj addItemToBackpack "100Rnd_580x42_Mag_F";};
		_obj addGoggles "G_O_Diving";
		_obj addWeapon "arifle_CTARS_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_diver_TL_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_Wetsuit";
		_obj addVest "V_RebreatherIR";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 2 do {_obj addItemToBackpack "SatchelCharge_Remote_Mag";};
		_obj addGoggles "G_O_Diving";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_engineer_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_HeavyGunner_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "150Rnd_93x64_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "MMG_01_tan_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_helicrew_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest "V_TacVest_oli";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_CrewHelmetHeli_O";
		_obj addWeapon "SMG_01_F";
	};

	case "O_helipilot_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest "V_TacVest_oli";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_PilotHelmetHeli_O";
		_obj addWeapon "SMG_01_F";
	};

	case "O_medic_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_officer_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Pathfinder_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_Pilot_F": {
		_obj forceAddUniform "U_O_PilotCoveralls";
		for "_i" from 1 to 6 do {_obj addItemToUniform "30Rnd_45ACP_Mag_SMG_01";};
		for "_i" from 1 to 2 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_Parachute";
		_obj addHeadgear "H_PilotHelmetFighter_O";
		_obj addWeapon "SMG_01_F";
	};

	case "O_recon_exp_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 4 do {_obj addItemToVest "100Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj addWeapon "arifle_CTARS_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_JTAC_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj linkItem "O_UavTerminal";
		_obj addBackpack "O_UAV_01_backpack_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_LAT_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "RPG32_F";};
		_obj addItemToBackpack "RPG32_HE_F";
		_obj addWeapon "launch_RPG32_ghex_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_M_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_Arco_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_medic_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_recon_TL_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 8 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_NVGoggles_ghex_F";
		_obj addWeapon "arifle_CTAR_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
		_obj addPrimaryWeaponItem "muzzle_snds_58_blk_F";
	};

	case "O_Sharpshooter_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "20Rnd_650x39_Cased_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "srifle_DMR_07_blk_F";
		_obj addPrimaryWeaponItem "optic_KHS_blk";
	};

	case "O_sniper_F": {
		_obj forceAddUniform "U_O_FullGhillie_lsh";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "10Rnd_93x64_DMR_05_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "srifle_DMR_05_blk_F";
		_obj addPrimaryWeaponItem "optic_LRPS";
		_obj addPrimaryWeaponItem "muzzle_snds_93mmg";
	};

	case "O_Soldier_AA_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AA";
		_obj addWeapon "launch_B_Titan_tna_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Soldier_AR_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 4 do {_obj addItemToVest "100Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTARS_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Soldier_AT_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AP";
		_obj addItemToBackpack "Titan_AT";
		_obj addWeapon "launch_B_Titan_short_tna_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_soldier_exp_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Soldier_LAT_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "launch_NLAW_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_soldier_M_F": {
		_obj forceAddUniform "U_O_T_Sniper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_Arco_blk_F";
	};

	case "O_soldier_repair_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Soldier_SL_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_Soldier_TL_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 8 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_soldier_UAV_F": {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj linkItem "O_UavTerminal";
		_obj addBackpack "O_UAV_01_backpack_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_Exp_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 4 do {_obj addItemToVest "100Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addWeapon "arifle_CTARS_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_JTAC_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj linkItem "O_UavTerminal";
		_obj addBackpack "O_UAV_01_backpack_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_LAT_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "launch_NLAW_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_M_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_Arco_blk_F";
	};

	case "O_V_Soldier_Medic_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "O_V_Soldier_TL_hex_F": {
		removeGoggles _obj;
		_obj forceAddUniform "U_O_V_Soldier_Viper_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 8 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		_obj addHeadgear "H_HelmetO_ViperSP_ghex_F";
		_obj addWeapon "arifle_CTAR_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	default {
		_obj forceAddUniform "U_O_T_Officer_F";
		_obj addVest (selectRandom ["V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_580x42_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_HelmetB_light_snakeskin";
		_obj addWeapon "arifle_CTAR_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};
};