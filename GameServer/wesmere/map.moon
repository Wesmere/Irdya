----
-- LuaWSL:Tiles
-- This page describes the LuaWSL functions for handling terrains and tiles. The items library can be loaded by
-- @usage items = wesmere.require "lua/wsl/items.lua"
-- @submodule wesmere

----
-- Returns the width, the height, and the border size of the map.
-- @function wesmere.get_map_size
-- @usage w,h,b = wesmere.get_map_size!
-- @treturn number w
-- @treturn number h
-- @treturn number b
wesmere.get_map_size = () ->

----
-- Returns the terrain code for the given location.
-- @tparam number x
-- @tparam number y
-- @usage is_grassland = wesmere.get_terrain(12, 15) == "Gg"
wesmere.get_terrain = (x, y) ->

----
-- Modifies the terrain at the given location.
-- wesmere.set_terrain
-- @number x
-- @number y
-- @string terrain_code
-- @string[opt] layer An optional 4th parameter can be passed (layer): overlay, base or both, default both: Change the specified layer only.
-- @bool[opt] replace_if_failed An optional 5th boolean parameter (replace_if_failed) can be passed, see the documentation of the 'terrain' table. To pass the 5th parameter but not the 4th, pass nil for the 4th.
-- @usage create_village = (x, y) ->
--     wesmere.set_terrain(x, y, "Gg^Vh")
wesmere.set_terrain = (x, y, terrain_code, layer, replace_if_failed) ->

----
-- Returns the terrain details for the given terrain code.
-- @function wesmere.get_terrain_info
-- @string terrain_code
-- @usage is_keep = wesmere.get_terrain_info(wesmere.get_terrain(12, 15)).keep
-- @treturn {id=string,name=tstring,description=tstring,editor_name=tstring,castle=bool,keep=bool,village=bool,healing=number} Terrain info is a plain table.
wesmere.get_terrain_info = (terrain_code) ->

----
-- Returns the two coordinates of the currently selected tile. This is mostly useful for defining command-mode helpers.
-- @function wesmere.get_selected_tile
-- @treturn number x
-- @treturn number y
-- @usage chg_unit = (attr, val) ->
--    x, y = wesmere.get_selected_tile()
--    if not x then wesmere.message("Error", "No unit selected."); return
--    helper.modify_unit({ x = x, y = y }, { [attr]: val })
-- Function chg_unit can be used in command mode to modify unit attributes on the fly:
--   :lua chg_unit("status.poisoned", true)
wesmere.get_selected_tile = () ->

----
-- Returns a table containing all the locations matching the given filter. Locations are stored as pairs: tables of two elements.
-- @function wesmere.get_locations
-- @tparam StandardLocationFilter See StandardLocationFilter for details about location filters.
-- @treturn {Location,...} The matching locations
-- @usage -- replace all grass terrains by roads
-- for loc in *wesmere.get_locations { terrain: "Gg" }
--     wesmere.set_terrain(loc[1], loc[2], "Rr")
wesmere.get_locations = (filter) ->

----
-- This function, when called without arguments, returns a table containing all the villages present on the map (as tables of two elements). If it's called with a WSL table as argument, a table containing only the villages matching the supplied StandardLocationFilter is returned.
-- @function wesmere.get_villages
-- @tparam[opt] StandardLocationFilter filter
-- @treturn {Location,...}
-- @usage -- How many villages do we have on our map?
-- v = #wesmere.get_villages!
wesmere.get_villages = (filter) ->

----
-- Returns true if the given location passes the filter.
-- wesmere.match_location
-- @number x
-- @number y
-- @tparam StandardLocationFilter filter
-- @usage b = wesmere.match_location(x, y, { terrain: "Ww", { "filter_adjacent_location", terrain: "Ds,*^Bw*" } })
wesmere.match_location = (x, y, filter) ->

----
-- Places a tile overlay (either an image or a halo) at a given location. The overlay is described by a table supporting the same fields as [item]. Note that the overlay is not kept over save/load cycles.
-- @function wesmere.add_tile_overlay
-- @usage wesmere.add_tile_overlay(17, 42, { image: "items/orcish-flag.png" })
wesmere.add_tile_overlay = (x, y, item_wsl) ->

----
-- Removes all the overlays at the given location. If a filename is passed as a third argument, only this overlay (either image or halo) is removed.
-- @function wesmere.remove_tile_overlay
-- @number x
-- @number y
-- @string[opt] filename
-- @usage wesmere.remove_tile_overlay(17, 42, "items/orcish-flag.png")
wesmere.remove_tile_overlay = (x, y, filename) ->

----
-- Places an image at a given location and registers it as a WSL [item] would do, so that it can be restored after save/load.
-- @function items.place_image
-- @number x
-- @number y
-- @string filename
-- @usage items = wesmere.require "lua/wsl/items.lua"
-- items.place_image(17, 42, "items/orcish-flag.png")
items.place_image = (x, y, filename) ->

----
-- Behaves the same as #items.place_image but for halos.
-- @function items.place_halo
-- @number x
-- @number y
-- @string filename
items.place_halo = (x, y, filename) ->

----
-- Removes an overlay set by #items.place_image or #items.place_halo. If no filename is provided, all the overlays on a given tile are removed.
-- @function items.remove
-- @number x
-- @number y
-- @string[opt] filename
-- @usage items.remove(17, 42, "items/orcish-flag.png")
items.remove = (x, x, filename) ->
