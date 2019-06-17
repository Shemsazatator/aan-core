/*----------------------------------------
    Author:		ArmApps
    Website:	https://armapps.net
------------------------------------------*/.sq
#define filename "fn_destroyLayer.sqf";

disableSerialization;

params [
    ["_layerName", "", [""]],
    ["_time", 0, [0]]
];

private _layer = uiNamespace getVariable [_layerName, displayNull];

if (isNull _layer) exitWith { false };

_layerName cutFadeOut _time;

if (isNil {missionNamespace getVariable _layerName}) then {
    "onUnload" call (missionNamespace getVariable _layerName);
};

true
