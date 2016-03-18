-- Tests the presence of a unit at a particular hex after various
-- kinds of events that may alter it's presence or absence.
-- This is intended to be a test of the underlying unit_map object,
-- but many other things are tested along the way, esp. have_unit:.


GENERIC_UNIT_TEST "test_unit_map", ->

    ASSERT_NO_9_5 = ->
        ASSERT not have_unit
            x:9
            y:5

    ASSERT_YES_9_5 = ->
        ASSERT have_unit
            x:9
            y:5

    event
        name:"Start"
        command: ->
            ASSERT_NO_9_5!
            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve1"}
            ASSERT_YES_9_5!
            kill
                x:9
                y:5
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve2"}
            ASSERT_YES_9_5!
            move_unit
                loc:{9,5}
                to_loc:{10,5}
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve3"}
            ASSERT_YES_9_5!
            do_command
                move:
                    x:{9,8}
                    y:{5,5}
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve4"}
            ASSERT_YES_9_5!
            store_unit
                filter:
                    loc:{9,5}
                variable:"temp"
                kill:true
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve5"}
            ASSERT_YES_9_5!
            store_unit
                filter:
                    loc:{9,5}
                variable:"temp2"
                kill:false
            ASSERT_YES_9_5!
            harm_unit
                filter:
                    loc:{9,5}
                amount:100
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve6"}
            ASSERT_YES_9_5!
            store_unit
                filter:
                    loc:{9,5}
                variable:"temp2"
                kill:false
            ASSERT_YES_9_5!
            harm_unit
                filter:
                    loc:{9,5}
                amount:100
                kill:false
            ASSERT_YES_9_5!
            terrain
                loc:{9,5}
                terrain:"Xv"
            ASSERT_YES_9_5!
            do_command
                move:
                    x:{7,8,9}
                    y:{3,3,4}
            do_command
                attack:
                    weapon:1
                    defender_weapon:1
                    source:{9,4}
                    destination:{9,5}
            ASSERT_NO_9_5!

            unit UNIT 2, "Elvish Archer", 9, 5, {id:"steve7"}
            ASSERT_YES_9_5!
            do_command
                attack:
                    weapon:1
                    defender_weapon:1
                    source:{9,4}
                    destination:{9,5}
            ASSERT_YES_9_5!

            SUCCEED!

