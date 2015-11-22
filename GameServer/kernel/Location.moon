moon = require "moon"
----
-- Specifies one of the Hex Fields on the map.
-- @modclass Location
--
class Location

  --
  --
  -- process_args = (x, y) ->
  --   switch moon.type(x)
  --     when "number"
  --       unless type(y) == "number"
  --         error("Missing second arguement 'y'")
  --       return x,y
  --     when Location
  --       return x.x, x.y
  --     when "table"
  --       if loc = x.loc
  --         return process_args(loc)
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
    --@x, @y = process_args(x, y)
    error("Location: X component not a mumber") unless type(@x) == "number"
    error("Location: Y component not a mumber") unless type(@y) == "number"
  ----
  -- to string method
  -- @return a human readable representation
  __tostring: =>
    return "(#{@x}/#{@y})"

return Location
