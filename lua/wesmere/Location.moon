----
-- A wrapper around the coordinate tuple of a hex field.
-- @classmod Location

moon  = require "moon"
bit32 = require "bit32"
HasGetters = require "HasGetters"

----
-- The fields of the Location table
-- @table self
-- @tfield number x the x coordinate
-- @tfield number y the y coordinate

----
-- The location class is mostly meant to isolate coordination quickly from a table.
-- Whenever you implement a wsl_action, don't look for x,y or loc keys but just feed the Location constructor the wsl_action's argument table.
-- @usage loc = Location(cfg) -- gives us a location no matter
class Location extends HasGetters
    getters:
        [1]: =>
            @x
        [2]: =>
            @y

    ----
    -- Match the location against a pair of location ranges.
    -- @string x_range
    -- @string y_range
    -- @treturn bool whether the location matches the given coordination ranges.
    matches_range: (x_range, y_range) =>
        min_x, max_x = x_range\match("([%d]+)%-([%d]+)")
        return false if @x < tonumber(min_x) or @x > tonumber(max_x)
        min_y, max_y = y_range\match("([%d]+)%-([%d]+)")
        return false if @y < tonumber(min_y) or @y > tonumber(max_y)

        return true

    --
    -- used internally only
    process_args = (x, y) ->
        switch moon.type(x)
            when "number"
                unless type(y) == "number"
                    error("Missing second arguement 'y'")
                return x,y
            when Location
                return x.x, x.y
            when "table"
                if x.x and x.y
                    return x.x, x.y
                return x[1], x[2]

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

    is_even = (number) ->
        return (number % 2 == 0)

    ----
    -- Returns the distance between two tiles given by their WSL coordinates.
    -- @number x
    -- @number y
    -- @treturn number the distance
    distance_between: (x, y) =>
        hdist = math.abs(x - @x)
        vdist = math.abs(y - @y)
    	if (y < @y and not is_even(x) and is_even(@x)) or (@y < y and not is_even(@x) and is_even(x))
    	    vdist = vdist + 1
    	return math.max(hdist, vdist + math.floor(hdist / 2))

    ----
    -- Syntactic sugar for distance_between
    -- @usage dist = loc_a - loc_b
    -- @treturn number the distance
    -- @see distance_between
    -- @tparam Location other
    __sub: (other) =>
        return @distance_between(other.x, other.y)

    ----
    -- Constructor
    -- @tparam Location self
    -- @tparam number|Location|tab x
    -- @tparam number y
    -- @usage Location({ 3, 5})
    -- @usage Location(3,5)
    -- @usage Location{ x: 3, y: 5 }
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
    -- equal thingy aka compare
    -- @tparam Location self
    -- @tparam Location other
    __eq: (other) =>
        return false if @x != other.x
        return false if @y != other.y
        return true

return Location
