wsl_command
    id: "move"
    function: (cfg) ->
        unit = kernel\get_unit(cfg.x[1], cfg.y[1])
        unit\move_path(cfg.x, cfg.y)

    description: [[move: the player moved a unit.]]
    scheme:
        x:
            description: [[x,y: the path the unit walks.]]
            is_list: true
            type: "Signed"
        y:
            description: [[x,y: the path the unit walks.]]
            is_list: true
            type: "Signed"
        skip_sighted:
            default: "no"
            description: [[skip_sighted: whether the unit doesn't stop when discovering another unit, possible values are 'only_ally', 'all' or 'no', (default no).]]
            type: "enum"
            enum: {"only_ally", "all", "no"}
