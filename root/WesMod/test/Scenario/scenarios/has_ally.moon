-- This test checks that the has_ally function is working as expected.

TEST_HAS_ALLY_SCEN = (ID, EVENTS) ->
    test
        name: "Unit Test {ID}"
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

        side:
            side:2
            controller:"human"
            name: "Bob"
            type: "Orcish Grunt"
            id:"bob"
            fog:no
            team_name:"East"

        side:
            side:3
            controller:"human"
            name: "Dave"
            type: "Dwarvish Fighter"
            id:"dave"
            fog:false
            team_name:"East"

        side:
            side:4
            controller:"human"
            name: "Charlie"
            type: "Chocobone"
            id:"charlie"
            fog:false
            team_name:"West"

        Prestart: EVENTS

TEST_HAS_ALLY_SCEN "has_ally", ->
    event
        name:Start

        command: ->

            ASSERT have_unit
                id:"dave"
                filter_side:
                    has_ally:
                        has_unit:
                            id:bob
            ASSERT
                have_unit:
                    id:"dave"
                    filter_side:
                        has_enemy:
                            has_unit:
                                id:"alice"
            ASSERT
                have_unit:
                    id:"dave"
                    filter_side:
                        not:
                            has_ally:
                                has_unit:
                                    id:"steve"
            ASSERT
                have_unit:
                    id:"dave"
                    filter_side:
                        has_enemy:
                            side:{1,4}
            ASSERT not have_unit
                    id:"dave"
                    filter_side:
                        has_ally:
                            has_unit:
                                id:"charlie"

            SUCCEED!
