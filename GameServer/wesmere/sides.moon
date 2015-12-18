---
-- @submodule wesmere

-- LuaWSL:Sides
-- This page describes the LuaWSL functions and helpers for handling sides and villages.

----
-- This is not a function but a table indexed by side numbers.
-- Its elements are proxy tables with these fields:
-- The metatable of these proxy tables appears as "side".
-- @usage side = wesmere.sides[1]
-- side.gold += 50
-- wesmere.message(string.format("%d sides", #wesmere.sides))
-- @table wesmere.sides
-- @number side the side number
-- @number gold
-- @number village_gold
-- @number base_income integers (read/write)
-- @number total_income integer (read only)
-- @tfield tstring objectives
-- @tfield tstring user_team_name translatable strings (read/write)
-- @bool objectives_changed (read/write)
-- @string team_name: string (read/write)
-- @string controller: string (read/write) possible values: human, network, ai, network_ai, null, idle. note: In networked multiplayer, the controller attribute is ambiguous. Be very careful or you have OOS errors. A local human should always be "human", a local ai should always be "ai", a remote human should always be "network". and a remote ai should always be "network_ai". An empty side should be null on all clients. An idle side should appear similarly as a "human" side for all sides that don't own the idle side, i.e. as "network". These values may be checked using lua, or the :controller command in game. This value can only be set to 'human', 'ai' or 'null'.
-- @bool fog (read)
-- @bool shroud (read)
-- @bool hidden (read/write)
-- @string name (read)
-- @string color (read/write)
-- @tparam {string,...} recruit (read/write)
-- @bool scroll_to_leader (read/write)
-- @string village_support (read/write)
-- @string flag (read)
-- @string flag_icon (read)
-- @string defeat_condition (read/write) See description at SideWSL, ScenarioWSL#Scenario_End_Conditions
-- @bool lost (read/write) If lost=true this side will be removed from the persitent list at the end of the scenario. This key can also be used to stop the engine from removing a side by setting it to false. Writing this key only works in a victory/defeat event.
-- @tab __cfg WSL table (dump)

----
-- Returns a table array containing proxy tables for these sides matching the passed StandardSideFilter.
-- @function wesmere.get_sides
-- @usage -- set gold to 0 for all sides with a leader
-- sides = wesmere.get_sides({ {"has_unit", { can_recruit: true }} })
-- for v in *sides
--    v.gold = 0
wesmere.get_sides = (filter) ->


----
-- @function wesmere.get_village_owner
-- @number x
-- @number y
-- @treturn number the side that owns the village at the given location.
-- @usage owned_by_side_1 = wesmere.get_village_owner(12, 15) == 1
wesmere.get_villlage_owner = (x, y) ->

---
-- Gives ownership of the village at the given location to the given side (or remove ownership if none). Ownership is also removed if nil or 0 is passed for the third parameter, but no capture events are fired in this case. An optional 4th parameter (boolean true|false, default: false) can be passed determining whether to fire any capture events.
-- @function wesmere.set_village_owner
-- @number x
-- @number y
-- @number side
-- @bool[opt] fire_events
-- @usage wesmere.set_village_owner(12, 15, 1)
wesmere.set_vilage_owner = (x, y, side, [fire_events]) ->

---
-- Returns true if sideA is enemy of sideB, false otherwise.
-- @function wesmere.is_enemy
-- @number sideA
-- @number sideB
-- @treturn bool
-- @usage enemy_flag = wesmere.is_enemy(1, 3)
wesmere.is_enemy = (sideA, sideB) ->

----
-- Matches a side against a given StandardSideFilter.
-- @function wesmere.match_side
-- @usage wesmere.message(tostring(wesmere.match_side(1, {{"has_unit", { type = "Troll" }}})))
wesmere.match_side = (side, filter) ->

----
-- Returns the starting location of the given side.
-- @function wesmere.get_starting_location
-- @usage loc = wesmere.get_starting_location(1)
-- wesmere.message(string.format("side 1 starts at (%u, %u)", loc[1], loc[2]))
wesmere.get_starting_location = (side) ->

----
-- Returns an iterator over teams that can be used in a for-in loop.
-- @function helper.all_teams
-- @usage for team in helper.all_teams() do team.gold = 200
helper.all_teams = () ->
