wsl_config
    name: "terrain_type"
    scope: "Terrain"
    on_scan: (cfg) ->
    on_load: (cfg) ->
        state.Terrain.terrain_type[cfg.id] = cfg
