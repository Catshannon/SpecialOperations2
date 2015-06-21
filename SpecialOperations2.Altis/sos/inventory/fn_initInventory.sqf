/*
 * Author: Legman [S.O.S. Major]
 * Initializes an S.O.S units inventory.
 *
 * Arguments:
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_unit] call SOS_fnc_initInventory;
 *
 */
 
private ["_side", "_role"];
 
if (isDedicated) exitWith {};

waitUntil {!isNull player};

_side = side player;
_role = player getVariable "sos_inventory_role";
[player, format ["%1%2", _side, _role]] call BIS_fnc_addRespawnInventory;
