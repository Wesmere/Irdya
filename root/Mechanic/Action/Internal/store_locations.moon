wsl_action
    id: "store_locations"
    description: [[Stores a series of locations that pass certain criteria into an array. Each member of the array has members 'x' and 'y' (the position) and 'terrain' (the terrain type) and 'owner_side' (villages only). The array will include any unreachable border hexes, if applicable.]]

    action: (cfg, kernel) ->
        result = {}
        locs = kernel\get_locations(cfg)
        for i, loc in ipairs locs
            X = loc.x
            Y = loc.y
            result[i] =
                x: X
                y: Y
                terrain: kernel.board.map[X][Y]
                owner_side: kernel.board.villages[X][Y]
                unit: kernel.board.units[X][Y]
        if variable = cfg.variable
            _G[variable] = result
        return result

    scheme:
        variable:
            description: [[the name of the variable (array) into which to store the locations.]]
            type: "String"
        filter:
            description: [[StandardLocationFilter: a location or location range which specifies the locations to store. By default, all locations on the map are stored.]]
