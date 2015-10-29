wsl_config
  name: "race" 
  scope: "Units"
  on_scan: (cfg) ->
  on_load: (cfg) ->
    state.Units.race[cfg.id] = cfg
