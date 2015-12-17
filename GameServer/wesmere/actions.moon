----
-- @module wesmere

-- LuaWML:Events
-- This page describes the LuaWML functions and helpers for interacting with events and action handlers.

----
-- Fires a WML action.
-- @function wesnoth.fire
-- @string wml_action_name the name of the action.
-- @tab wml_action_contents the WML table describing the action. Note: WML variables are substituted.
-- @usage wesnoth.fire("message", { speaker="narrator", message=_ "Hello World!" })
wesnoth.fire = (wml_action_name, wml_action_contents) ->

----
-- This is not a function but an associative table indexed by WML action names. It contains functions performing the corresponding actions. Using these functions is similar to calling #wesnoth.fire, while setting entries of the table is similar to calling #wesnoth.register_wml_action.
-- Note: When calling an action handler directly through its function stored in wesnoth.wml_actions, the engine is not involved. As a consequence, whether variable substitution will happen is up to the handler. In particular, if the argument is a plain table, the caller should have substituted WML variables beforehand to be on the safe side. Moreover, table arguments might be modified by the action handler, so they should usually not be reused for consecutive calls. If variable substitution should happen and/or table content should be preserved, one can call #wesnoth.tovconfig and pass its result to the handler. Calling #wesnoth.fire is another possibility.
-- @table wesnoth.wml_actions
-- @usage function wesnoth.wml_actions.freeze_unit(cfg)
--     local unit_id = cfg.id or helper.wml_error "[freeze_unit] expects an id= attribute."
--     helper.modify_unit({ id = unit_id }, { moves = 0 })
-- -- The new tag can now be used in plain WML code.
-- [freeze_unit]
--    id=Delfador
-- [/freeze_unit]
-- @usage You can override functions already assigned to the table. This is useful if you need to extend functionality of core tags. For instance, the following script overrides the [print] tag so that messages are displayed with a bigger font.
-- function wesnoth.wml_actions.print(cfg)
--   cfg.size = (cfg.size or 12) + 10
--   wml_actions.print(cfg)


----
-- This is an associative table like wesnoth.wml_actions. You can use it to define new conditional wml tags that will be recognized in WML when using [if], [show_if], [while], etc., or more generally when wesnoth.eval_conditional is run.
-- @table wesnoth.wml_conditionals
-- @usage function wesnoth.wml_conditionals.foo(cfg)
--      local bar = cfg.bar or error("[foo] tag did not have 'bar' attribute")
--      return (bar == "baz")
-- @usage If this lua code is executed, it would make the following syntax be valid WML in your add-on:
-- [if]
--    [foo]
--       bar = $X
--    [/foo]
--    [then]
--       [message]
--          ...
--       [/message]
--    [/then]
-- [/if]
-- You cannot override the meaning of any core conditional tags.

----
-- This is not a function but an associative table indexed by engine action names. It contains function hooks the engine calls whenever it performs a particular action.
-- The on_save and on_load hooks can be used to manipulate data that are neither meant to be forwarded to the next level nor substituted on the fly. (For either of these two purposes, WML variables are the best choice.) For instance, toplevel tags like [item], [event], [time_area], and so on, could typically be handled by such hooks.
-- @table wesnoth.game_events
-- @func on_save: function called when the engine (auto)saves a scenario file; it should return a WML table and the children of this table are added to the savefile.
-- @func on_load: function called when the engine loads a scenario file; its argument is a WML table that contains all the children of the savefile that the engine did not handle.
-- @func on_event: function called before each WML event is executed; its argument is the event name; other event arguments can be recovered from wesnoth.current.event_context.
-- some value that survives save/load cycles, but that is not forwarded to the next level
-- @usage level_local_data = 0
-- local old_on_load = wesnoth.game_event.on_load
-- function wesnoth.game_event.on_load(cfg)
--     for i = 1,#cfg do
--         if cfg[i][1] == "my_data" then
--             -- recover the value stored in the savefile
--             level_local_data = cfg[i][2].value
--             -- erase the child, since it has been handled
--             table.remove(cfg, i)
--             break
--         end
--     end
--     -- call the previous hook, in case there are still some containers in the savefile
--     old_on_load(cfg)
-- local old_on_save = wesnoth.game_events.on_save
-- function wesnoth.game_events.on_save()
--     -- call the previous hook, in case it had some containers to store
--     local cfg = old_on_save()
--     -- add our own container to them
--     table.insert(cfg, { "my_data", { value = level_local_data } })
--     -- tell the engine to store them in the savefile
--     return cfg
Note: since the on_load hook is called very early in the scenario, it cannot be set inside a [lua] tag in an [event], not even a preload one. It has to be set inside a [lua] tag outside or at [scenario] level.

Note: Some tag names are reserved for engine use and should not be modified using the above on_save/on_load method. These tag names are:
"color_palette", "color_range", "era", "event", "generator",
"label", "lua", "menu_item", "music", "side", "sound_source", "story",
"terrain_graphics", "time", "time_area", "tunnel", "variables"
Note: a on_event handler will not prevent undoing of that event, so usually you need to add an event to diallow undo to prevent OOS. You can add an event handler for that event inside a on_event callback. A possible way to define a disallow_undo function is:
function disallow_undo()
	wesnoth.wml_actions.event { name = wesnoth.current.event_context.name }
end
Which should then be called from every on_event callback which changes the gamestate.

----
-- Fires all the WML events with the given name. Optional parameters allow passing two locations and two tables. These parameters will be matched against the [filter], [filter_second], [filter_attack], and [filter_second_attack] of any event handler, and are used to fill the WML variables "unit", "second_unit", "weapon", and "second_weapon". These parameters can also be read through current.event_context.
-- @function wesnoth.fire_event
-- @string event_name
-- @number x1
-- @number y1
-- @number x2
-- @number y2
-- @number first_weapon
-- @number second_weapon
-- @treturn bool The function returns a boolean indicating whether the game state was modified.
-- @usage wesnoth.fire_event("explosion", 17, 42, { damage = "fire" })
wesnoth.fire_event = (event_name, [x1, y1, [x2, y2]], [first_weapon, [second_weapon]]) ->

----
-- Registers a new event handler. This takes a WML table containing the same information normally used by the [event] tag.
-- @function wesnoth.add_event_handler
wesnoth.add_event_handler = (cfg) ->

----
-- Removes an event handler. This requires the event handler to have been assigned an id at creation time.
-- @function wesnoth.remove_event_handler
-- @string id
wesnoth.remove_event_handler = (id) ->

----
-- Returns true if the conditional described by the WML table passes. Note: WML variables are substituted.
-- wesnoth.eval_conditional
-- @usage result = wesnoth.eval_conditional {
--   { "have_unit", { id: "hero" } }
--   { "variable", { name: "counter", numerical_equals: "$old_counter" } }
-- }
wesnoth.eval_conditional = (conditional_tags) ->


----
-- Converts a WML table into a proxy object which performs variable substitution on the fly.
-- @function wesnoth.tovconfig
wesnoth.tovconfig = (config) ->
-- @usage wesnoth.set_variable("varname", "to_be_deleted")
-- wesnoth.wml_actions.clear_variable { name = "to_be_deleted" }              -- correct
-- wesnoth.wml_actions.clear_variable { name = "$varname" }                    -- error: try to delete a variable literally called "$varname"
-- wesnoth.wml_actions.clear_variable(wesnoth.tovconfig { name: "$varname" }) -- correct: "$varname" is replaced by "to_be_deleted" at the right time

----
-- @function helper.set_wml_action_metatable
helper.set_wml_action_metatable = () ->
-- Sets the metatable of a table so that it can be used to fire WML actions. Returns the table. The fields of the table are then simple wrappers around a call to #wesnoth.fire.
-- @usage W = helper.set_wml_action_metatable {}
-- W.message { speaker = "narrator", message = "?" }

----
-- Interrupts the current execution and displays a chat message that looks like a WML error.
-- @function helper.wml_error
-- @usage names = cfg.name or helper.wml_error("[clear_variable] missing required name= attribute.")
helper.wml_error = (message) ->

----
-- Returns the __literal field of its argument if it is a userdata, the argument itself otherwise. This function is meant to be called when a WML action handler can be called indifferently from WML (hence receiving a userdata) or from Lua (hence possibly receiving a table).
-- Note: when the argument is a plain table, the function returns it as is. In particular, modifying the fields of the returned table causes the original table to be modified too.
-- @function helper.literal
-- @usage function wml_actions.display_literal_value(cfg)
--     cfg = helper.literal(cfg)
--     wesnoth.message(tostring(cfg.value))
helper.literal = (config) ->

----
-- Returns the __parsed field of its argument if it is a userdata, the argument itself otherwise. See also #helper.literal.
-- @function helper.parsed
helper.parsed = (config) ->

----
-- Returns the __shallow_literal field of its argument if it is a userdata, the argument itself otherwise. See also #helper.literal.
-- @function helper.shallow_literal
helper.shallow_literal = (config) ->

----
-- Returns the __shallow_parsed field of its argument if it is a userdata, the argument itself otherwise. See also #helper.literal.
-- @function helper.shallow_parsed
helper.shallow_parsed = (config) ->
