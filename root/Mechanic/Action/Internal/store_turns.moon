wsl_action
    id: "store_turns"
    description: "Stores the turn limit (the maximum number of turns). If there is no limit, this stores -1."

    action: (cfg, wesmere) ->
        var = cfg.variable or "turns"
        wesmere.set_variable(var, wesmere.current.last_turn)

    scheme:
        variable:
            description: "the name of the variable in which to store the turn limit."
            default: "turns"
            type: "string"
