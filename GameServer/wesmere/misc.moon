----
-- @submodule wesmere

-- LuaWML:Misc
-- This page describes miscellaneous LuaWML objects and helpers.

----
-- Contrarily to the other values of the wesnoth table, game_config is simply a proxy table. Its fields offer an interface to the global settings of Wesnoth:
-- @table wesmere.game_config
-- @string version: string (read only)
-- @number base_income: integer (read/write)
-- @number village_income: integer (read/write)
-- @number poison_amount: integer (read/write)
-- @number rest_heal_amount: integer (read/write)
-- @number recall_cost: integer (read/write)
-- @number kill_experience: integer (read/write)
-- @number last_turn: integer (read/write) turn limit, maximum number of turns
-- @bool debug: boolean (read only)
-- @bool mp_debug: boolean (read only)
-- @string campaign_type: string (read only) Indicates what type of game this is, e.g. "multiplayer"
-- @tab mp_settings: table. In a multiplayer game, this is a proxy table which gives read only access to all MP-only configuration options which appear as attributes of [multiplayer] tag in a save game file:
-- @string mp_settings.active_mods: string (read only) A list of all active modifications
-- @string hash: string (read only) A hash of mp data
-- @string mp_campaign: string (read only) Name of mp campaign
-- @string mp_scenario: string (read only) ID of this mp scenario
-- @string mp_scenario_name: string (read only) Name of this mp scenario
-- @string scenario: string (read only) MP lobby title
-- @string difficulty_define: string (read only) The campaign difficulty string for an mp campaign
-- @number mp_village_gold: integer (read only)
-- @number mp_village_support: integer (read only)
-- @number mp_num_turns: integer (read only)
-- @string mp_era: string (read only) The id of the chosen era
-- @string mp_eras: string (read only) A list of all era ids
-- @bool mp_fog: boolean (read only)
-- @bool mp_shroud: boolean (read only)
-- @bool mp_random_start_time: boolean (read only)
-- @number experience_modifier: integer (read only)
-- @bool mp_use_map_settings: boolean (read only)
-- @bool mp_countdown: boolean (read only) Whether the timer is enabled
-- @number mp_countdown_action_bonus: integer (read only)
-- @number mp_countdown_init_time: integer (read only)
-- @number mp_countdown_reservoir_time: integer (read only)
-- @number mp_countdown_turn_bonus: integer (read only)
-- @bool observer: boolean (read only)
-- @bool shuffle_sides: boolean (read only)
-- @bool savegame: boolean (read only) Whether this is a reloaded game
-- @string side_users: string (read only) List of how sides are assigned to users (at game start)
-- @tab era: table. A proxy table for the entire era tag corresponding to the current era. Its id will always match wesnoth.game_config.mp_settings.mp_era
-- Note: wesnoth.game_config.mp_settings, and wesnoth.game_config.era, will only exist if wesnoth.game_config.campaign_type == "multiplayer"
-- @usage -- Poison a bit weak? Let's boost it!
-- wesnoth.game_config.poison_amount = 15
-- @usage -- Warn users when they use bad settings:
-- if (wesnoth.game_config.mp_settings.shuffle_sides)
--     wesnoth.message("Warning: This scenario is not intended to be played with shuffle sides!")
-- @usage -- Collect basic info about the current era:
-- era = wesnoth.game_config.era
-- helper = wesnoth.require("lua/helper.lua")
-- count = 0
-- wesnoth.set_variable("era_name", era.name)
-- for multiplayer_side in helper.child_range(era, "multiplayer_side")
--     count += 1
--     wesnoth.set_variable("faction" .. tostring(count) .. "_name", multiplayer_side.name)
--     wesnoth.set_variable("faction" .. tostring(count) .. "_recruit", multiplayer_side.recruit)
-- wesnoth.set_variable("num_factions", count)

----
-- A function which takes one argument, an era id, and returns the entire era tag corresponding to that id. For a list of valid era ids, use wesnoth.game_config.mp_settings.mp_eras.
-- @function wesnoth.get_era
-- @string id an era id
-- @treturn tab era
wesnoth.get_era = (id) ->

----
-- As with game_config, current is a proxy table. Its fields are getter for game-related properties:
-- @table wesnoth.current
-- @number side: integer (read only)
-- @number turn: integer (read only)
-- @tab event_context: WML table with attributes name, x1, y1, x2, y2, and children weapon, second_weapon, describing the trigger for the current event. (Version 1.13.2 and later only) unit_x, unit_y contain the location of the primary unit involved in the event. Currently the only case where this can be different from x1 and y1 are enter_hex and exit_hex events.
-- synced_state (Version 1.13.0 and later only) whether the current code runs in a synced contex, this returns a string, the possible values are:
-- synced the current code runs on all mp clients, this is the normal context, in which all gamestatechaning actions should take place.
-- unsynced for example during select events or during the calculation of a wesnoth.theme_items, don't change the gamestate in this context because the current code only runs on one machine, so changign the gamestate here will cause OOS. Typical things to do here are UI related things, or entering the synced state via [do_command]
-- local_choice the current code was invoked by wesnoth.synchronize_choice and runs only on one local client to calculate the return value for wesnoth.synchronize_choice. You cannot enter the synced context with [do_command] now.
-- preload we are currently running a preload event or an even earlier event, this behaves similar to local_choice
-- wesnoth.message(string.format("Turn %d, side %d is playing.", wesnoth.current.turn, wesnoth.current.side))

----
-- (Version 1.13.2 and later only) wesnoth.synchronize_choice([description], function, [ai_function], [for_side])
-- Recovers a WML table that was computed on one client only or was stored in a replay. The actual computation is performed by the function passed as the first function argument, assuming that the client is the side currently playing. For all the other clients, the function will not be called. An optional second function can be passed; if present, it will be used instead of the first one when the client happens to be an AI (hence not enable to interact with a user interface).
-- local result = wesnoth.synchronize_choice(
--   function()
--     -- Called only on the client handling the current side, if it is a human.
--     local choice = 0
--     wesnoth.show_dialog(
--       some_dialog_cfg, nil,
--       function()
--         choice = wesnoth.get_dialog_value "some_list"
--       end)
--     return { value = choice }
--   end,
--   function()
--     -- Called only on the client handling the current side, if it is an AI.
--     return { value = math.random(some_list_size) }
--   end)
-- wesnoth.message(string.format("Selected item: %d", result.value))
-- Note: The return value must be a valid WML table - the same kind of thing you could store to a WML variable, and not, for instance, a proxy unit, anything else that uses metatables, or a lua table with another table as the value of a string attribute. Unlike other lua functions, wesnoth.synchronize_choice will NOT throw an error if the table is invalid, but will silently strip out the contents of any invalid subtag.
-- When wesnoth is running in debug mode (e.g. --debug flag on command line) synchronize_choice will chat a "Lua Warning" if it finds that the table returned was partially invalid.
-- (Version 1.13.2 and later only) This function takes now takes these arguments:
-- An optional translatable string descibing the type of the user input. This is displayed to the other clients while one client executes the passeed function. Defaults to "input".
-- A function: (as before).
-- An optional function: for ai sides (as before).
-- An optional integer: on which side the function should be evaluated. Defaults to the currently playing side. If the specified side is empty/null controlled the engine will choose another side.
-- @function wesnoth.synchronize_choice
wesnoth.synchronize_choice = (function, [ai_function]) ->

----
-- (Version 1.13.2 and later only) Similar to the singular form above, this function takes a function parameter and evaluates it on the specified sides. It takes the following arguments:
-- An optional translatable string descibing the type of the user input. This is displayed to the other clients while the specified clients execute the passeed function. Defaults to "input"
-- A function that evaluates the choice returning a wml table. Unlike above, this function is called for ai and human sides (use if controller == "ai" for checking if it is a ai side)
-- An optional function for evaluating the choice in case this side was null controlled. If this function is called, it is called on all clients (unlike the first passed function) defaults to a function returning an empty table.
-- An array of integers specifying on which sides this function should be evaluated, the function is evaluated on all passed sides, each side may only appear once in this array. All specified sides execute the function simultaniously.
-- This function returns a table with integer as keys and WML tables as values. the keys are the sides where that action was evaluated. The values are the values computed by the passed function. Example:
-- [event]
--   name = "start"
--   [lua]
--   code = <<
--     wesnoth.set_variable("input1",nil)
--     local result = wesnoth.synchronize_choices(
--     function()
--       local option1 = T.option { message = "No", T.command { T.set_variable { name = "input1", value = "No"}}}
--       local option2 = T.option { message = "Yes", T.command { T.set_variable { name = "input1", value = "Yes"}}}
--       wesnoth.fire(T.message{ message =  "Are you sure you want to play this game?", option1, option2})
--       return { value = wesnoth.get_variable("input1") }
--     end,
--     {1,2})
--     wesnoth.set_variable("input1",nil)
--     wesnoth.message("Player 1 wants to play: " .. result[1].value)
--     wesnoth.message("Player 2 wants to play: " .. result[2].value)
--   >>
--   [/lua]
-- [/event]
-- @function wesnoth.synchronize_choices
wesnoth.synchronize_choices = ([description], function, [default_function], [for_sides]) ->

----
-- Returns the width and height of an image.
-- w, h = wesnoth.get_image_size "units/transport/galleon.png"
-- @function wesnoth.get_image_size
wesnoth.get_image_size = (filename) ->

----
-- Takes two versions strings and an operator, returns whether the comparison yields true. Follows the same rules like the #ifver preprocessor statement.
-- local function version_is_sufficient(required)
--  if not wesnoth.compare_versions then return false end
--  return wesnoth.compare_versions(wesnoth.game_config.version, ">=", required)
-- end
-- local required = "1.9.6"
-- if not version_is_sufficient(required) then wesnoth.message(string.format(
--  "Your BfW version is insufficient, please get BfW %s or greater!", required)) end
-- @function wesnoth.compare_versions
wesnoth.compare_versions = (version1, operator, version2) ->


----
-- Checks if the file (not necessarily a Lua file) or the directory passed as argument exists. Returns true if the file exists, false otherwise. Follows the same rules like the #ifhave preprocessor statement.
-- -- Does the user have installed the UMC Music Book 1?
-- local umc_music = wesnoth.have_file( "~add-ons/UMC_Music_Book_1/_main.cfg" )
-- -- and if we want to check for the folder?
-- local music_folder = wesnoth.have_file( "~add-ons/UMC_Music_Book_1/" )
-- @function wesnoth.have_file
wesnoth.have_file = (filename) ->

----
-- Takes a userdata with metatable wml object or a wml table and dumps its content into a pretty string.
-- wesnoth.set_variable("number", 100)
-- local vconfig = wesnoth.tovconfig({ key = "$number", another_key = true,
--     {"a_subtag", { a_key_in_the_subtag = "foo" }}
-- })
-- wesnoth.message(wesnoth.debug(vconfig))
-- wesnoth.message(wesnoth.debug(vconfig.__literal))
-- @function wesnoth.debug
wesnoth.debug = (wml_table) ->

----
-- This function retrieves the current time stamp, that is the amount of milliseconds passed from when the SDL library was initialized. It takes no arguments and returns an integer. WARNING: this function uses the same code as [set_variable] time=stamp, and so it is MP-unsafe. It is provided only for benchmark purposes and AI development, although it should work inside wesnoth.synchronize_choice() as well.
-- local stamp = wesnoth.get_time_stamp()
-- @function wesnoth.get_time_stamp
wesnoth.get_time_stamp = () ->

----
-- (Version 1.13.2 and later only) This function returns a random number generated by the synced random generator which is also used by [set_variable]rand= (and thus also by helper.rand). This function has the same interface as math.random so it can take 0, 1 or 2 arguments.
-- @function wesnoth.random
wesnoth.random = ([m, [n]]) ->

----
-- Sets the metable of a table so that it can be used to create subtags with less brackets. Returns the table. The fields of the table are simple wrappers around table constructors.
-- T = helper.set_wml_tag_metatable {}
-- W.event { name = "new turn", T.message { speaker = "narrator", message = "?" } }
-- @function helper.set_wml_tag_metatable
helper.set_wml_tag_metatable = () ->

----
-- Modifies all the units satisfying the given filter (argument 1) with some WML attributes/objects (argument 2). This is a Lua implementation of the MODIFY_UNIT macro.
-- helper.modify_unit({ id="Delfador" }, { moves=0 })
-- Note: This appears to be less powerful than the [modify_unit] tag and may be removed at some point in the future.
-- @function helper.modify_unit
helper.modify_unit = (filter, keys) ->

----
-- Fakes the move of a unit satisfying the given filter (argument 1) to the given position (argument 2). This is a Lua implementation of the MOVE_UNIT macro.
-- helper.move_unit_fake({ id="Delfador" }, 14, 8)
-- @function helper.move_unit_fake
helper.move_unit_fake = (unit, destination) ->

----
-- (A shortcut to set_variable's rand= since math.rand is an OOS magnet and therefore disabled.) Pass a string like you would to set_variable's rand=.
-- create a random unit at (1, 1) on side=1 :
-- wesnoth.put_unit(1, 1, { type = helper.rand("Dwarvish Fighter,Dwarvish Thunderer,Dwarvish Scout") })
-- @function helper.rand
helper.rand = (spec) ->

----
-- Unlike other languages (Python, Perl, Javascript, ...), Lua does not include a round function. This helper function allows rounding numbers, following the "round half away from zero method", see Wikipedia [[1]]. Returns the number rounded to the nearest integer.
-- -- this number will be rounded up
-- helper.round(345.67) -- returns 346
-- -- this one will be rounded down
-- helper.round(543.21) -- returns 543
-- -- an integer stays integer
-- helper.round(123) -- returns 123
-- -- works also for negative numbers
-- helper.round(-369.84) -- returns -370
-- helper.round(-246.42) -- returns -246
-- function helper.round( number )
--     -- code converted from util.hpp, round_portable function
--     -- round half away from zero method
--     if number >= 0 then
--         number = math.floor( number + 0.5 )
--     else
--         number = math.ceil ( number - 0.5 )
--     end

--     return number
-- end
-- @function helper.round
helper.round = (n) ->


----
-- (Version 1.13.2 and later only) helper.shuffle(array, [random_function])
-- This function randomly sorts in place the elements of the table passed as argument, following the Fisher-Yates algorithm. It returns no value. WARNING: this function uses Lua's math.random(), and so it is not MP-safe. It is provided mainly for AI development, although it should work inside wesnoth.synchronize_choice() as well.
-- local locs = wesnoth.get_locations( { terrain="G*" } )
-- helper.shuffle( locs )
-- (Version 1.13.2 and later only) This function now uses the synced RNG by default and should not cause OOS anymore. It is also possible now to pass a different random generator as a second argument; a random generator is a function that takes two integers a and b and returns a random integer in the range [a,b]. For example, math.random can be passed to get the 1.12 behavior:
-- local locs = wesnoth.get_locations( { terrain="G*" } )
-- helper.shuffle( locs, math.random )
-- function helper.shuffle( t, random_func)
--     random_func = random_func or wesnoth.random
--     -- since tables are passed by reference, this is an in-place shuffle
--     -- it uses the Fisher-Yates algorithm, also known as Knuth shuffle
--     assert( type( t ) == "table", string.format( "helper.shuffle expects a table as parameter, got %s instead", type( t ) ) )
--     local length = #t
--     for index = length, 2, -1 do
--         local random = random_func( 1, index )
--         t[index], t[random] = t[random], t[index]
--     end
-- end
-- @function helper.shuffle
helper.shuffle = (array) ->

