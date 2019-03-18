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

_obj setFace (selectRandom ["GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09","IG_Leader","Kerry","kerry_B2_F","Miller","Nikos","O_Colonel","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]);
_obj setSpeaker (selectRandom ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE","Male01PER","Male02PER","Male03PER"]);

switch (_type) do {

	case "I_G_medic_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_G_officer_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_G_Soldier_AR_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 3 do {_obj addItemToVest "150Rnd_762x54_Box";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "LMG_Zafir_F";
		
	};

	case "I_G_Soldier_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_G_Soldier_GL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_GL_F";
		
	};

	case "I_G_Soldier_LAT_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "launch_NLAW_F";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_G_Soldier_M_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		_obj addPrimaryWeaponItem "optic_MRCO";
	};

	case "I_G_Soldier_SL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_G_Soldier_TL_F": {
		_obj forceAddUniform "U_B_GhillieSuit";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_crew_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetCrew_I";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_9x21_Mag_SMG_02";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "SMG_05_F";
	};

	case "I_diver_exp_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_9x21_Mag_SMG_02";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addBackpack "B_AssaultPack_blk";
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "SMG_05_F";
		_obj addPrimaryWeaponItem "muzzle_snds_L";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_diver_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 2 do {_obj addItemToUniform "30Rnd_9x21_Mag_SMG_02";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "SMG_05_F";
		_obj addPrimaryWeaponItem "muzzle_snds_L";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_diver_TL_F": {
		_obj forceAddUniform "U_I_Wetsuit";
		_obj addVest "V_RebreatherIA";
		for "_i" from 1 to 8 do {_obj addItemToUniform "30Rnd_9x21_Mag_SMG_02";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addGoggles "G_I_Diving";
		_obj addWeapon "SMG_05_F";
		_obj addPrimaryWeaponItem "muzzle_snds_L";
		_obj linkItem "NVGoggles_INDEP";
	};

	case "I_engineer_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_helicrew_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_CrewHelmetHeli_O";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "SMG_05_F";
	};

	case "I_helipilot_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_PilotHelmetHeli_O";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "SMG_05_F";
	};

	case "I_medic_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_officer_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_pilot_F": {
		_obj forceAddUniform "U_I_pilotCoveralls";
		_obj addHeadgear "H_PilotHelmetFighter_I";
		for "_i" from 1 to 6 do {_obj addItemToUniform "30Rnd_9x21_Mag_SMG_02";};
		for "_i" from 1 to 4 do {_obj addItemToUniform "SmokeShell";};
		_obj addWeapon "SMG_05_F";
	};

	case "I_Sniper_F": {
		_obj forceAddUniform "U_I_FullGhillie_sard";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "10Rnd_93x64_DMR_05_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "srifle_DMR_05_blk_F";
		_obj addWeapon "hgun_Rook40_F";
		_obj addPrimaryWeaponItem "optic_SOS";
	};

	case "I_Soldier_AA_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AA";
		_obj addWeapon "launch_B_Titan_tna_F";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_AR_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "150Rnd_762x54_Box";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "LMG_Zafir_F";
		
	};

	case "I_Soldier_AT_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AP";
		_obj addItemToBackpack "Titan_AT";
		_obj addWeapon "launch_B_Titan_short_tna_F";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_exp_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addItemToBackpack "MineDetector";
		for "_i" from 1 to 3 do {_obj addItemToBackpack "DemoCharge_Remote_Mag";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_soldier_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_GL_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_GL_F";
		
	};

	case "I_Soldier_LAT_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 4 do {_obj addItemToBackpack "RPG7_F";};
		_obj addWeapon "launch_RPG7_F";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_lite_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 3 do {_obj addItemToVest "150Rnd_93x64_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "MMG_01_tan_F";
		
	};

	case "I_Soldier_M_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		_obj addPrimaryWeaponItem "optic_DMS";
	};

	case "I_Soldier_repair_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "ToolKit";
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_SL_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellYellow";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShellRed";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_Soldier_TL_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
		_obj addWeapon "arifle_AK12_F";
		
	};

	case "I_soldier_UAV_F": {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		_obj linkItem "I_UavTerminal";
		_obj addBackpack "I_UAV_01_backpack_F";
	};

	case "I_Spotter_F": {
		_obj forceAddUniform "U_I_FullGhillie_sard";
		_obj addVest "V_TacVest_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj linkItem "NVGoggles_INDEP";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
	};

	default {
		_obj forceAddUniform "U_B_CombatUniform_mcam";
		_obj setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_sage_co.paa"];
		_obj addVest "V_PlateCarrierIAGL_oli";
		_obj addHeadgear "H_HelmetB_tna_F";
		_obj addGoggles (selectRandom ["","","","","","","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AK12_F";
		
	};
};