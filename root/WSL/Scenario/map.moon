wsl_handler
    id: "map"
    scope: "Scenario"

    --on_load: (cfg) ->
    --    state.Map[cfg.id] = cfg
    --on_scan: (cfg, file, path) ->
      --  state.Registry.maps[cfg.id] =
        --    loaded: false
        --    path: path

    scheme:
        id:
            description: ""
            type: "string"
            mandatory: true

        map_data:
            description: ""
            type: "string"
            mandatory: true

        starting_location:
            description: ""
            scheme:
                x:
                    description: ""
                    type: "number"
                    mandatory: true
                y:
                    description: ""
                    type: "number"
                    mandatory: true
                side:
                    description: ""
                    type: "number"
                    mandatory: true

        -- item:
        -- label:
        -- sound_source:
        -- area:
