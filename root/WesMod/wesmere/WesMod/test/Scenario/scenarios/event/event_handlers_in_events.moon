GENERIC_UNIT_TEST "event_handlers_in_events_1", ->
    event
        name:"Test"
        command: ->
            VARIABLE "pass_test", 1

    event
        name:"Start"
        command: ->
            VARIABLE "pass_test", 0
            fire_event
                name:"Test"
            RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


GENERIC_UNIT_TEST "event_handlers_in_events_2", ->
    event
        name:"Start"

        command: ->

            VARIABLE "pass_test", 0
            event
                name:"Test"
                command: ->
                    VARIABLE "pass_test", 1

            fire_event
                name:"Test"
            RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


GENERIC_UNIT_TEST "event_handlers_in_events_3", ->
    event
        name:"Start"
        command: ->
            event
                name:"Test"
                command: -> VARIABLE "pass_test", 1

    event
        name:"Start"
        command: ->
            VARIABLE "pass_test", 0
            fire_event
                name:"Test"
            RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


GENERIC_UNIT_TEST "event_handlers_in_events_4", ->
    event
        name:"Start"
        command: ->
            VARIABLE "pass_test", 0
            fire_event
                name:"Test"
            RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1

    event
        name:"Start"
        command: ->
            event
                name:"Test"
                command: ->
                    VARIABLE "pass_test", 1


GENERIC_UNIT_TEST "event_handlers_in_events_5", ->
    event
        name:"Start"
        command: ->
            VARIABLE "pass_test", 0
            unit UNIT 1, "Orcish Grunt", 1, 1, {}
            store_unit
                filter:
                    x:1
                    y:1
                variable:"my_unit"
                kill:true

            event
                name:"PostAdvance"
                command: ->
                    VARIABLE "pass_test", 1

            VARIABLE_OP "my_unit[1].experience", "add", 50
            unstore_unit
                variable:"my_unit[1]"
                fire_event:true
                x:1
                y:1

    event
        name:"Start"
        command: ->
            RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


-- GENERIC_UNIT_TEST "event_handlers_in_events_6", ->
--     event
--         name:"Start"
--         command: ->
--             VARIABLE "pass_test", 0
--             unit UNIT 1, "Orcish Grunt", 1, 1, {}
--             store_unit
--                 filter:
--                     x:1
--                     y:1
--                 variable:"my_unit"
--                 kill:true
--             set_variables
--                 name:"ev0"
--                 value:
--                     name:post_advance
--                     -- VARIABLE "pass_test", 1

--             insert_tag
--                 name:"event"
--                 variable:"ev0"

--             fire_event
--                 name:"Test"

--             VARIABLE_OP "my_unit.experience", "add", 50
--             unstore_unit
--                 variable:"my_unit"
--                 fire_event:true

--     event
--         name:"Start"
--         command: ->
--             RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


-- GENERIC_UNIT_TEST "event_handlers_in_events_7", ->
--     event
--         name:"Start"
--         command: ->
--             VARIABLE "pass_test", 0
--             unit UNIT 1, "Orcish Grunt", 1, 1, {}
--             store_unit
--                 filter:
--                     x:1
--                     y:1
--                 variable:"my_unit"
--                 kill:true

--             set_variables
--                 name:"ev0"
--                 value:
--                     name:"post_advance"
--                     -- VARIABLE "pass_test", 1

--             event
--                 name:"Test"
--                 command: ->
--                     insert_tag
--                         name: "event"
--                         variable: "ev0"

--             fire_event
--                 name:"Test"

--             VARIABLE_OP "my_unit[1].experience", "add", 50
--             unstore_unit
--                 variable:"my_unit[1]"
--                 fire_event:true

--     event
--         name:"Start"
--         command: ->
--             RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1


-- GENERIC_UNIT_TEST "event_handlers_in_events_8", ->
--     event
--         name:"Start"
--         command: ->
--             VARIABLE "pass_test", 0
--             unit UNIT 1, "Orcish Grunt", 1, 1,
--                 variables:
--                     my_event:
--                         name:"post_advance"
--                         -- VARIABLE pass_test, 1
--             store_unit
--                 filter:
--                     x:1
--                     y:1
--                 variable:"my_unit"
--                 kill:true
--             insert_tag
--                 name:"event"
--                 variable:"my_unit.variables.my_event"

--             my_unit = my_unit[1]

--             unless my_unit then error "fuck"
--             unless my_unit.experience then error "fuck you"
--             my_unit.experience += 50

--             -- VARIABLE_OP "my_unit.experience", "add", 50
--             unstore_unit
--                 variable:"my_unit"
--                 fire_event:true

--     event
--         name:"Start"
--         command: ->
--             RETURN VARIABLE_CONDITIONAL "pass_test", "equals", 1
