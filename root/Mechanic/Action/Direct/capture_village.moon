wsl_action
    id: "capture_village"
    description: "Changes the ownership of a village."

    action: (cfg, wesmere) ->
        side = cfg.side
        filter_side = cfg.filter_side
        fire_event = cfg.fire_event

        if filter_side
            if side then helper.wsl_error("duplicate side information in 'capture_village'")
            side = wesmere.get_sides(filter_side)[1]
            if side then side = side.side

        locs = wesmere.get_locations(cfg)
        for loc in *locs
            wesmere.set_village_owner(loc[1], loc[2], side, fire_event)

    scheme:
        filter_location:
            description: "StandardLocationFilter: all village locations matching the filter are affected."
            type: "table"
            table: "StandardLocationFilter"

        side:
            description: "the side that takes control of the village. This side needs to have a leader (canrecruit=yes). If the side key is not given, the village will become neutral (unless 'filter_side' is present, in which case that side fiter decides, see below)."

        filter_side:
            description: "with StandardSideFilter tags and keys as arguments; if both this tag and inline side= are present it's an error. Otherwise, the first matching side gets ownership (or the village becomes neutral if none match)."

        fire_event:
            description: "Whether any capture events shall be fired."
            default: false
            type: "bool"

    return:
        description: "The location of all villages that got the ownership transfered."
        type: "Location"
        list: true
