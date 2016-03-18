GENERIC_UNIT_TEST "xp_mod_1", ->
    event
        name:"Start"
        command: ->
            store_unit
                variable:"foo"
                filter:
                    id:"alice"

            RETURN VARIABLE_CONDITIONAL "foo[0].max_experience", "equals", 44

GENERIC_UNIT_TEST "xp_mod_2",
    experience_modifier: 50

    Start: ->
        store_unit
            variable:"foo"
            filter:
                id:"alice"

        RETURN VARIABLE_CONDITIONAL "foo[0].max_experience", "equals", 22


GENERIC_UNIT_TEST "xp_mod_3",
    experience_modifier: 75

    Start: ->
        store_unit
            variable:"foo"
            filter:
                id:"alice"

        RETURN VARIABLE_CONDITIONAL "foo[0].max_experience", "equals", 33
