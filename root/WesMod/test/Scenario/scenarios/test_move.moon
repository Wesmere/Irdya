-- This series of tests checks that [move] handles malformed x,y lists correctly.

MOVE_MALFORMED_SCEN = (ID PX PY) ->
    test
        name: "Unit Test {ID}"
        map_data: "{test/maps/move_skip_sighted.map}"
        turns: 3
        id: ID
        random_start_time: false

        time:{DAWN}

        side:
            side:1
            controller:"human"
            name: "Alice"
            type: "Elvish Archer"
            id:"alice"
            fog:true
            share_view:false

        side:
            side:2
            controller:"human"
            name: "Bob"
            type: "Orcish Grunt"
            id:"bob"
            fog:true
            team_name:"East"
            share_view:false

        side:
            side:3
            controller:"human"
            name: "Dave"
            type: "Dwarvish Fighter"
            id:"dave"
            fog:true
            team_name:"East"
            share_view:false

        Side1Turn1: ->
            end_turn!

        Side2Turn1: ->
            do_command
                command: "move"
                x:PX
                y:PY
            SUCCEED!

MOVE_MALFORMED_SCEN test_move, {16,15,14,13,12,11}, {3,3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_1, {16,15,14,13,12,11,10}, {3,3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_2, {16,15,14,13,12,11}, {3,3,3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_3, {16,15,14,13,12,11}, {3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_4, {16,15,14,13,12}, {3,3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_5, {16,15,"chicken",13,12,11}, {3,3,3,3,3,3}
MOVE_MALFORMED_SCEN test_move_fail_6, {16,15,14,13,12,11}, {3,3,3,3,3,"bock"}
