wsl_action
    id: "unit"
    action: (cfg, kernel) ->
        return kernel\create_unit(cfg)

