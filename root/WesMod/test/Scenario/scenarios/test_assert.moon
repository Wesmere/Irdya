-- Tests that "assert true, return true" works.
-- This is a sanity check of the unit testing mechanism.
GENERIC_UNIT_TEST "test_assert", ->
    event
        name: "Start"
        command: ->
            ASSERT true
            RETURN true

-- Tests that "assert false, return true" fails.
-- This is a sanity check of the unit testing mechanism.
GENERIC_UNIT_TEST "test_assert_fail", ->
    event
        name: "Start"
        command: ->
            ASSERT not true
            RETURN true

-- Tests that "assert true, return false" fails.
-- This is a sanity check of the unit testing mechanism.
GENERIC_UNIT_TEST "test_assert_fail_two", ->
    event
        name: "Start"
        command: ->
            ASSERT true
            RETURN not true
