----
-- @todo
--

-- external dependencies
import setfenv, getfenv from require "pl.utils"
moon = require "moon"

-- internal dependencies
UnitMap = require "unit_map"
Location = require "Location"
import fire_event, wsl_error, add_event_handler, register_wsl_action from require "actions"
import content, ENV from require "wesmods"
import try, wrapInArray from require "misc"
import put_unit from require "units"
import load_map from require "map"


log =
    trace: -> --print
    error: error
    info: print


Scenario = (scenario, extra_config) ->

    -- private fields
    modified_turn_number = false
    turn_number = 0
    turn_side = 0
    turn_limit = -1
    end_level_data = false
    turn_ended = false

    -- used as self for all the wesmere methods
    state =

        units: {}

        board: -- all childs are accessed like board.thing[x][y]
            villages: {}
            map:
                width: 0
                height: 0
                border_size: 0
        sides: {}
        time: {}
        area: {}
        current:
            event_context: {}
            event_handlers: {}


    debug = ->
        moon.p(state)

    --- @todo move to time.moon ?
    set_schedule = (schedule) ->
        assert(schedule)
        assert(#schedule != 0)
        state.time = schedule
        assert(state.time)
        assert(#state.time != 0)

    get_turn = () ->
        return turn_number

    set_turn = (turn) ->
        modified_turn_number = turn

    set_turn_limit = (new_limit) ->
        turn_limit = new_limit

    get_turn_limit = () ->
        return turn_limit

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
        if is_regular_game_end!
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

    execute_command = ->
        print "execute_command not implemented yet."

    setup_event_context = ->
        import fire_event, add_event_handler from require "actions"
        import set_variable, get_variable from require "variables"
        import get_unit, get_units, put_unit, erase_unit, extract_unit from require "units"
        import get_locations, get_terrain from require "map"
        import match_side, get_village_owner, get_sides from require "sides"
        import add_time_area, remove_time_area, get_time_of_day from require "time"
        import find_vacant_tile from require "pathfinder"
        assert match_side
        assert get_village_owner

        wsl_actions = {}

        env = {
            wesmere: {
                :find_vacant_tile
                :execute_command
                get_sides: (...) -> get_sides(state, ...)
                sides: state.sides
                get_turn: -> return turn_number
                :set_turn
                :set_turn_limit
                :get_turn_limit
                :set_schedule
                current: state.current
                add_time_area: (cfg) -> add_time_area(state, cfg)
                get_time_of_day: (...) -> get_time_of_day(state, ...)
                remove_time_area: (id) -> remove_time_area(state, id)
                :wsl_actions --: content.Mechanic.wsl_action
                erase_unit: (...) -> erase_unit(state, ...)
                put_unit: (...) -> put_unit(state, ...)
                extract_unit: (...) -> extract_unit(state, ...)
                :end_turn
                :end_level
                fire_event: (...) -> fire_event(state, ...)
                add_event_handler: (cfg) -> add_event_handler(state, cfg)
                get_locations: (cfg) -> get_locations(state, cfg)
                get_terrain: (...) -> get_terrain(state, ...)
                get_village_owner: (...) -> get_village_owner(state, ...)
                -- :end_level_data
                get_units: (filter) -> get_units(state, filter)
                get_unit: (...) -> get_unit(state, ...)
                set_variable: (...) -> set_variable(state, ...)
                get_variable: (name) -> get_variable(state, name)
                debug: require("moon").p
                wsl_error: error
            } --require "init"
            :type
            :ipairs
            :error
            :assert
            :tostring
            :debug --- @todo this might be a fatal security problem
            :print
            :wrapInArray
            :try
            :string
            :tonumber
            Loc: require "Location"
        }

        -- Make the wsl_actions ready and insert in event_context
        for key, action in pairs content.Mechanic.wsl_action
            if func = action.action
                if type(func) == "function"
                    setfenv(func, env)
                    wsl_actions[key] = func
                    state.current.event_context[key] = func
                else print "action is not a function in #{action.id}"
            else print "No 'action' function in #{action.id}"

    setup = ->

        state.experience_modifier = scenario.experience_modifier or 100

        -- setup sides before the map, to store starting_locations.
        sides = wrapInArray(scenario.side)
        for i, side in ipairs sides
            state.sides[i] = side
            unless side.gold
                state.sides[i].gold = 0

        -- Let's load the map.
        --- @TODO support inline maps.
        if map_data = scenario.map_data
            load_map(state, map_data, scenario.border_size)
        elseif map_id = scenario.map
            load_map(state, map_id, scenario.border_size)
        width = state.board.map.width
        -- assert width > 0
        height = state.board.map.height
        -- assert height > 0
        state.units = UnitMap(width, height)

        for side in *state.sides
            unless side.no_leader
                if side.type
                    local loc
                    try
                        do: -> loc = Location(side)
                        catch: (err) ->
                            if loc = side.starting_location
                                put_unit(state, side, loc.x, loc.y)
                        finally: ->
                            if loc
                                put_unit(state, side, loc.x, loc.y)
                            elseif side.starting_location
                                loc = side.starting_location
                                put_unit(state, side, loc.x, loc.y)

            if unit = side.unit
                units = wrapInArray(unit)
                for unit in *units
                    put_unit(state, unit)

        turn_limit = scenario.turns or -1
        if time = scenario.time
            state.time = time
        -- assert scenario.time
        -- state.time = scenario.time

        setup_event_context!

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

    -- public functions
    set_next_scenario = (id) ->

    check_end_level = ->
        return false unless is_regular_game_end!
        return true

    local check_end_turn
    new_side_turn = ->
        turn_side += 1
        state.current.event_context.side_number = turn_side
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
        if modified_turn_number
            turn_number = modified_turn_number
            modified_turn_number = false
        else
            turn_number += 1
        state.current.event_context.turn_number = turn_number

        turn_side = 0

        if turn_number >= turn_limit
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

    try
        do: -> setup!
        catch: (err) ->
            error "Scenario Setup: #{err}"

    {
        :debug
        :get_turn
        :get_end_level_data
        :is_regular_game_end
        :start
    }


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
