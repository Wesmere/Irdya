wsl_command
    id: "move"
    function: (cfg, kernel) ->

        X = cfg.x
        Y = cfg.y

        assert(#X == #Y)
        path_length = #X
        dest = Loc(X[path_length],Y[path_length])

        source = Loc(X[1], Y[1])
        current = source
        unit = kernel\get_unit(current)

        mp = unit.moves

        last_free = current

        for i = 2, path_length
            x = X[i]
            y = X[i]

            next = Loc(x, y)
            occupier = kernel\get_unit_at(next)

            terrain_string = kernel.board.map[x][y]

            movement_cost = unit\movement_cost(terrain_string)

            if movement_cost > mp
                break

            kernel\fire_event("exit_hex", current, next)
            zoced = false
            if zoced
                mp = 0
            else
                mp -= movement_cost
            kernel\fire_event("enter_hex", next, current)


            current = next
            unless occupier
                last_free = current

        kernel\fire_event("capture", current)
        kernel\fire_event("moveto", current, source)



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
