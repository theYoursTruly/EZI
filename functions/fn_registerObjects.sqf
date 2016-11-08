/*
 * Name: registerObjects
 * Add objects to curators. Allow for their editing.
 *
 * Params:
 * 1: Objects to register <ARRAY>
 * 2: (OPTIONAL) Curator to register for <OBJECT>
 *
 * Return:
 * -
 *
 * [[unit1, unit2], curator2] call EZI_fnc_registerObjects
*/
params ["_objects", ["_curators", allCurators]];

{
    _x addCuratorEditableObjects [_objects, true];
    false
} count _curators;
