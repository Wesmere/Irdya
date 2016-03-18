-- Tests how various variable settings occuring in prestart
-- and in early events work out.
-- For example, whether setting gold of a side in prestart works, or goes OOS
-- Also, whether setting the turn counter works.

GENERIC_UNIT_TEST "set_gold_in_prestart_one", ->
    event
        name:"Prestart"
        command: ->
            modify_side
                side:1
                gold:666

    event
        name:"Side1Turn1"
        command: ->
            store_side
                side:1
                variable:"temp"
            RETURN VARIABLE_CONDITIONAL "temp.gold", "equals", 666


GENERIC_UNIT_TEST "set_gold_in_prestart_two", ->
    event
        name:"Prestart"
        command: ->
            gold
                side:1
                amount:566

    event
        name:"Side1Turn1"
        command: ->
            store_side
                side:1
                variable:"temp"
            RETURN VARIABLE_CONDITIONAL "temp.gold", "equals", 566


GENERIC_UNIT_TEST "modify_turns_one", ->
    event
        name:"Prestart"
        command: ->
            modify_turns
                value:42
    event
        name:"Side1Turn1"
        command: ->
            store_turns
                variable:"temp"
            RETURN VARIABLE_CONDITIONAL "temp", "equals", 42


GENERIC_UNIT_TEST "modify_turns_two", ->
    event
        name:"Prestart"
        command: ->
            modify_turns
                current:42
    event
        name:"Side1Turn1"
        command: -> FAIL!
    event
        name:"Side1Turn42"
        command: -> SUCCEED!


GENERIC_UNIT_TEST "modify_turns_three", ->
    event
        name:"Side1Turn1"
        command: ->
            modify_turns
                current:42
    event
        name:"Side1Turn1Refresh"
        command: -> SUCCEED!
    event
        name:"Side1Turn42"
        command: -> FAIL!


GENERIC_UNIT_TEST "modify_turns_four", ->
    event
        name:"Side1Turn1"
        command: ->
            modify_turns
                current:42
    event
        name:"Side1Turn1Refresh"
        command: -> end_turn!
    event
        name:"Side1Turn1End"
        command: -> FAIL!
    event
        name:"Side2Turn42"
        command: -> SUCCEED!
    event
        name:"Side1Turn43"
        command: -> FAIL!


GENERIC_UNIT_TEST "replace_schedule_prestart", ->
    event
        name:"Prestart"
        command: -> replace_schedule({DUSK})
    event
        name:"Side1Turn1"
        command: ->
            store_time_of_day
                x:1
                y:1
            RETURN VARIABLE_CONDITIONAL "time_of_day.id", "equals", "dusk"

