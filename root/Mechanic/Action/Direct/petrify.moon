
wsl_action
    id: "petrify"
    description: [[StandardUnitFilter as an argument. Do not use a [filter] tag. All units matching this filter are petrified. Recall list units are included.]]

    action: (cfg, kernel) ->
        victims = kernel\get_units(cfg)
        for i, victim in ipairs victims
            victim.petrified = true

        return victims
