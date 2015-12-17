wsl_action
    id: "store_unit_type_ids"

-- variable: the name of the variable into which to store a comma-separated list of all unit type IDs including all from all loaded addons

    action: (cfg, wesnoth) ->
        types = for k,v in pairs(wesnoth.unit_types)
            k
        table.sort(types)
        types = table.concat(types, ',')
        wesnoth.set_variable(cfg.variable or "unit_type_ids", types)

