wsl_action
    id: "unhide_unit"
    description: "Stops the currently hidden units from being hidden."

    scheme:
        StandardUnitFilter:
            description: "Only the matching units will be unhidden"

    action: (cfg, wesnoth) ->
        for u in *wesnoth.get_units(cfg)
            u.hidden = false
        wml_actions.redraw {}
