-- This test checks the total damage of grunts with no traits vs 0% defense
-- elvish archers, at various times of day.
--
-- If it fails, it means that something has changed in the attack pipeline
-- code with how bonuses are calculated.
--
-- (Or that a balanced update has occurred and this test wasn't updated... )

export TEST_GRUNT_DAMAGE = (ID, X, Y, EXPECTED_DAMAGE) ->
    unit UNIT 2, "Orcish Grunt", X + 1, Y, {random_traits:"false"}
    unit UNIT 1, "Elvish Archer", X, Y, {id:ID}
    do_command
        attack:
            weapon:0
            defender_weapon:0
            source:
                x:X + 1
                y:Y
            destination:
                x:X
                y:Y
    store_unit
        filter:
            id:ID
        variable:"injured"
    VARIABLE "damage", injured.max_hitpoints
    VARIABLE_OP "damage", "sub", injured.hitpoints
    ASSERT VARIABLE_CONDITIONAL "damage", "equals", EXPECTED_DAMAGE


test
    name:"Unit Test test_grunt_tod_damage"
    map_data:"test_grunt_tod_damage"
    turns:7
    id:"test_grunt_tod_damage"
    random_start_time:false

    time:DEFAULT_SCHEDULE

    side: {
        {
            side:1
            controller:"human"
            name:"Alice"
            type:"Elvish Archer"
            id:"alice"
        }
        {
            side:2
            controller:"human"
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
        }
    }

    --This turn is afternoon.
    Side2Turn3Refresh: ->
        TEST_GRUNT_DAMAGE "test1", 1, 2, 7*2

    --This turn is dusk.
    Side2Turn4Refresh: ->
        TEST_GRUNT_DAMAGE "test2", 1, 4, 9*2

    --This turn is first watch.
    Side2Turn5Refresh: ->
        TEST_GRUNT_DAMAGE "test3", 1, 6, 11*2

    --If we got this far without failing an assertion, we pass the test.
    Side2Turn6: ->
        SUCCEED!

    --This makes all sides pass their turns, when the other events have taken place.
    SideTurn:
        first_time_only:false
        command: ->
            end_turn!

-- Same test but using time_area tables instead of default_schedule
-- to produce the damage changes
test
    name:"Unit Test test_time_area_damage"
    map_data:"test_grunt_tod_damage"
    turns:7
    id:"test_time_area_damage"
    random_start_time:false

    time:DEFAULT_SCHEDULE

    side: {
        {
            side:1
            controller:"human"
            name:"Alice"
            type:"Elvish Archer"
            id:"alice"
        }
        {
            side:2
            controller:"human"
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
        }
    }

    Start: ->
        end_turn!

    Side2Turn1: ->
        time_area
            id:"foo"
            x:"1-2"
            y:"1-10"
            time:{AFTERNOON}
        TEST_GRUNT_DAMAGE "test1", 1, 2, 7*2
        time_area
            id:"foo"
            remove:true

        time_area
            id:"foo"
            x:"1-2"
            y:"1-10"
            time:{DUSK}
        TEST_GRUNT_DAMAGE "test2", 1, 4, 9*2
        time_area
            id:"foo"
            remove:true

        time_area
            id:"foo"
            x:"1-2"
            y:"1-10"
            time:{FIRST_WATCH}
        TEST_GRUNT_DAMAGE "test3", 1, 6, 11*2

        SUCCEED!

-- Test a time area declared in prestart event

test
    name:"Unit Test test_time_area_prestart"
    map_data:"test_grunt_tod_damage"
    turns:7
    id:"test_time_area_prestart"
    random_start_time:false

    time:DEFAULT_SCHEDULE

    side: {
        {
            side:1
            controller:"human"
            name:"Alice"
            type:"Elvish Archer"
            id:"alice"
        }
        {
            side:2
            controller:"human"
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
        }
    }

    Prestart: ->
        time_area
            x:"1-2"
            y:"1-10"
            time:{FIRST_WATCH}

    Start: ->
        end_turn!

    Side2Turn1: ->
        TEST_GRUNT_DAMAGE "test3", 1, 6, 11*2

        SUCCEED!
