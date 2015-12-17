wsl_action
    id: "remove_time_area"

    action: (cfg, wesnoth) ->
        id = cfg.id or helper.wml_error("[remove_time_area] missing required id= key")
        for w in *id
            wesnoth.remove_time_area(w)
