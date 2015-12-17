----
-- @submodule wesmere

----
-- @section Time

-- LuaWML:Time
-- LuaWML functions revolving around Time of Day schedule functionality, including time areas.

----
-- time_of_day table
-- @tfield string id string (as in [time])
-- @tfield number lawful_bonus integer (as in [time])
-- @tfield number bonus_modified integer (bonus change by units)
-- @tfield string image string (tod image in sidebar)
-- @tfield tstring name translatable string
-- @tfield number red
-- @tfield number green
-- @tfield number blue integers (color adjustment for this time)
-- @table time_of_day

----
-- @function wesmere.get_time_of_day
-- @number[opt] for_turn First parameter (optional) is the turn number for which to return the information, if unspecified: the current turn ($turn_number).
-- @tparam[opt] {number,number,bool} Second argument is an optional table. If present, first and second fields must be valid on-map coordinates and all current time_areas in the scenario are taken into account (if a time area happens to contain the passed hex). If the table isn't present, the scenario main schedule is returned. The table has an optional third parameter (boolean). If true (default: false), time of day modifying units and terrain (such as Mages of Light or lava) are taken into account (if the passed hex happens to be affected). The units' placement being considered is always the current one.
-- @treturn time_of_day The function returns a time of day table.
-- @usage wesmere.get_time_of_day(2, { 37, 3, true })
wesmere.get_time_of_day = ([for_turn], [ {x, y, [consider_illuminates]} ]) ->

----
-- Creates a new time area. This takes a WML table containing the same information normally used by the 'time_area' table.
-- @function wesmere.add_time_area
-- @tab cfg
wesmere.add_time_area = (cfg) ->

----
-- Removes a time area. This requires the time area to have been assigned an id at creation time.
-- @function wesmere.remove_time_area
-- @string id of the area to remove
-- @usage for id in *({'foo', 'bar', 'baz'})
--    wesmere.remove_time_area(id)
wesmere.remove_time_area = (id) ->
