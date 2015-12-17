wsl_action
    id: "store_turns"
    description: "Stores the turn limit (the maximum number of turns). If there is no limit, this stores -1."

    action: (cfg, wesnoth) ->
        var = cfg.variable or "turns"
        wesnoth.set_variable(var, wesnoth.game_config.last_turn)

    scheme:
        variable:
            description: "(default='turns') the name of the variable in which to store the turn limit."
