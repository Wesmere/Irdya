
GENERIC_UNIT_TEST "check_turn_number", ->
    event
        name:"Turn1"
        command: ->
            ASSERT(turn_number == 1)
            SUCCEED!


GENERIC_UNIT_TEST "check_turn_number2", ->
    expected_turn_number = 0
    event
        name:"Turn1"
        command: ->

            first_turn = turn_number
            event
                name:"Turn2"
                command: ->
                    ASSERT(first_turn == 1)
                    ASSERT(turn_number == 2)
                    SUCCEED!

    event
        name:"NewTurn"
        command: ->
            expected_turn_number += 1
            ASSERT(expected_turn_number == turn_number)

    event
        name:"SideTurn"
        command: ->
            end_turn!


GENERIC_UNIT_TEST "check_side_number", ->
    expected_side_number = 0

    event
        name:"Side1Turn1"
        command: ->
            ASSERT(turn_number == 1)
            ASSERT(side_number == 1)
            end_turn!

    event
        name:"SideTurn"
        command: ->
            expected_side_number += 1
            ASSERT(side_number == expected_side_number)

    event
        name:"Side2Turn1"
        command: ->
            ASSERT(turn_number == 1)
            ASSERT(side_number == 2)
            SUCCEED!
