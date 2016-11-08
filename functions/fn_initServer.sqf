/*
 * Name: initServer
 * Create curators for further use.
 *
 * Params:
 * -
 *
 * Return:
 * -
 *
 * [] call EZI_fnc_initServer
*/
if(!isServer) exitWith {};

_groupLogic = createGroup sideLogic;

for "_i" from 1 to 3 do {
    _curator = _groupLogic createUnit ["ModuleCurator_F", [0,0,0], [], 0, "NONE"];
    _curator setVariable ["Addons", 3, true];
};
