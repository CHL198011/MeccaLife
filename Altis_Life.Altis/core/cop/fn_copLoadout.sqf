#include <macro.h>

/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addBackpack "B_Carryall_oucamo";

/* ITEMS */
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ToolKit";
player addItem "NVGoggles";
player assignItem "NVGoggles";
player addItem "Rangefinder";
player assignItem "Rangefinder";
player addItem "SmokeShell";
player addItem "SmokeShell";
player addWeapon "hgun_P07_F";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";


If(BANK > 0) then {BANK = BANK - 5000;};

if (playerSide == west) then {

switch (FETCH_CONST(life_coplevel)) do {

	case 1:
	{
		player addHeadgear "H_MilCap_blue";
		player ForceAddUniform "U_BG_Guerilla2_2";
		player setObjectTextureGlobal [0, "textures\cadettroop.jpg"]; 
		player addVest "V_TacVest_blk_POLICE";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		[true,"redgull",3] call life_fnc_handleInv;
	};
	
	case 2:
	{
		player addHeadgear "H_MilCap_blue";
		player ForceAddUniform "U_BG_Guerilla2_2";
		player setObjectTextureGlobal [0, "textures\cadettroop.jpg"]; 
		player addWeapon "arifle_MXC_Black_F";
		player addPrimaryWeaponItem "optic_Arco";
		player addVest "V_TacVest_blk_POLICE";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	
	case 3:
	{
		player addHeadgear "H_MilCap_gry";
	    player ForceAddUniform "U_BG_Guerilla3_2";
		player setObjectTextureGlobal [0, "textures\corptroop.jpg"];
		player addWeapon "arifle_MX_Black_F";
		player addPrimaryWeaponItem "optic_MRCO";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addItem "SmokeShellBlue";
		player addItem "SmokeShellBlue";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	
	case 4:
	{
	    player ForceAddUniform "U_BG_Guerilla3_2";
		player setObjectTextureGlobal [0, "textures\corptroop.jpg"];
		player addHeadgear "H_Beret_02";
		player addWeapon "arifle_MXM_Black_F";
		player addPrimaryWeaponItem "optic_MRCO";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addItem "SmokeShellBlue";
		player addItem "SmokeShellBlue";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	
	case 5:
	{
	    player ForceAddUniform "U_O_OfficerUniform_ocamo";
		player setObjectTextureGlobal [0, "textures\corptroop.jpg"];
		player addHeadgear "H_Beret_02";
		player addVest "V_PlateCarrier1_blk";
		player addWeapon "arifle_MXM_Black_F";
		player addPrimaryWeaponItem "optic_MRCO";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addItem "SmokeShellBlue";
		player addItem "SmokeShellBlue";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	case 6:
	{
	    player ForceAddUniform "U_O_OfficerUniform_ocamo";
		player setObjectTextureGlobal [0, "textures\corptroop.jpg"];
		player addHeadgear "H_Beret_02";
		player addWeapon "arifle_MXM_Black_F";
		player addVest "V_PlateCarrier1_blk";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addItem "SmokeShellBlue";
		player addItem "SmokeShellBlue";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	case 7:
	{
	    player ForceAddUniform "U_O_OfficerUniform_ocamo";
		player setObjectTextureGlobal [0, "textures\corptroop.jpg"];
		player addHeadgear "H_Beret_Colonel";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addVest "V_PlateCarrier1_blk";
		player addWeapon "arifle_MXM_Black_F";
		player addPrimaryWeaponItem "optic_Arco";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addMagazine "30Rnd_65x39_caseless_mag";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItem "HandGrenade_Stone";
		player addItemToBackpack "Chemlight_blue";
		player addItemToBackpack "Chemlight_blue";
		player addGoggles "G_Squares_Tinted";
		player addItemToBackpack "H_PilotHelmetFighter_B";
		player addItem "SmokeShellBlue";
		player addItem "SmokeShellBlue";
		[true,"redgull",3] call life_fnc_handleInv;
		[true,"tbacon",3] call life_fnc_handleInv;
		[true,"coffee",3] call life_fnc_handleInv;
		[true,"spikestrip",1] call life_fnc_handleInv;
	};
	
};
};
[] call life_fnc_saveGear;
[] call life_fnc_Uniformscolor;
