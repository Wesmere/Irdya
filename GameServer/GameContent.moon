


class GameContent

  new: (config) =>

      Registry:
        maps: {}
        scenarios: {}
        WSL_tags: {}
        roots: {}
        campaigns: {}
        eras: {}
        game_cores: {}
      ENV: -- holds tables being used as env
        on_scan:
          wsl_config: (cfg) -> @state.Registry.WSL_tags[cfg.name] = true
        folders: -- envs for wesmod content folders
          Mechanics: {}
          Terrain: {}
          WesMods: {}
          Units: {}
          Help: {}
          Scenario: {}
          --- @TODO think about same name but different scopes
          --  Which currently just overwrites the on_scan function
          WSL:
            wsl_config: (cfg) ->
              assert(cfg.name, "no name")
              assert(cfg.on_load, "no on_load")
              @state.ENV.folders[cfg.scope][cfg.name] = cfg.on_load
              if cfg.on_scan
                @state.ENV.on_scan[cfg.name] = cfg.on_scan
              else
                @state.ENV.on_scan[cfg.name] = ->
        action: {} -- the env for event handlers
        command: {} -- is it an env? at least a collenction of functions
      Mechanics: -- used by Kernel execution
        actions: {} -- direct kernel access
        commands: {}
      Help:
        toplevel: {}
        topic: {}
        section: {}
      Terrain:
        terrain_type: {}
      Units:
        move_type: {} -- depend on terrain_types
        race: {}
        trait: {}
        unit_type: {} -- depend on movetypes, races, traits
      WesMods: {}
      Era:
        factions: {}
        era: {}
      Scenario: {}
      Map: {}
      Config: config

