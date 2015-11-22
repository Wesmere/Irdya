wsl_command
    id: "recall"
    description: [[the player recalled a unit.]]

    command: (cfg, kernel) ->
        kernel\print("Recall command not implemented yet.")

    scheme:
        id:
            description: "the id of the recalled unit."
        x:
            description: "x and y: the castle tile the unit is recruited on."
        y:
            description: "x and y: the castle tile the unit is recruited on."
        from:
            scheme:
                x:
                    description: "x and y: the keep tile the unit is recalled from."
                y:
                    description: "x and y: the keep tile the unit is recalled from."
