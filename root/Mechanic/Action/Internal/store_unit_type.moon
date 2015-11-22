wsl_action
    id: "store_unit_type"

    action: (cfg, kernel) ->
        types = for unit_type in *cfg.type
            kernel.content.unit_type[unit_type]
        if #types == 1
            types = types[1]
        _G[cfg.variable] = types
        return types

    scheme:
        type:
            description: [[(required) the defined ID of the unit type, for example "Goblin Knight". Do not use a translation mark or it will not work correctly for different languages. A comma-separated list of IDs may also be used to store an array of unit types.]]
            type: "unit_type"
            is_list: true
            mandatory: true

        variable:
            description: [[the name of the variable into which to store the unit type information (default "unit_type")]]
            type: "String"
            default: "unit_type"
