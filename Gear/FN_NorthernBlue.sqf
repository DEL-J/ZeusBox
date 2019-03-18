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

_obj setFace (selectRandom ["AfricanHead_01","AfricanHead_02","AfricanHead_03","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07","Default","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09","IG_Leader","Kerry","kerry_B2_F","Miller","Nikos","O_Colonel","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_18","WhiteHead_19","WhiteHead_20","WhiteHead_21"]);
_obj setSpeaker (selectRandom ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"]);

switch (_type) do {

	case "B_crew_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest "V_PlateCarrierL_CTRG";
		_obj addHeadgear "H_HelmetCrew_B";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_CTRG_Soldier_AR_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "200Rnd_556x45_Box_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "LMG_03_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_CTRG_Soldier_Exp_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_CTRG_Soldier_JTAC_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj linkItem "B_UavTerminal";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addBackpack "B_UAV_01_backpack_F";
	};

	case "B_CTRG_Soldier_LAT_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addWeapon "launch_NLAW_F";
	};

	case "B_CTRG_Soldier_M_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG21_F";
		_obj addPrimaryWeaponItem "optic_Hamr";
	};

	case "B_CTRG_Soldier_Medic_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG20_F";
	};

	case "B_CTRG_Soldier_TL_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_CTRG_Soldier_tna_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetB_TI_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "hgun_Pistol_heavy_01_F";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_diver_exp_F": {
		_obj forceAddUniform "U_B_Wetsuit";
		_obj addVest "V_RebreatherB";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addGoggles "G_B_Diving";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj linkItem "NVGogglesB_blk_F";
	};

	case "B_diver_F": {
		_obj forceAddUniform "U_B_Wetsuit";
		_obj addVest "V_RebreatherB";
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 4 do {_obj addItemToBackpack "200Rnd_556x45_Box_F";};
		_obj addGoggles "G_B_Diving";
		_obj addWeapon "LMG_03_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj linkItem "NVGogglesB_blk_F";
	};

	case "B_diver_TL_F": {
		_obj forceAddUniform "U_B_Wetsuit";
		_obj addVest "V_RebreatherB";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		_obj addItemToBackpack "SatchelCharge_Remote_Mag";
		for "_i" from 1 to 8 do {_obj addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addGoggles "G_B_Diving";
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj linkItem "NVGogglesB_blk_F";
	};

	case "B_engineer_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj linkItem "NVGogglesB_grn_F";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_HeavyGunner_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "130Rnd_338_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "MMG_02_black_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_helicrew_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_CrewHelmetHeli_B";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Helipilot_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_PilotHelmetHeli_B";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_medic_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_officer_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Pilot_F": {
		_obj forceAddUniform "U_B_PilotCoveralls";
		_obj addHeadgear "H_PilotHelmetFighter_B";
		for "_i" from 1 to 4 do {_obj addItemToUniform "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_Parachute";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_recon_exp_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_recon_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 4 do {_obj addItemToVest "200Rnd_556x45_Box_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "LMG_03_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_recon_JTAC_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack "B_UAV_01_backpack_F";
		_obj linkItem "NVGoggles";
		_obj linkItem "B_UavTerminal";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_recon_LAT_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
		_obj addWeapon "launch_NLAW_F";
	};

	case "B_recon_M_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG21_F";
		_obj addPrimaryWeaponItem "optic_Hamr";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_recon_medic_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_Recon_Sharpshooter_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_recon_TL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	case "B_Sharpshooter_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "20Rnd_762x51_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_03_blk_F";
		_obj addPrimaryWeaponItem "optic_SOS";
	};

	case "B_sniper_F": {
		_obj forceAddUniform "U_B_FullGhillie_sard";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 6 do {_obj addItemToVest "10Rnd_338_Mag";};
		for "_i" from 1 to 6 do {_obj addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "srifle_DMR_02_F";
		_obj addPrimaryWeaponItem "optic_LRPS";
		_obj addPrimaryWeaponItem "muzzle_snds_338_black";
		_obj addWeapon "hgun_P07_F";
	};

	case "B_soldier_AA_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AA";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addWeapon "launch_B_Titan_F";
	};

	case "B_soldier_AR_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "200Rnd_556x45_Box_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "LMG_03_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_soldier_AT_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AT";
		_obj addItemToBackpack "Titan_AP";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addWeapon "launch_B_Titan_short_F";
	};

	case "B_soldier_exp_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Soldier_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Soldier_GL_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_SPAR_01_GL_blk_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_soldier_LAT_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addWeapon "launch_NLAW_F";
	};

	case "B_soldier_M_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG21_F";
		_obj addPrimaryWeaponItem "optic_Hamr";
	};

	case "B_soldier_repair_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Soldier_SL_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellBlue";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_Soldier_TL_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_soldier_UAV_F": {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj linkItem "B_UavTerminal";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addBackpack "B_UAV_01_backpack_F";
	};

	case "B_spotter_F": {
		_obj forceAddUniform "U_B_FullGhillie_sard";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellBlue";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj linkItem "NVGoggles";
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "muzzle_snds_M";
	};

	default {
		_obj forceAddUniform "U_B_CTRG_1";
		_obj addVest (selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]);
		_obj addHeadgear "H_HelmetSpecB_snakeskin";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_TRG20_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};
};