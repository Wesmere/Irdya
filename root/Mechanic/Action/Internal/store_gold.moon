wsl_action
    id: "store_gold"
    description: [[Stores a side's gold into a variable.]]

    action: (cfg, kernel) ->
        side = kernel\get_side(cfg)
        gold = side.gold
        --export [cfg.variable] = gold
        _G[cfg.variable] = gold
        return gold

    scheme:
        variable:
            description: [[(default='gold') the name of the variable to store the gold in]]
            default: "gold"
-- StandardSideFilter: The first matching side's gold will be stored in the variable "variable".

            --note: This tag can't easily (without deprecation) be extended to store an array,
--since the gold is stored in a scalar variable, not a container (there's no key).
-- function wml_actions.store_gold(cfg)
--     local team = wesnoth.get_sides(cfg)[1]
--     if team then wesnoth.set_variable(cfg.variable or "gold", team.gold) end
-- end
