moon = require "moon"
----
-- Specifies one of the Hex Fields on the map.
-- @modclass Location
--
class Location

  -- TODO make private
  -- process_args: (x, y) =>
  --   switch moon.type(x)
  --     when "number"
  --       unless @Y = y
  --         error("Missing second arguement 'y'")
  --       @X = x
  --       return
  --     when Location
  --       @X = x\get_x!
  --       @Y = x\get_y!
  --       return
  --     when "table"
  --       if loc = x.loc
  --         process_args(loc)
  --         return
  --       if @X = x.x
  --         unless @Y = x.y
  --           error("Missing y key")
  --         return
  --       elseif @X = x[1]
  --         unless @Y = x[2]
  --           error("Missing second 'y' argument")
  --         return
  --       else
  --         error("not a location")
  ---
  -- Constructor
  -- Usage:
  -- Location({ 3, 5})
  -- Location(3,5)
  -- Location{ x: 3, y: 5 }
  -- Location{ loc: { 3, 5} }
  -- Location{ loc: Location}
  -- Location{ loc: { x: 3, y: 5} }
  -- Location(other_location)
  new: (x, y) =>
    @X = {}
    @Y = {}
    -- process_args(x, y)
    error("Location: X component not a mumber") unless type(@X) == "number"
    error("Location: Y component not a mumber") unless type(@Y) == "number"

  get_x: =>
    return @X

  get_y: =>
    return @Y

  ----
  -- to string method
  -- @return a human readable representation
  __tostring: =>
    return ("(" .. @X .. "/" .. @Y .. ")")

return Location

