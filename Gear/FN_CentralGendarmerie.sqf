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

_obj setFace (selectRandom ["GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09","IG_Leader","Miller","Nikos","O_Colonel","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_06","O_Colonel","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_06"]);
_obj setSpeaker (selectRandom ["Male01PER","Male02PER","Male03PER","Male01PER","Male02PER","Male03PER","Male01PER","Male02PER","Male03PER","Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]);

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