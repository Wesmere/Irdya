----
-- Test if the game behaves like expected when the turn limit is reached.
--

limit = 12

----
-- Test the TimeOver event handlers getting fired.
test
    id:"turn_limit"
    turns:limit

    side: {
        {
            side:1
        }
        {
            side:2
        }
    }

    SideTurn:
        first_time_only:false
        command: -> end_turn!

    Turn13:FAIL

    ["Turn#{limit + 1}"]:FAIL

    TimeOver:SUCCEED
