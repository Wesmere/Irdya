wsl_config
  name: "move_type" 
  scope: "Units"
  on_scan: (cfg) ->
  on_load: (cfg) ->
    --assert(cfg.id)
    state.Units.move_type[cfg.id] = cfg
