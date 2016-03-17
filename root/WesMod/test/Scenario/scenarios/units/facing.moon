TURN_UNIT = (ID, DIRECTION) ->
    assert DIRECTION
    modify_unit
        filter:
            id:ID
        facing:DIRECTION
    store_unit
        filter:
            id:ID
        variable:"temp"
        kill:false
    ASSERT VARIABLE_CONDITIONAL, "temp.facing", "equals", DIRECTION


GENERIC_UNIT_TEST "modify_unit_facing", ->
    event
        name: "Side1Turn1"
        command: -> TURN_UNIT, "alice", "n"

    event
        name: "Side1Turn2"
        command: -> TURN_UNIT, "alice", "ne"

    event
        name: "Side1Turn3"
        command: -> TURN_UNIT, "alice", "nw"

    event
        name: "Side1Turn4"
        command: -> TURN_UNIT, "alice", "s"

    event
        name: "Side1Turn5"
        command: -> TURN_UNIT, "alice", "sw"

    event
        name: "Side1Turn6"
        command: -> TURN_UNIT, "alice", "se"

    event
        name: "Side1Turn7"
        command: -> SUCCEED!

    event
        name: "SideTurn"
        first_time_only: false
        command: -> end_turn!
