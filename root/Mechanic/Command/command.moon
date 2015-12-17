
-- The [command] tag

-- The [command] tag is used to specify an action in a replay. It has the following attributes:
-- dependent if true, this command is not a lone-standing command and instead belongs to an earlier command, for example an advancement choice for an earlier attack command which issued an advancement.
-- from_side the side which issued the command. Only present for dependent commands.
-- sent used internally in networked mp, to know which commands were already sent to the other clients.
-- The following tags are recognized for dependent=no(default):
-- [start]: is used to initialize the replay so that generated random numbers can be saved.
-- [move]: the player moved a unit.
-- x,y: the path the unit walks.
-- skip_sighted: whether the unit doesn't stop when discovering another unit, possible values are 'only_ally', 'all' or no, (default no).
-- [recruit]: the player recruited a unit.
-- type: the id of the type of unit recruited.
-- x and y: the castle tile the unit is recruited on.
-- [from]
-- x and y: the keep tile the unit is recruited from.
-- [recall]: the player recalled a unit. Same keys as [recruit], except that value is the id of the unit being recalled.
-- [attack]: the player attacked.
-- weapon: the index number of the weapon. Weapons are indexed by the unit designer.
-- defender_weapon: the index number of the defenders weapon. Weapons are indexed by the unit designer, '-1' to choose the best weapon locally. The '-1' option is deprecated because it can cause OOS.
-- [source]: the location of the attacking unit.
-- [destination]: the location of the defending unit.
-- [disband]: the player removes a unit from his recall list.
-- value the id of the removed unit.
-- [end_turn]: the player ended his turn.
-- [init_side]: new turn is starting for a side. This fires begin of turn events.
-- [fire_event]: a specific event was raised. This is mainly used for right-click menu items. ([set_menu_item])
-- raise: the name of the event
-- [source]: the location of the event
-- [set_variable] (deprecated): set WML variable(s) before firing.
-- name: the name of the variable
-- value: a string value (literal)
-- [lua_ai]
-- code the lua code that is executed.
-- [auto_shroud] a player toggled delayed shroud update
-- active whether automatic shroud updates will be active.
-- [update_shroud] a player manually updated shroud.
-- Non dependent commands can have a [checkup] tag which is used to check whether the data generated in the replay matches the data generated during the original game, The [checkup] tag can contain different [result] tags whose content is different for the different actions. For [attack] commands the [result]s give information about the single hits and can have the following attributes:
-- chance: the percent chance that the attack had to hit.
-- damage: the amount of damage that the attack would do if it hits.
-- hits: whether the attack hits.
-- Or
-- dies: whether the defender dies from the hit.
-- The following tags are recognized for dependent=true:
-- [choose]: the player was given an option by the scenario or for an advancement path.
-- value: the index number of the option chosen. Index numbers are given by the scenario designer.
-- [input]: if a lua code used LuaWML:Misc#wesnoth.synchronize_choice this tag contains the returned table.
-- [global_variable] a WML code used with [get_global_variable]
-- [random_seed] A user actions uses the rng and thus new random seed is needed.
