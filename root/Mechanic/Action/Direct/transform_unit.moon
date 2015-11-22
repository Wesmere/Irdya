wsl_action
    id: "transform_unit"
    description: [[Transforms every unit matching the filter to the given unit type. Keeps intact hit points, experience and status. If the unit is transformed to a non-living type (undead or mechanical), it will be also unpoisoned. Hit points will be changed if necessary to respect the transformed unit's maximum hit points.]]

    action: (cfg, kernel) ->
        units = kernel\get_units(cfg.filter)
        --for unit in *units

    scheme:
        filter:
            description: [[do use a [filter] table.]]
            type: "SUF"
        transform_to:
            description: [[the unit type's id in which all the units matching the filter will be transformed. If missing, the units will follow their normal advancement.]]
            type: "unit_type_id"
