GENERIC_UNIT_TEST "test_move_unit", ->
    event
        name: "Start"
        command: ->

            ASSERT have_unit({
                id:"alice"
                x:7
                y:3
            }) and have_unit
                id:"bob"
                x:13
                y:3

            MOVE_UNIT {id:"alice"}, 10, 5

            ASSERT have_unit({
                id:"alice"
                x:10
                y:5
            }) and have_unit
                id:"bob"
                x:13
                y:3

            MOVE_UNIT {id:"bob"}, 10, 7

            ASSERT have_unit({
                id:"alice"
                x:10
                y:5
            }) and have_unit
                id:"bob"
                x:10
                y:7

            MOVE_UNIT {id:"alice"}, 10, 7

            ASSERT have_unit({
                id:"alice"
                x:9
                y:7
            }) and have_unit
                id:"bob"
                x:10
                y:7

            MOVE_UNIT {id:"bob"}, 10, 4

            ASSERT have_unit({
                id:"alice"
                x:9
                y:7
            }) and have_unit
                id:"bob"
                x:10
                y:4

            MOVE_UNIT {id:"bob"}, 10, 4

            ASSERT have_unit({
                id:"alice"
                x:9
                y:7
            }) and have_unit
                id:"bob"
                x:10
                y:4

            UNIT 1, "Spearman", 13, 5, {id:steve}

            MOVE_UNIT {id:"alice"}, 13, 5

            ASSERT have_unit({
                id:"alice"
                x:12
                y:4
            }) and have_unit({
                id:"bob"
                x:10
                y:4
            }) and have_unit
                id:"steve"
                x:13
                y:5

            SUCCEED!
