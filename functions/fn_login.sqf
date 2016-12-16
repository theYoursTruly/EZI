/*
 * Name: login
 * Connect to a curator and open the interface.
 *
 * Params:
 * 1: Unit to login <OBJECT>
 *
 * Return:
 * -
 *
 * [player] call EZI_fnc_login
*/
if(EZI_LoggedIn) exitWith { diag_log "[EZI] Player already logged in! This shouldn't happen.."; };
params ["_unit"];
private ["_curator", "_curatorNum"];

_curator = objNull;
scopeName "EZI_main";

_curatorNum = {
    if(isNull getAssignedCuratorUnit _x) then
    {
        _curator = _x;
        breakTo "EZI_main";
    };
    true
} count allCurators;

if(isNull _curator) then {
    _names = "";
    { _names = _names + "<br/>" + name getAssignedCuratorUnit _x; } forEach allCurators;
    hint parseText format["<t color='#ff8888' size='1.2'>All %1 curators in use%2</t>", _curatorNum, _names];
} else {
    EZI_LoggedIn = true;
    [_unit, _curator] remoteExec ["assignCurator", 2];

    waitUntil {getAssignedCuratorUnit _curator == _unit};

    [allUnits+vehicles, [_curator]] remoteExec ["EZI_fnc_registerObjects", 2];
    EZI_CuratorEH = _curator addEventHandler ["CuratorObjectPlaced", {[[_this select 1]] remoteExec ["EZI_fnc_registerObjects", 2]}];
    format ["[EZI] %1 logged in", name _unit] remoteExec ["systemChat", -2];

    openCuratorInterface;
};
