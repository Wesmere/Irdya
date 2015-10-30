wsl_config
  name: "scenario"
  scope: "Scenario"
  on_load: (cfg) ->
    state.Scenario[cfg.id] = cfg
  on_scan: (cfg, file, path) ->
    state.Registry.scenarios[cfg.id] = false
