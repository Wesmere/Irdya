-- This series of tests checks that the 'skip_sighted' option of
-- 'move' is being implemented correctly.

MOVE_SKIP_SIGHTED_SCEN = (ID, STOP_X, STOP_Y, SKIP_SIGHTED, SHARE_VIEW) ->
    test
        name:"Unit Test #{ID}"
        map_data:"move_skip_sighted"
        turns:3
        id:ID
        random_start_time:false

        time:{DAWN}

        side:
            side:1
            controller:"human"
            name:"Alice"
            type:"Elvish Archer"
            id:"alice"
            fog:true
            share_view:SHARE_VIEW
        side:
            side:2
            controller:"human"
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
            fog:true
            team_name:"East"
            share_view:SHARE_VIEW
        side:
            side:3
            controller:"human"
            name:"Dave"
            type:"Dwarvish Fighter"
            id:"dave"
            fog:true
            team_name:"East"
            share_view:SHARE_VIEW

        event:
            name:"Side1Turn1"
            command: ->
                end_turn!

        event:
            name:"Side2Turn1"
            command: ->
                do_command
                    move:
                        x:{16,15,14,13,12,11}
                        y:{3,3,3,3,3,3}
                        skip_sighted:SKIP_SIGHTED
                RETURN have_unit
                    id:"bob"
                    x:STOP_X
                    y:STOP_Y


MOVE_SKIP_SIGHTED_SCEN "move_skip_no_sighted_no_share_view", 15, 3, false, false
MOVE_SKIP_SIGHTED_SCEN "move_skip_ally_sighted_no_share_view", 12, 3, "only_ally", false
MOVE_SKIP_SIGHTED_SCEN "move_skip_all_sighted_no_share_view", 11, 3, "all", false
MOVE_SKIP_SIGHTED_SCEN "move_skip_no_sighted_yes_share_view", 11, 3, false, true
MOVE_SKIP_SIGHTED_SCEN "move_skip_ally_sighted_yes_share_view", 11, 3, "only_ally", true
MOVE_SKIP_SIGHTED_SCEN "move_skip_all_sighted_yes_share_view", 11, 3, "all", true
