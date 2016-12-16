/*
 * Name: initClient
 * Initialize EZI on player.
 *
 * Params:
 * -
 *
 * Return:
 * -
 *
 * [] call EZI_fnc_initClient
*/
if(!hasInterface) exitWith {};

EZI_AddAction = -1;
EZI_LoggedIn = false;

[[player]] remoteExec ["EZI_fnc_registerObjects", 2];

if(local player) then {
    player addEventHandler ["killed", {[] call EZI_fnc_onPlayerRespawn}];
    [] call EZI_fnc_onPlayerRespawn;
};
