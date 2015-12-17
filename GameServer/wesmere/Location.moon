----
-- A wrapper around the coordinate tuple of a hex field.
-- @classmod Location


moon = require "moon"

bit32 = require "bit32"

--- The fields of the Location table
-- @table self
-- @tfield number x the x coordinate
-- @tfield number y the y coordinate

class Location

  -- DIRECTION: { NORTH, NORTH_EAST, SOUTH_EAST, SOUTH, SOUTH_WEST, NORTH_WEST, NDIRECTIONS}



  -- bool matches_range(const std::string& xloc, const std::string& yloc) const;


  process_args = (x, y) ->
    switch moon.type(x)
      when "number"
        unless type(y) == "number"
          error("Missing second arguement 'y'")
        return x,y
      when Location
        return x.x, x.y
      when "table"
        return x.x, x.y

      --   if loc = x.loc
      --     return process_args(loc)
      --   if X = x.x
      --     unless Y = x.y
      --       error("Missing y key")
      --     return X, Y
      --   elseif @X = x[1]
      --     unless @Y = x[2]
      --       error("Missing second 'y' argument")
      --     return
      --   else
      --     error("not a location")

  ----
  -- Method which will return all adjacent locations.
  -- @tparam Location self
  -- @treturn {[direction]=Location} The 6 adjacent hex field locations.
  adjacents: () =>
    foo = bit32.band(@x, 1)
    bar = 1 - foo
    return {
      NORTH: Location(@x, @y - 1)
      SOUTH: Location(@x, @y + 1)
      NORTH_WEST: Location(@x - 1, @y - foo)
      NORTH_EAST: Location(@x + 1, @y - foo)
      SOUTH_WEST: Location(@x - 1, @y + bar)
      SOUTH_EAST: Location(@x + 1, @y + bar)
    }


--     inline size_t distance_between(const map_location& a, const map_location& b)
-- {
--     const size_t hdistance = std::abs(a.x - b.x);

--     const size_t vpenalty = ( (((a.x & 1)==0) && ((b.x & 1)==1) && (a.y < b.y))
--         || (((b.x & 1)==0) && ((a.x & 1)==1) && (b.y < a.y)) ) ? 1 : 0;

-- /* Don't want to include util.hpp in this header
--     const size_t vpenalty = ( (is_even(a.x) && is_odd(b.x) && (a.y < b.y))
--         || (is_even(b.x) && is_odd(a.x) && (b.y < a.y)) ) ? 1 : 0;
-- */
--     // For any non-negative integer i, i - i/2 - i%2 == i/2
--     // previously returned (hdistance + vdistance - vsavings)
--     // = hdistance + vdistance - minimum(vdistance,hdistance/2+hdistance%2)
--     // = maximum(hdistance, vdistance+hdistance-hdistance/2-hdistance%2)
--     // = maximum(hdistance,std::abs(a.y-b.y)+vpenalty+hdistance/2)

--     return std::max<int>(hdistance, std::abs(a.y - b.y) + vpenalty + hdistance/2);
-- }


  ----
  -- Constructor
  -- @tparam Location self
  -- @tparam number|Location|tab x
  -- @tparam number y
  -- @usage Location({ 3, 5})
  -- @usage Location(3,5)
  -- @usage Location{ x: 3, y: 5 }
  -- @usage Location{ loc: { 3, 5} }
  -- @usage Location{ loc: Location}
  -- @usage Location{ loc: { x: 3, y: 5} }
  -- @usage Location(other_location)
  new: (x, y) =>
    @x, @y = process_args(x, y)
    error("Location: X component not a mumber") unless type(@x) == "number"
    error("Location: Y component not a mumber") unless type(@y) == "number"

  ----
  -- to string method
  -- @tparam Location self
  -- @treturn string a human readable representation
  __tostring: =>
    return "(#{@x}/#{@y})"

  ----
  -- equal thingy
  -- @tparam Location self
  -- @tparam Location other
  __eq: (other) =>
    return false if @x != other.x
    return false if @y != other.y
    return true

return Location
