wsl_table
    id: "unit_type"
    scope: "Units"
    on_scan: (cfg) ->
        --state.Registry.unit_type[cfg.id] = false
    on_load: (cfg) ->
        state.Units.unit_type[cfg.id] = cfg

