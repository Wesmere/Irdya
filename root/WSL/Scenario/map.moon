wsl_config
    name: "map"
    scope: "Scenarios"
    on_load: (cfg) ->
        state.Map[cfg.id] = cfg
    on_scan: (cfg, file, path) ->
        state.Registry.maps[cfg.id] =
            loaded: false
            path: path
