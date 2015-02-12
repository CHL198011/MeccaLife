/*
	File: intro.sqf
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 7; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 28; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to";
_role1names = ["Mecca Gaming."];
_role2 = "Admin:";
_role2names = ["UnNamed , Elemtael , Spectral"];
_role3 = "Developer:";
_role3names = ["Cal"];
_role4 = "Moderator:";
_role4names = ["FKGxAWE50ME"];
_role5 = "Designer:";
_role5names = ["Forsaken"];
_role6 = "Website:";
_role6names = ["meccagaming.com"];
_role7 = "TeamSpeak:";
_role7names = ["meccagaming.myteamspeak.net"];
_role8 = "IMPORTANT NOTICE:";
_role8names = ["Enjoy and Have Fun!"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#01aebf' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 2.3,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names]
];