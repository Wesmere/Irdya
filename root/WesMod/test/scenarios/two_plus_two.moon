-- This test asserts that 2 + 2 = 4

GENERIC_UNIT_TEST "two_plus_two", ->
    event
        name: "Start"
        command: ->
            VARIABLE "X", 2
            VARIABLE_OP "X", "add", 2
            RETURN VARIABLE_CONDITIONAL "X", "equals", 4

-- This test asserts that 2 + 2 = 5

GENERIC_UNIT_TEST "two_plus_two_fail", ->
    event
        name: "Start"
        command: ->
            VARIABLE "X", 2
            VARIABLE_OP "X", "add", 2
            RETURN VARIABLE_CONDITIONAL "X", "equals", 5
