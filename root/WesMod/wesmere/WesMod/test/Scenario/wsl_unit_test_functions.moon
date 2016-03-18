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

    scenario =
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
                x:8
                y:4
                id:"alice"
            },
            {
                side:2
                controller:"human"
                name:"Bob"
                type:"Orcish Grunt"
                x:16
                y:4
                id:"bob"
            }
        }

    content_type = type(CONTENT)
    switch content_type
        when "function"
            scenario.Preload = CONTENT
        when "table"
            --- @todo do a deep merge here?
            for key, value in pairs CONTENT
                scenario[key] = value
        else error("GENERIC_UNIT_TEST: CONTENT argument does not support the type: #{type(CONTENT)}")

    test scenario

FAIL = ->
    RETURN false

SUCCEED = ->
	RETURN true
