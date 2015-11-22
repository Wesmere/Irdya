wsl_action
    id: "fire_event"
    description: [[Trigger a WSL event (used often for custom events)]]

    action: (cfg, kernel) ->
        name = cfg.name
        local primary
        if primary_unit = cfg.primary_unit
            primary = kernel\get_unit(primary_unit)
        local secondary
        if secondary_unit = cfg.secondary_unit
            secondary = kernel\get_unit(secondary_unit)
        kernel\fire_event(name, primary, secondary, first_weapon, second_weapon)

    scheme:
        name:
            description: [[the name of event to trigger]]
        primary_unit:
            description: [[(Optional) Primary unit for the event. Will never match on a recall list unit. The first unit matching the filter will be chosen.
StandardUnitFilter as argument. Do not use a [filter] tag.]]
        secondary_unit:
            description: [[(Optional) Same as [primary_unit] except for the secondary unit.
StandardUnitFilter as argument. Do not use a [filter] tag.]]
        primary_attack:
            description: [[Information passed to the primary attack filter and $weapon variable on the new event.]]
        secondary_attack:
            description: [[Information passed to the second attack filter and $second_weapon variable on the new event.]]
