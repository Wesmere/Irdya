export ^

RETURN = (X) ->
    if X
        endlevel
            result:"victory"
            linger_mode: true
    else
        test_condition
            result:false
        	--- TODO {X}
        endlevel
            result:"defeat"
            linger_mode:true

ASSERT = (X) ->
    unless X
        test_condition
            result:false
        	--- TODO {X}
        endlevel
            result:"defeat"
            linger_mode:true

GENERIC_UNIT_TEST = (NAME, CONTENT) ->

    unless CONTENT
        CONTENT = ->

    test
        name:"Generic Unit Test #{Name}"
        map_data:"generic_unit_test"
        turns: -1
        id:NAME

        time:DAWN

        side: {
            {
                side:1
                controller:"human"
                name:"Alice"
                type:"Elvish Archer"
                id:"alice"
            },
            {
                side:2
                controller:"human"
                name:"Bob"
                type:"Orcish Grunt"
                id:"bob"
            }
        }

        Preload:CONTENT

FAIL = ->
    RETURN false

SUCCEED = ->
	RETURN true
