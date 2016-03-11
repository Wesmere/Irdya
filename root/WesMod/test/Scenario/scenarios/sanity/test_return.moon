-- Tests that return true works.
-- This is a sanity check of the unit testing mechanism.
GENERIC_UNIT_TEST "test_return_succeed", ->
    event
        name: "Start"
        command: -> RETURN true

-- Tests that return false fails.
-- This is a sanity check of the unit testing mechanism.
GENERIC_UNIT_TEST "test_return_fail", ->
    event
        name: "Start"
        command: -> RETURN not true
