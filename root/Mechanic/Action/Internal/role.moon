
wsl_action

    id: "role"

    action: (cfg, kernel) ->

        role = cfg.role
        cfg.role = nil

        local unit
        if type = cfg.type
            cfg.type = nil
            type_list = make_list(type)
            for i, ty in ipairs type_list
                cfg.type = ty
                unit = kernel\get_unit(cfg)
                if unit
                    break
        else
            unit = kernel\get_unit(cfg)

        if unit
            unit.role = role

        return unit

    description: [[Tries to find a unit to assign a role to.
This is useful if you want to choose a non-major character to say some things during the game. Once a role is assigned, you can use role= in a unit filter to identify the unit with that role (See FilterWSL).
However, there is no guarantee that roles will ever be assigned. You can use [have_unit] (see Condition Tags) to see whether a role was assigned. This tag uses a StandardUnitFilter (without [filter]) with the modification to order the search by type, mark only the first unit found with the role, and the role attribute is not used in the search. If for some reason you want to search for units that have or don't have existing roles, you can use one or more [not] filters. The will check recall lists in addition to units on the map. In normal use, you will probably want to include a side attribute to force the unit to be on a particular side.]]

    scheme:
        role:
            description: [[the value to store as the unit's role. This role is not used in the StandardUnitFilter when doing the search for the unit to assign this role to.]]
            type: "String"

        type:
            type: "Unit_type_id"
            description: [[a comma-separated list of possible types the unit can be. If any types are given, then units will be searched by type in the order listed. If no type is given, then no particular order with respect to type is guaranteed.]]
--StandardUnitFilter, do not use a [filter] sub-tag. SUF's role= and type= keys are not used: if you want to use them, use a nested SUF wrapped inside a [and] tag.
