-- This test scenario checks unit filter [filter_vision],
-- and terrain_filter [filter_vision]. It tests what happens
-- when there is a single, there are multiple, or there are
-- no matches to the standard side filter contained.

TEST_FILTER_VISION_SCEN = (ID, EVENTS) ->
    test
        name: "Unit Test #{ID}"
        map_data:"move_skip_sighted"
        turns:3
        id:ID
        random_start_time:false

        time:{DAWN}

        side:
            side:1
            controller:"human"
            name: "Alice"
            type: "Elvish Archer"
            id:"alice"
            fog:true
            team_name:"West"
			share_vision:"shroud"

        side:
            side:2
            controller:"human"
            name: "Bob"
            type: "Orcish Grunt"
            id:"bob"
            fog:true
            team_name:"East"
			share_vision:"shroud"

        side:
            side:3
            controller:"human"
            name: "Dave"
            type: "Dwarvish Fighter"
            id:"dave"
            fog:true
            team_name:"East"
			share_vision:"shroud"

        side:
            side:4
            controller:"human"
            name: "Charlie"
            type: "Chocobone"
            id:"charlie"
            fog:true
            team_name:"West"
			share_vision:"shroud"

        Prestart:EVENTS


chat_if = (X) ->
    VARIABLE_OP "chat_ctr", "add", 1

    if X
        chat
            message:"#{chat_ctr}: true"
    else
        chat
            message:"#{chat_ctr}: false"


test_vision_chat = (X, Y) ->
    X.filter_vision = Y
    chat_if have_unit X

    X.filter_vision = nil
    X.filter_location =
        filter_vision: Y
    chat_if have_unit X

    delay
        time: 500


assert_test_true = (X, Y) ->
    X.filter_vision = Y
    ASSERT have_unit X
    X.filter_vision = nil
    X.filter_location =
        filter_vision: Y
    ASSERT have_unit X


assert_test_false = (X, Y) ->
    X.filter_vision = Y
    ASSERT not have_unit X
    X.filter_vision = nil
    X.filter_location =
        filter_vision: Y
    ASSERT not have_unit X


TEST_FILTER_VISION_SCEN "filter_vision", ->
    event
        name:"Start"
        command: ->
            VARIABLE "chat_ctr", 0

            assert_test_true {}, { side:{1,2,3,4} }
            assert_test_true {side:2}, { side:{1,2,3,4} }
            assert_test_true {side:4}, { side:{1,2,3,4} }
            assert_test_true {side:1}, {side:4}
            assert_test_true {side:2}, {side:4}
            assert_test_true {side:3}, {side:4}
            assert_test_true {side:4}, {side:1}
            assert_test_true {side:4}, {side:3}
            assert_test_false {side:4}, {side:2}
            assert_test_false {}, {side:5}

            SUCCEED!
