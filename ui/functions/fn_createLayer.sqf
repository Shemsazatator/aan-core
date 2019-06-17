/*----------------------------------------
    Author:		ArmApps
    Website:	https://armapps.net
------------------------------------------*/
#define filename "fn_createLayer.sqf";

disableSerialization;

params [
    ["_layerName", "", [""]],
    ["_speed", 0, [0]],
    ["_showInMap", true, [false]]
];

if !(isNull (uiNamespace getVariable [_layerName, displayNull])) exitWith { false };
_layerName cutRsc [_layerName, "PLAIN", _speed, _showInMap];

true
