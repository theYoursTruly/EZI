/*
 * Name: logout
 * Disconnect from the curator.
 *
 * Params:
 * 1: Unit to logout <OBJECT>
 *
 * Return:
 * -
 *
 * [player] call EZI_fnc_logout
*/
params ["_unit"];

_curator = objNull;
scopeName "EZI_main";
{
    if(getAssignedCuratorUnit _x == _unit) then
    {
        _curator = _x;
        breakTo "EZI_main";
    };
    false
} count allCurators;

if(isNull _curator) exitWith { diag_log "[EZI] Player is not a curator! This shouldn't happen.."; };

_curator removeEventHandler ["CuratorObjectPlaced", EZI_CuratorEH];
_curator remoteExec ["unassignCurator", 2];
format ["[EZI] %1 logged out", name _unit] remoteExec ["systemChat", -2];
EZI_LoggedIn = false;
