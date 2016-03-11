GENERIC_UNIT_TEST "xp_mod_1", ->
    event
        name:"Start"
        command: ->
            store_unit
                variable:"foo"
                filter:
                    id:"alice"

            RETURN VARIABLE_CONDITIONAL "foo[0].max_experience equals", 44

GENERIC_UNIT_TEST "xp_mod_2", ->
    --- @todo experience_modifier = 50
    event
        name:"Start"
        command: ->
            store_unit
                variable:"foo"
                filter:
                    id:"alice"

            RETURN VARIABLE_CONDITIONAL "foo[0].max_experience", "equals", 22


GENERIC_UNIT_TEST "xp_mod_3", ->
    -- @todo experience_modifier :" "75
    event
        name:"Start"
        command: ->
            store_unit
                variable:"foo"
                filter:
                    id:"alice"

            RETURN VARIABLE_CONDITIONAL "foo[0].max_experience", "equals", 33
