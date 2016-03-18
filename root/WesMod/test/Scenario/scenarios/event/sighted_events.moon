-- This test checks that sighted events are being triggered
-- at the appropriate time. An elvish archer moves towards
-- and discovers an orcish grunt.
-- We pass if the elvish archer is the discoverer, and the
-- variable "sighted_should_trigger" is set.
-- Companion tests check what happens if the orc is discovered
-- on the elf's turn, and also that we fail if we dont set the
-- flag.

TEST_SIGHTED_EVENTS_SCEN = (ID, BOB_CONDITION, SET_FLAG) ->
    test
        name:"Unit Test #{ID}"
        map_data:"sighted_events"
        turns:4
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
        side:
            side:2
            controller:"human"
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
            fog:true

        Prestart: ->
            VARIABLE "sighted_should_trigger", false

        Sighted: ->
            ASSERT VARIABLE_CONDITIONAL "unit.id", "equals", "bob"
            ASSERT VARIABLE_CONDITIONAL "second_unit.id", "equals", "alice"
            RETURN VARIABLE_CONDITIONAL "sighted_should_trigger", "boolean_equals", true

        --Alice moves towards Bob.
        Side1Turn1Refresh: ->
            do_command
                move:
                    x:{1,2,3,4,5,6,7}
                    y:{3,3,3,3,3,3,3}

        --Bob moves either down, then up (unseen), or left, then right (seen)
        Side2Turn1Refresh: ->
            if BOB_CONDITION
                do_command
                    move:
                        x:{16,16,16}
                        y:{3,4,5}
                do_command
                    move:
                        x:{16,16,16}
                        y:{5,4,3}
            elseif SET_FLAG
                VARIABLE "sighted_should_trigger", true

            do_command
                move:
                    x:{16,15,14}
                    y:{3,3,3}
            do_command
                move:
                    x:{14,15,16}
                    y:{3,3,3}

        --Alice discovers Bob.
        Side1Turn2Refresh: ->
            do_command
                move:
                    x:{7,8}
                    y:{3,3}
            --With the next stop Bob should be visible.
            if SET_FLAG
                VARIABLE "sighted_should_trigger", true
            do_command
                move:
                    x:{8,9}
                    y:{3,3}

        --If we got this far without triggering sighted, we fail the test.
        Side2Turn2: ->
            FAIL!

        --This makes the sides pass their turns, when the other events have taken place.
        SideTurn:
            first_time_only:false
            command: -> end_turn!

TEST_SIGHTED_EVENTS_SCEN "sighted_events", true, true
TEST_SIGHTED_EVENTS_SCEN "sighted_events_fail", true, false
TEST_SIGHTED_EVENTS_SCEN "sighted_on_opponents_turn", false, true
TEST_SIGHTED_EVENTS_SCEN "sighted_on_opponents_turn_fail", false, false
