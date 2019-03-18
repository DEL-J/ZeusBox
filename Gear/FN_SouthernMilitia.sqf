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

_obj setFace (selectRandom ["AfricanHead_01","AfricanHead_02","AfricanHead_03","TanoanBossHead","TanoanHead_A3_01","TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_05","TanoanHead_A3_06","TanoanHead_A3_07","TanoanHead_A3_08"]);
_obj setSpeaker (selectRandom ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB","Male01PER","Male02PER","Male03PER","Male01FRE","Male02FRE","Male03FRE","Male01ENGFRE","Male02ENGFRE","Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]);
_obj forceAddUniform (selectRandom ["U_B_CombatUniform_mcam_tshirt","U_B_CTRG_2","U_B_CTRG_Soldier_2_F","U_B_CTRG_Soldier_urb_2_F","U_B_T_Soldier_AR_F","U_BG_Guerilla1_1","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1","U_BG_Guerrilla_6_1","U_BG_leader","U_C_HunterBody_grn","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Camo_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F","U_I_G_resistanceLeader_F","U_I_G_Story_Protagonist_F"]);
_obj addVest (selectRandom ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_ghex_F","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_ghex_F","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_ghex_F","V_HarnessOGL_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_blk","V_PlateCarrier2_rgr_noflag_F","V_PlateCarrierIA1_dgtl","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestIR_blk"]);
_obj addHeadgear (selectRandom ["H_Bandanna_blu","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_mcamo","H_Bandanna_sand","H_Bandanna_sgg","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","H_Beret_blk","H_Booniehat_dgtl","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_tna_F","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_blk_ION","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_grn_BI","H_Cap_headphones","H_Cap_oli","H_Cap_oli_hs","H_Cap_red","H_Cap_surfer","H_Cap_tan","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_ghex_F","H_MilCap_gry","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_tna_F","H_Shemag_olive","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_cbr","H_Watchcap_khk","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]);
_obj addGoggles (selectRandom ["G_Balaclava_blk","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","G_Balaclava_TI_blk_F","G_Balaclava_TI_tna_F","","","","","","","","","","","","","","","","","","","","","","","",""]);

switch (_type) do {

	case "I_helipilot_F": {
		removeHeadgear _obj;
		removeGoggles _obj;
		_obj addHeadgear (selectRandom ["H_Cap_marshal","H_Cap_headphones"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_medic_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Medikit";
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_officer_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_pilot_F": {
		removeHeadgear _obj;
		removeGoggles _obj;
		_obj addHeadgear (selectRandom ["H_Cap_marshal","H_Cap_headphones"]);
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_Sniper_F": {
		removeUniform _obj;
		_obj forceAddUniform "U_I_FullGhillie_sard";
		for "_i" from 1 to 10 do {_obj addItemToVest "7Rnd_408_Mag";};
		_obj addWeapon "srifle_LRR_F";
		_obj addPrimaryWeaponItem "optic_LRPS";
	};

	case "I_Soldier_AA_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AA";
		_obj addWeapon "launch_B_Titan_tna_F";
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_Soldier_AR_F": {
		for "_i" from 1 to 2 do {_obj addItemToVest "200Rnd_556x45_Box_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon "LMG_03_F";
	};

	case "I_Soldier_AT_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		_obj addItemToBackpack "Titan_AP";
		_obj addItemToBackpack "Titan_AT";
		_obj addWeapon "launch_B_Titan_short_tna_F";
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_Soldier_GL_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 4 do {_obj addItemToBackpack "RPG7_F";};
		_obj addWeapon "launch_RPG7_F";
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_Soldier_LAT_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addBackpack (selectRandom ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_tna_F","B_AssaultPack_rgr"]);
		for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
		_obj addWeapon "launch_NLAW_F";
		_obj addWeapon "arifle_AKS_F";
	};

	case "I_Soldier_M_F": {
		for "_i" from 1 to 8 do {_obj addItemToVest "20Rnd_762x51_Mag";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon (selectRandom ["arifle_SPAR_03_blk_F","srifle_DMR_03_F","srifle_DMR_06_olive_F","srifle_EBR_F"]);
		_obj addPrimaryWeaponItem (selectRandom ["","","","","","optic_Arco_blk_F","optic_ERCO_blk_F","optic_Hamr","optic_KHS_old","optic_SOS"]);
	};

	case "I_Soldier_SL_F": {
		for "_i" from 1 to 10 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "I_Soldier_TL_F": {
		for "_i" from 1 to 10 do {_obj addItemToVest "30Rnd_556x45_Stanag";};
		_obj addWeapon "arifle_SPAR_01_blk_F";
		_obj addPrimaryWeaponItem "optic_ACO_grn";
	};

	case "I_Spotter_F": {
		removeUniform _obj;
		_obj forceAddUniform "U_I_FullGhillie_sard";
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_545x39_Mag_F";};
		_obj addWeapon "arifle_AKS_F";
	};

	default {
		for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
		for "_i" from 1 to 4 do {_obj addItemToVest "SmokeShell";};
		_obj addWeapon (selectRandom ["arifle_AKM_F","arifle_AKM_F","arifle_AKM_F","arifle_AKM_F","arifle_AK12_F"]);
	};
};