wsl_handler
    id: "era"
    --scope: "WesMods"
    --on_scan: (cfg, file, path) ->
    --    state.WesMods.eras[cfg.id] =
    --        path: path
    --        loaded: false
    --on_load: (cfg) ->
    --    state.Eras.eras[cfg.id] = cfg
