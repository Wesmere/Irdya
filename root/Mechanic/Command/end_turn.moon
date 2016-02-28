
wsl_command
    id: "end_turn"
    description: "Ends the turn of a side."

    command: ->

        turn_num = wesmere.current.turn_num

        current_turn_side = wesmere.current.side_num
        new_turn_side = (current_turn_side + 1) % #wesmere.sides

        new_turn = true --- @todo

        if new_turn
            wesmere.fire_event("Turn" + turn_num)
            wesmere.fire_event("NewTurn")

        wesmere.fire_event("SideTurn")
        wesmere.fire_event("Side" + side_num + "Turn")
        wesmere.fire_event("SideTurn" + turn_num)
        wesmere.fire_event("Side" + side_num + "Turn" + turn_num)

        --- @todo healing
        --- @todo income

        wesmere.fire("TurnRefresh")
        wesmere.fire("Side" + side_num + "TurnRefresh")
        wesmere.fire("Turn" + turn_num + "Refresh")
        wesmere.fire("Side" + side_num + "Turn" + turn_num + "Refresh")
