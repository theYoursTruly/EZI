/*
 * Name: onPlayerRespawn
 * Add login/logout option to the respawned player.
 *
 * Params:
 * -
 *
 * Return:
 * -
 *
 * [] call EZI_fnc_onPlayerRespawn
*/
EZI_LoggedIn = false;

if(EZI_AddAction == -1) then {
    EZI_AddAction = player addAction ["<t color=""#3cdebe"">EZI Login</t>", {[_this select 0] call EZI_fnc_login}, nil, -50, false, true, "", "_target == _this && !EZI_LoggedIn"];
    player addAction ["<t color=""#de3c5c"">EZI Logout</t>", {[_this select 0] call EZI_fnc_logout}, nil, -50, false, true, "", "_target == _this && EZI_LoggedIn"];
};
