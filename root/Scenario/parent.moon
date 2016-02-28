---------------------------------------
-- This is the default parent scenario.
-- It implements all the gameplay.
--

scenario

    id: "parent"
    parent: false

------------- Setup ---------------

    Preload:
        id: "todo"

    Prestart:
        id: "todo"

    Start:
        id: "todo"

    _Prestart:
        id: "last prestart"
        command: ->
            wesmere.fire_event("Start")

    _Start:
        id: "last start"
        command: ->
            wesmere.fire_event("NewTurn")

---------- Turns -----------------------

    NewTurn:
        id: "todo"

--------- Side Turns ------------------

    SideTurn:
        id: "todo"

    TurnRefresh:
        id: "healing"

    TurnRefresh:
        id: "income"
