
wsl_action
    id: "unpetrify"
    description: ""

    action: (cfg, kernel) ->
        for unit in *wesnoth.get_units(cfg)
            unit.status.petrified = false
            -- Extract unit and put it back to update animation (not needed for recall units)
            wesnoth.extract_unit(unit)
            wesnoth.put_unit(unit)

        for unit in *wesnoth.get_recall_units(cfg)
            unit.status.petrified = false

    scheme:
        StandardUnitFilter:
            description: "as an argument. Do not use a [filter] tag. All units matching this filter are unpetrified. Recall list units are included."
