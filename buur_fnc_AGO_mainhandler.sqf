
{
  [
    _x,                                                                                // Object the action is attached to
    "Get out of Car with all equipment",                                                                     // Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeoff1_ca.paa",                      // Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeoff1_ca.paa",                      // Progress icon shown on screen
    "((_this in _target) && (speed _target == 0))",                                       // Condition for the action to be shown
    "true",                                                                               // Condition for the action to progress
    {},                                                                                   // Code executed when action starts
    {},                                                                                   // Code executed on every progress tick
    {
      (_this select 1) action ["getOut", (_this select 0)];
      waitUntil {stance (_this select 1) == "STAND"};
      (_this select 1) action ["WeaponOnBack", (_this select 1)];
    },                         // Code executed on completion
    {},                    // Code executed on interrupted
    [],                                          // Arguments passed to the scripts as _this select 3
    5,                                           // Action duration [s]
    nil,                                         // Priority
    false,                                       // Remove on completion
    false                                       // Show in unconscious state
  ] call BIS_fnc_holdActionAdd;


} foreach vehicles;
