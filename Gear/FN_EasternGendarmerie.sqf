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

switch (_type) do {

	case "B_GEN_Commander_F": {
		_obj forceAddUniform "U_B_GEN_Commander_F";
		_obj addVest "V_PlateCarrier1_blk";
		for "_i" from 1 to 6 do {_obj addItemToVest "30Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear (selectRandom ["H_Cap_police","H_MilCap_gen_F"]);
		_obj addWeapon "arifle_MX_Black_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};

	case "B_GEN_Soldier_F": {
		_obj forceAddUniform "U_B_GEN_Commander_F";
		_obj addVest "V_PlateCarrier1_blk";
		for "_i" from 1 to 6 do {_obj addItemToVest "30Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear (selectRandom ["H_Cap_police","H_MilCap_gen_F"]);
		_obj addWeapon "arifle_MXM_Black_F";
		_obj addPrimaryWeaponItem "optic_Hamr";
		_obj addPrimaryWeaponItem "bipod_01_F_blk";
	};

	case "C_Marshal_F": {
		_obj forceAddUniform "U_B_GEN_Commander_F";
		_obj addVest "V_PlateCarrier1_blk";
		for "_i" from 1 to 4 do {_obj addItemToVest "100Rnd_65x39_caseless_mag";};
		_obj addHeadgear (selectRandom ["H_Cap_police","H_MilCap_gen_F"]);
		_obj addWeapon "arifle_MX_SW_Black_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
		_obj addPrimaryWeaponItem "bipod_01_F_blk";
	};

	default {
		_obj forceAddUniform "U_B_GEN_Commander_F";
		_obj addVest "V_PlateCarrier1_blk";
		for "_i" from 1 to 6 do {_obj addItemToVest "30Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
		_obj addHeadgear "H_PilotHelmetHeli_B";
		_obj addWeapon "arifle_MXC_Black_F";
		_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
	};
};