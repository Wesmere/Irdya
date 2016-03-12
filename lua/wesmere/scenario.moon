----
-- wesmere = require "init"

import fire_event, wsl_error, add_event_handler, register_wsl_action from require "actions"
import content, ENV from require "wesmods"
import try, wrapInArray from require "misc"
import add_side from require "sides"

import setfenv, getfenv from require "pl.utils"

map = require "map"


log =
    trace: -> --print
    error: error
    info: print

-- 1 Predefined Events Without Filters
-- 1.1 preload okay
-- 1.2 prestart okay
-- 1.3 start okay
-- 1.4 new turn okay
-- 1.5 turn end okay
-- 1.6 turn X end okay
-- 1.7 side turn okay
-- 1.8 ai turn todo
-- 1.9 turn refresh okay
-- 1.10 turn X okay
-- 1.11 side X turn Y okay
-- 1.12 side X turn okay
-- 1.13 side turn X okay
-- 1.14 side X turn Y refresh okay
-- 1.15 side X turn refresh okay
-- 1.16 turn X refresh okay
-- 1.17 side turn end okay
-- 1.18 time over okay
-- 1.19 enemies defeated todo
-- 1.20 victory todo
-- 1.21 defeat todo

-- 2 Predefined Events With Filters
-- 2.1 moveto
-- 2.2 sighted
-- 2.3 enter_hex
-- 2.4 exit_hex
-- 2.5 attack
-- 2.6 attack end
-- 2.7 attacker hits
-- 2.8 attacker misses
-- 2.9 defender hits
-- 2.10 defender misses
-- 2.11 petrified
-- 2.12 last breath
-- 2.13 die
-- 2.14 capture
-- 2.15 recruit
-- 2.16 prerecruit
-- 2.17 recall
-- 2.18 prerecall
-- 2.19 advance
-- 2.20 pre advance
-- 2.21 post advance
-- 2.22 select
-- 2.23 menu item X
-- 2.24 unit placed (Version 1.13.3 and later only)









Scenario = (scenario, extra_config) ->

    -- private fields
    turn_number = 0
    turn_side = 0
    end_level_data = false
    turn_ended = false

    state =
        board: -- all childs are accessed like board.thing[x][y]
            units: {} -- id -> loc and [x][y] -> Unit
            villages: {}
            map:
                width: 0
                height: 0
                border_size: 0
        sides: {}
        units: {} -- holds the units id -> Unit
        time: {}
        area: {}
        current:
            event_context: {}
            event_handlers: {}

    is_regular_game_end = () ->
        return end_level_data != false

    set_end_level_data = (data) ->
        end_level_data = data

    get_end_level_data = ->
        return end_level_data

    end_turn = ->
        turn_ended = true

    end_level = (cfg) ->
        -- ignore when the game is already stopped?
        if is_regular_game_end! --play_controller_.is_regular_game_end()
            return false

        data =
            proceed_to_next_level: if proceed = cfg["proceed_to_next_level"] then proceed else true
            transient:
                custom_endlevel_music: cfg["music"]
                carryover_report: if report = cfg["carryover_report"] then report else true
                -- linger_mode: cfg["linger_mode"].to_bool(true) && !teams().empty();
                reveal_map: if reveal = cfg["reveal_map"] then reveal else true
                -- prescenario_save: cfg["save"].to_bool(true);
            -- replay_save: cfg["replay_save"].to_bool(true);
            is_victory: cfg["result"] == "victory"
        set_end_level_data(data)
        return true


    -- Let's load the map.
    if map_data = scenario.map_data
        map.load_map(state, map_data, scenario.border_size)
    elseif map_id = scenario.map
        map.load_map(state, map_id, scenario.border_size)

    do
        import fire_event, add_event_handler from require "actions"
        import set_variable, get_variable from require "variables"
        import get_unit, get_units, put_unit, erase_unit from require "units"
        import get_locations, get_terrain from require "map"
        import match_side, get_village_owner from require "sides"
        import add_time_area, remove_time_area, get_time_of_day from require "time"
        assert match_side
        assert get_village_owner

        wsl_actions = {}

        env = {
            wesmere: {
                current: state.current
                add_time_area: (cfg) -> add_time_area(state,cfg)
                get_time_of_day: (...) -> get_time_of_day(state, ...)
                remove_time_area: (id) -> remove_time_area(state,id)
                :wsl_actions --: content.Mechanic.wsl_action
                erase_unit: (x, y) -> erase_unit(state, x, y)
                put_unit: (unit, x, y) -> put_unit(state, unit, x, y)
                :end_turn
                :end_level
                fire_event: (name, x1, y1, x2, y2, w1, w2) -> fire_event(state, name, x1, y1, x2, y2, w1, w2)
                add_event_handler: (cfg) -> add_event_handler(state, cfg)
                get_locations: (cfg) -> get_locations(state, cfg)
                get_terrain: (x, y) -> get_terrain(state, x, y)
                get_village_owner: (x, y) -> get_village_owner(state, x, y)
                -- :end_level_data
                get_units: (filter) -> get_units(state, filter)
                get_unit: (x, y) -> get_unit(state, x, y)
                set_variable: (name, value) -> set_variable(state, name, value)
                get_variable: (name) -> get_variable(state, name)
                debug: require("moon").p
                wsl_error: error
            } --require "init"
            :ipairs
            :error
            :assert
            :tostring
            :debug
            :print
            :wrapInArray
            :try
            Loc: require "Location"
        }

        -- Make the wsl_actions ready and insert in event_context
        for key, action in pairs content.Mechanic.wsl_action
            if func = action.action
                if type(func) == "function"
                    setfenv(func, env)
                    wsl_actions[key] = func
                    state.current.event_context[key] = func
                -- else print "function not table bah in #{action.id}"
            -- else print "No 'action' function in #{action.id}"


    -- merge the Scenario environment into the event_context
    --- @todo maybe that can be solved better
    for key, thing in pairs ENV.folders.Scenario

        if type(thing) == "function"
            setfenv(thing, state.current.event_context)

        state.current.event_context[key] = thing
        --- @todo do validation here?


    -- setup the toplevel events
    for key, events in pairs scenario
        char = key\sub(1,1)
        unless char\match("%u")
            continue
        events = wrapInArray(events)
        for event in *events
            switch type(event)
                when "table"
                    event.name = key
                    add_event_handler(state, event)
                when "function"
                    add_event_handler state, {
                        name: key
                        command: event
                    }

    state.sides = wrapInArray(scenario.side)

    -- public functions
    set_next_scenario = (id) ->

    check_end_level = ->
        return false unless is_regular_game_end!

        return true

    local check_end_turn
    new_side_turn = ->
        turn_side += 1
        assert state.sides[turn_side]
        fire_event(state, "SideTurn")
        fire_event(state, "Side#{turn_side}Turn")
        fire_event(state, "SideTurn#{turn_number}")
        fire_event(state, "Side#{turn_side}Turn#{turn_number}")
        fire_event(state, "TurnRefresh")
        fire_event(state, "Side#{turn_side}TurnRefresh")
        fire_event(state, "Turn#{turn_number}Refresh")
        fire_event(state, "Side#{turn_side}Turn#{turn_number}Refresh")
        return if is_regular_game_end!
        check_end_turn!


    new_turn = ->
        return if is_regular_game_end!
        turn_number += 1
        turn_side = 0

        if turn_number >= scenario.turns
            fire_event(state, "TimeOver")

        fire_event(state, "Turn#{turn_number}")
        fire_event(state, "NewTurn")

        if #state.sides > 0
            new_side_turn!


    check_end_turn = ->
        return unless turn_ended
        turn_ended = false

        fire_event(state, "SideTurnEnd")
        fire_event(state, "Side#{turn_side}TurnEnd")
        fire_event(state, "SideTurn#{turn_number}End")
        fire_event(state, "Side#{turn_side}Turn#{turn_number}End")

        if turn_side == #state.sides
            fire_event(state, "TurnEnd")
            fire_event(state, "Turn#{turn_number}End")
            new_turn!
        else
            new_side_turn!


    start = ->
        fire_event(state, "Preload") -- should be fired every time a scenario got reloaded
        fire_event(state, "Prestart") -- before anything is on the screen
        fire_event(state, "Start")
        unless check_end_level!
            new_turn!

    {
        :get_end_level_data
        :is_regular_game_end
        :start
    }



load_scenario = (scenario, extra_config) ->
    assert(scenario, "Missing first arguement")
    log.trace("Scenario started:" .. scenario.id)

    ----
    -- @todo check if every used terrain type is known
    -- Side setup
    assert(scenario.side)
    sides = wrapInArray(scenario.side)
    for side in *sides
        add_side(side)


load_test = (scenario, extra_config) ->
    assert(scenario, "Missing first arguement")
    switch type scenario
        when "string"
            cfg = content.Scenario.test[scenario]
            return Scenario(cfg, extra_config)
        when "table"
            return Scenario(scenario, extra_config)


load_multiplayer = () ->




{
    :load_test
--     :get_end_level_data
--     :end_level
--     :end_level_data
--     :is_regular_game_end
--     :start_test
--     :start_scenario
}

-- return Scenario
