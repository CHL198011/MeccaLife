/*
	File: fn_upgradeVehicle.sqf
	Author: Derek
	
	Description:
	Upgrades the vehicle.
*/
private["_nearVehicles","_vehicle","_trunk","_insurance","_security","_gps","_hooks","_display","_hooksctrl","_gpsctrl","_securityctrl"];

_mode = [_this,0,-1,[0]] call BIS_fnc_param;
if(_mode == -1) exitWith {};
disableSerialization;


if(isNil "upgradeVehicle") exitWith {hint "No Vehicle Near to Upgrade"};
if(isNull upgradeVehicle) exitWith {};
_vehicle = upgradeVehicle;

switch (_mode) do
{
    case 0:
    {
        _gps = false;
        _hooks = false;
        _security = false;
        
        _display = findDisplay 5500;
        
        _insurance = round(sliderPosition 5502);
        _trunk = round(sliderPosition 5501);
        
        _securityctrl = _display displayCtrl 5503;
        _hooksctrl = _display displayCtrl 5504;
        _gpsctrl = _display displayCtrl 5505;
        
        _gps = cbChecked _gpsctrl;
		_hooks = cbChecked _hooksctrl;
		_security = cbChecked _securityctrl;
        
        if (_gps && !(_vehicle getVariable["gps",false])) then {
            [player] spawn {
                diag_log format["gpsUpgrade unit: %1", player];
            	_veh = _vehicle;
            	_markerName = format["%1_gpstracker",_veh];
            	_marker = createMarkerLocal [_markerName, visiblePosition _veh];
            	_marker setMarkerColorLocal "ColorRed";
            	_marker setMarkerTypeLocal "Mil_dot";
            	_marker setMarkerTextLocal "GPS Tracker "+getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName");
            	_marker setMarkerPosLocal getPos _veh;
            	while {true} do {
            		if(not alive _veh) exitWith {deleteMarkerLocal _markerName;};
            		_marker setMarkerPosLocal getPos _veh;
            		sleep 0.5;
            	};
            };
        };
        _vehicle setVariable["security",_security];
        _vehicle setVariable["gps",_gps];
        _vehicle setVariable["hooks",_hooks];
        _vehicle setVariable["insurance",_insurance];
        _vehicle setVariable["security",_security];
        _vehicle setVariable["trunklevel",_trunk];
    };
};