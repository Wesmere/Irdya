wsl_action
    id: "store_locations"
    description: [[Stores a series of locations that pass certain criteria into an array. Each member of the array has members 'x' and 'y' (the position) and 'terrain' (the terrain type) and 'owner_side' (villages only). The array will include any unreachable border hexes, if applicable.]]

    action: (cfg, wesnoth) ->
        locs = wesnoth.get_locations(cfg)
        result = for loc in *locs
            X = loc.x
            Y = loc.y
            {
                x: X
                y: Y
                terrain: wesnoth.get_terrain(X, Y)
                owner_side: wesnoth.get_village_owner(X, Y) or 0
                unit: wesnoth.get_unit(X, Y)
            }
        if variable = cfg.variable
            _G[variable] = result
        return result

        -- the variable can be mentioned in a [find_in] subtag, so it
        -- cannot be cleared before the locations are recovered

    scheme:
        variable:
            description: [[the name of the variable (array) into which to store the locations.]]
            type: "String"
        filter_location:
            description: [[StandardLocationFilter: a location or location range which specifies the locations to store. By default, all locations on the map are stored.]]



