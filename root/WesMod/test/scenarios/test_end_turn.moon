-- This test checks that [end_turn] is working.

GENERIC_UNIT_TEST "test_end_turn", ->
    event
        name: "Start"
        command: ->
            end_turn!

    event
        name: "Side2Turn1"
        command: SUCCEED
