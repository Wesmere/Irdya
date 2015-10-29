
moon = require "moon"
Set = require "pl.Set"

Location = require "kernel/Location"

----
--
-- @classmod Unit
class Unit
  ---
  -- Constructor
  -- @param cfg
  new: (cfg) =>
    @data = cfg

  ---
  -- Prints the table containing all the unit's data
  debug: =>
    moon.p(@data)

  ---
  -- Get the defense propability value
  -- @param terrain optional terrain
  -- @return propability of defense on @terrain
  defense: (terrain) =>
    log.warn("Not implemented yet")

  ---
  -- Get the movement consts
  -- @param terrain optional terrain
  -- @return movement costs on @terrain
  movement_cost: (terrain) =>
    log.warn("Not implemented yet")

  ---
  -- Return the terrain the unit is currenty on
  terrain: =>
    log.warn("Not implemented yet")

  ---
  -- Return the position of the unit
  -- @return Location of the unit
  loc: =>
    log.warn("Not implemented yet")

  ---
  -- @return iff the filter matched
  -- @param f table or function unit -> bool
  -- @param f.id unit matches the given id. Can be a list.
  filter: (f) =>

    kernel = require("Kernel/MoonScript/Kernel")!

    -- assert(type(f) == "function" or type(f) == "table")
    -- return f(@) if type(f) == "function"
--special ones
    -- defense: current defense of the unit on current tile
    -- (chance to hit %, like in movement type definitions)
    if f.defense
      return false if Set(f.defense)[@defense!]
    if f.movement_cost
      return false if Set(f.movement_cost)[@movement_cost!]
    --find_in: name of an array or container variable; if present, the unit will not match unless it is also found stored in the variable
    items = { id: true, speaker: true, type: true }
    if f.id
      return false if Set(f.id)[@data.id]
    if f.speaker
      return false if Set(f.speaker)[@data.id]
    if f.type
      return false if Set(f.type)[@data.type]
    -- TODO implement table filter
    return true

  __tostring: =>
    return("id: " .. @data.id)

return Unit
