wsl_action
    id: "allow_recruit"
    description: [[Allows a side to recruit units it couldn't previously recruit.]]

    scheme:
        type:
            description: [[the types of units that the side can now recruit.]]
        side:
            description: [[(default=1) the number of the side that is being allowed to recruit the units. This can be a comma-separated list note: Default side=1 for empty side= is deprecated.]]
-- @param StandardSideFilter tags and keys; default for empty side= is all sides, as usual in a SSF.
--- @TODO not proper implemented yet

    action: (cfg) ->
        sides = kernel\get_sides(cfg)
        for side in *sides
            kernel\print("some not implemented stuff.")
