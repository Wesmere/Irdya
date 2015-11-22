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

