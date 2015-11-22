wsl_action
    id: "store_map_dimensions"
    description: [[Stores the map dimensions in a variable.]]

    action: (cfg, kernel) ->
        dimensions =
            width: #kernel.board.map
            height: #kernel.board.map[1]
        _G[cfg.variable] = dimensions
        return dimensions

    scheme:
        variable:
            description: [[the name of the variable where the values will be saved into. If it is skipped, a variable 'map_size' is used, and its contents overridden, if they existed already. The result is a container variable, with members width and height.]]
            type: "String"
            default: "map_size"
