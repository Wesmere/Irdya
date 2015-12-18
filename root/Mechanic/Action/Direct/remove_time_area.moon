wsl_action
    id: "remove_time_area"

    action: (cfg, wesmere) ->
        id = cfg.id or helper.wsl_error("[remove_time_area] missing required id= key")
        for w in *id
            wesmere.remove_time_area(w)
