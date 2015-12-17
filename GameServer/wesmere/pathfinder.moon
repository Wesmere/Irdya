----
-- This page describes the LuaWML functions and helpers for finding paths.
-- @submodule wesmere

---
-- This pablah blah blah
-- @section Pathfinder

----
-- Returns the shortest path from one location to another.
-- @function wesnoth.find_path
-- @number x1
-- @number y1
-- @number x2
-- @number y2
-- @tparam tab|func path_options The last argument is an optional table that can be used to parametrize the pathfinder.
-- @number path_options.max_cost if set, the pathfinder will ignore paths longer than its value
-- @bool path_options.ignore_units if set, the path will go through units and ignore zones of control
-- @bool path_options.ignore_teleport if set, the teleport ability of the unit is ignored
-- @number path_options.viewing_side if set to a valid side number, fog and shroud for this side will be taken into account; if set to an invalid number (e.g. 0), fog and shroud will be ignored; if left unset, the viewing side will be the unit side
-- @treturn {Location,...} The path is returned as a table of coordinate pairs. It contains both the source and destination tile if a path was found.
-- @treturn number The total cost of the path is also available as a second return value, if needed.
-- @usage -- Display some items along the path from (x1,y1) to (x2,y2).
-- u = wesnoth.get_units({ x: x1, y: y1 })[1]
-- path, cost = wesnoth.find_path(u, x2, y2, { ignore_units: true, viewing_side: 0 })
-- if cost > u.moves then
--     wesnoth.message("That's too far!")
-- else
--     for i, loc in ipairs(path) do
--         wesnoth.fire("item", { x: loc[1], y: loc[2], image: "items/buckler.png" })
-- @usage Instead of a parameter table, a cost function can be passed to the pathfinder. It will be called for all the tiles the computed path may possibly go through. It receives three arguments. The first two are the coordinates of the tile, the last one is the current cost for reaching that tile. The function should return a floating-point value that is the cost for entering the given tile. This cost should be greater or equal to one.
-- Count how many turns it would take, assuming the worst case (3 movement points per tile)
-- max_moves = wesnoth.get_units({ x = x1, y = y1 })[1].max_moves
-- path, cost = wesnoth.find_path(x1, y2, x2, y2,
--     (x, y, current_cost) ->
--         local remaining_moves = max_moves - (current_cost % max_moves)
--         if remaining_moves < 3 then current_cost = current_cost + remaining_moves
--         return current_cost + 3
--     )
-- wesnoth.message(string.format("It would take %d turns.", math.ceil(cost / 3)))

wesnoth.find_path = (x1, y1, x2, y2, [path_options | cost_function]) ->

The source location is given either by coordinates as two arguments x and y; there must be a unit at the source location when using the standard path calculator. The source location can also be given by a unit as a single argument (as returned by the functions from LuaWML:Units). The second location is given by its coordinates.


----
-- Returns the two coordinates of an empty tile the closest to the tile passed by coordinates.
-- @number x
-- @number y
-- @tparam[opt] Unit unit An optional unit (either a WML table or a proxy object) can be passed as a third argument; if so, the returned tile has terrain which is passable for the passed unit.
-- @usage function teleport(src_x, src_y, dst_x, dst_y)
-- u = wesnoth.get_units({x = src_x, y = src_y })[1]
-- ut = u.__cfg
-- dst_x, dst_y = wesnoth.find_vacant_tile(dst_x, dst_y, u)
-- wesnoth.put_unit(src_x, src_y)
-- wesnoth.put_unit(dst_x, dst_y, ut)
wesnoth.find_vacant_tile = (x, y, unit) ->

----
-- Returns all the locations reachable by a unit.
-- @function wesnoth.find_reach
-- @tparam Unit|Location unit The unit is given either by its two coordinates or by a proxy object.
-- @tab[opt] path_options The last argument is an optional table that can be used to parametrize the pathfinder.
-- @number path_options.additional_turns if set to an integer n, the pathfinder will consider tiles that can be reached in n+1 turns
-- @bool path_options.ignore_units if set, the paths will go through units and ignore zones of control
-- @bool path_options.ignore_teleport if set, the teleport ability of the unit is ignored
-- @number path_options.viewing_side: if set to a valid side number, fog and shroud for this side will be taken into account; if set to an invalid number (e.g. 0), fog and shroud will be ignored; if left unset, the viewing side will be the unit side
-- @return The locations are stored as triples in an array. The first two elements of a triple are the coordinates of a reachable tile, the third one is the number of movement points left when reaching the tile.
-- @usage -- overlay the number of turns needed to reach each tile
-- t = wesnoth.find_reach(u, { additional_turns = 8 })
-- m = u.max_moves
-- for l in *t
--    wesnoth.fire("label", { x: l[1], y: l[2], text: math.ceil(9 - l[3]/m) })
wesnoth.find_reach = (unit, path_options) ->








----
-- Builds a cost map for one, multiple units or unit types.
--
-- In a cost map each hex is mapped to two values: a) The summed cost to reach this hex for all input units b) A value which indicates how many units can reach this hex The caller can divide a) with b) to get a average cost to reach this hex for the input units. The costs will consider movement lost during turn changes. (So with simple calculus it is possible to get the turns to reach a hex)
-- wesnoth.find_cost_map
--
Input arguments:
-- @tparam Unit|Location|StandardUnitFilter unit
-- @tparam Location|{thing,...} another_unit unit location|(optional) A array of triples (coordinates + unit type as string)
-- @tab options
-- @bool options.ignore_units
-- @bool options.ignore_teleport
-- @number options.viewing_side
-- @bool options.debug
-- @bool options.use_max_moves
-- @tparam StandardLocationFilter

-- @return A array of quadruples (coordinates + a summed cost + reach count)
1 + 2. A units location
OR 1. A unit
OR 1. A unit filter
2.
3. (optional) A table with options:
4. (optional) A Standard Location Filter.
If the array of unit types is given the units will be added to the first parameter. Use a empty filter or a invalid location to only add unit types.

A location set can be build by calling location.set.of_pairs(retval).

----
-- Returns the distance between two tiles given by their coordinates.
-- @number x1
-- @number x2
-- @number y1
-- @number y2
-- @usage d = distance_between(x1, y1, x2, y2)
helper.distance_between = (x1, x2, y1, y2) ->

----
-- Returns an iterator on the (at most six) tiles around a given location that are on the map. If the third argument is true, tiles on the map border are also visited.
-- @number x
-- @number y
-- @bool[opt] include_border
-- @usage -- remove all the units next to the (a,b) tile
-- for x, y in helper.adjacent_tiles(a, b) do
--     wesnoth.put_unit(x, y)
helper.adjacent_tiles = (x, y, include_border) ->

