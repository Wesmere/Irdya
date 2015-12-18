wsl_action
    id: "store_starting_location"
    description: "Stores the starting location of a side's leader in a variable. The variable is a composite type which will have members 'x', 'y', 'terrain' and 'owner_side' (villages only)"

    action: (cfg, kernel) ->
        writer = utils.vwriter.init(cfg, "location")
        for side in *wesmere.get_sides(cfg)
            loc = wesmere.get_starting_location(side.side)
            if loc
                terrain = wesmere.get_terrain(loc[1], loc[2])
                result = { x: loc[1], y: loc[2], terrain: terrain }
                if wesmere.get_terrain_info(terrain).village
                    result.owner_side = wesmere.get_village_owner(loc[1], loc[2]) or 0
                utils.vwriter.write(writer, result)

    scheme:
        StandardSideFilter:
            description: "The starting locations of all matching sides will be stored. If multiple sides are matched, a WSL array will be created."
        variable:
            description: "(default='location'): the name of the variable to store the location in"
            default: "location"
