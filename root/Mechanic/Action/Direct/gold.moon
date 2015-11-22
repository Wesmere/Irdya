













wsl_action
    id: "gold"
    description: "Gives sides gold."

    action: (cfg, kernel) ->
        sides = kernel\get_sides(cfg)
        for side in *sides
            side.gold += cfg.amount

    scheme:
        amount:
            description: "the amount of gold to give."
            type: "number"
        side:
            description: "(default=1) the number of the side to give the gold to. Can be a comma-separated list of sides. note: Default side=1 for empty side= is deprecated."
            default: 1
            is_list: true
        StandardSideFilter:
            description: "tags and keys; default for empty side= is all sides, as usual in a SSF."
