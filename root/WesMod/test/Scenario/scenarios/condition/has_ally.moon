-- This test checks that the has_ally function is working as expected.

TEST_HAS_ALLY_SCEN = (ID, EVENTS) ->
    test
        name: "Unit Test #{ID}"
        map_data: "move_skip_sighted"
        turns: 3
        id: ID
        random_start_time: false

        time: {DAWN}

        side:
            side:1
            controller:"human"
            name: "Alice"
            type: "Elvish Archer"
            id:"alice"
            fog:false
            team_name:"West"
            loc:{4,5}

        side:
            side:2
            controller:"human"
            name: "Bob"
            type: "Orcish Grunt"
            id:"bob"
            fog:no
            team_name:"East"
            loc:{5,4}

        side:
            side:3
            controller:"human"
            name: "Dave"
            type: "Elvish Archer"
            id:"dave"
            fog:false
            team_name:"East"
            loc:{5,8}

        side:
            side:4
            controller:"human"
            name: "Charlie"
            type: "Orcish Grunt"
            id:"charlie"
            fog:false
            team_name:"West"
            loc:{8,5}

        Prestart: EVENTS

TEST_HAS_ALLY_SCEN "has_ally", ->
    event
        name:"Start"

        command: ->

            ASSERT have_unit
                id:"dave"
                filter_side:
                    has_ally:
                        has_unit:
                            id:"bob"

            SUCCEED!


TEST_HAS_ALLY_SCEN "has_ally2", ->
    event
        name:"Start"

        command: ->

            ASSERT have_unit
                id:"dave"
                filter_side:
                    has_enemy:
                        has_unit:
                            id:"alice"

            SUCCEED!


TEST_HAS_ALLY_SCEN "has_ally3", ->
    event
        name:"Start"

        command: ->

            ASSERT have_unit
                id:"dave"
                filter_side:
                    not:
                        has_ally:
                            has_unit:
                                id:"steve"

            SUCCEED!


TEST_HAS_ALLY_SCEN "has_ally4", ->
    event
        name:"Start"

        command: ->

            ASSERT have_unit
                id:"dave"
                filter_side:
                    has_enemy:
                        side:{1,4}

            SUCCEED!

TEST_HAS_ALLY_SCEN "has_ally5", ->
    event
        name:"Start"

        command: ->

            ASSERT not have_unit
                id:"dave"
                filter_side:
                    has_ally:
                        has_unit:
                            id:"charlie"

            SUCCEED!
