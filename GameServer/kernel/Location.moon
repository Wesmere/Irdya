moon = require "moon"
----
-- Specifies one of the Hex Fields on the map.
-- @modclass Location
--
class Location
  ---
  -- Constructor
  -- Usage:
  -- Location(3,5)
  -- Location{ x = 3, y = 5 } 
  -- Location(other_location)
  new: (x, y) =>
    X = nil
    Y = nil
    if y == nil
      if moon.type(x) == Location
        X = x\get_x!
        Y = x\get_y!
      else
        X = x.x
        Y = x.y
    else
      X = x
      Y = y
    assert(type(X) == "number", "Location expects numbers")
    assert(type(Y) == "number", "Location expects numbers")
    @X = X
    @Y = Y

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

