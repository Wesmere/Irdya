---------------------------------------
-- This is the default parent scenario.
-- It implements all the gameplay.
--

scenario

    id:"parent"
    parent:false

    --defeat_music:Config.defeat_music
    --victory_music:Config.victory_music

    victory_when_enemies_defeated:true
    carryover_percentage:80
    carryover_add:false
    remove_from_carryover_on_defeat:true
    experience_modifier:100

    disallow_recall:false

    time: DEFAULT_SCHEDULE

------------- Setup ---------------

    Preload:
        id: "todo"

    Prestart:
        id: "todo"

    Start:
        id: "todo"

---------- Turns -----------------------


    -- NewTurn:
    --     id: "check_TimeOver"

    --     command: ->

    --         if turn_number > turns
    --             fire_event
    --                 name: "TimeOver"


--------- Side Turns ------------------

    SideTurn:
        id: "todo"

    TurnRefresh:
        id: "healing"

    TurnRefresh:
        id: "income"

    TurnRefresh:
        id: "restore_movement"

    TurnRefresh:
        id: "status"
