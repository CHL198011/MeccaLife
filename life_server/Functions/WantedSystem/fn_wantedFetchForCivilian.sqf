/*
       fn_wantedFetchForCivilian.sqf
*/
private["_updateBounty","_pid","_result","_queryResult"];

_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

/*_result = format["wantedFetchForCivilian:%1",(getPlayerUID _player)];
waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;

_updateBounty = _queryResult select 0;
*/
_list = missionNamespace getVariable "wantedList";
_updateBounty = _list select 3;

if(_updateBounty <= 0) exitWith {_updateBounty = 0};

[[_updateBounty],"life_fnc_updateBounty",owner _player,false] spawn life_fnc_MP;