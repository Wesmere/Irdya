wsl_handler
    id: "test"
    scope: "Scenario"

wsl_handler
    id: "tutorial"
    scope: "Scenario"

wsl_handler
    id: "multiplayer"
    scope: "Scenario"

wsl_handler
    id: "scenario"
    scope: "Scenario"
    on_load: (cfg) ->
        state.Scenario[cfg.id] = cfg
    on_scan: (cfg, file, path) ->
        state.Registry.scenarios[cfg.id] = false

    ignore_cap_keys: true
    type: "table"
    mandatory: true
    description: [[The wsl handler functions 'multiplayer', 'test', 'tutorial' and 'scenario' are all formatted the same way. The difference between these tags is the way that the scenarios they describe are accessed.
The keys id and next_scenario affect how scenarios can be accessed. Whenever a scenario is won, the scenario with id:next_scenario of the same tag type will be played. Units from the first scenario will be available for recall in the second.
Some scenarios can be played without playing other scenarios first (in this case there is nothing on the recall list). These scenarios are called initial scenarios.
A list of initial scenarios, and how to access them:
All [multiplayer] scenarios (without allow_new_game:false) are initial scenarios listed in the multiplayer scenario selector screen (accessed by the "multiplayer" button).
The [test] scenario with the attribute id=test is an initial scenario. This test scenario can be accessed by running the game in test mode. (note: this is NOT the same as debug mode. It can be accessed using -t or --test)
The [tutorial] scenario with the attribute id=tutorial is an initial scenario. The tutorial is accessed by clicking on the "tutorial" button.
Any [scenario] scenario with an id listed in the value of first_scenario in a campaign tag (see CampaignWSL) is an initial scenario accessed by selecting that campaign after clicking on the "campaign" button.]]
    schema:
        id:
            type: "String"
            mandatory: true
            description: [[A unique identifier for this scenario. All scenarios must have an id. Can't clash with id used in multiplayer tables.]]
        next_scenario:
            type: "String"
            description: [[The id of the scenario to load when the current one is won. This can be changed dynamically, to build non-linear campaigns.]]
        name:
            type: "tString"
            description: [[(translatable) is shown in several places in the level, including the intro screen. It is also the default name for saves on the level.]]
            --- @TODO mandatory?
        map_data:
            type: "String"
            description: [[inputs valid Wesmere map data. See 'BuildingMaps' for a description of the Wesmere map syntax.]]
        turns:
            type: "Integer"
            description: [[sets an event on turn _turns_ causing the player to lose. Use -1 to have no turn limit (default). See also EventWSL]]
        turn_at:
            type: "Integer"
            description: [[the turn to start on (default=1)]]
            default: 1
        random_start_time:
            description: [[controls random starting time of day. Possible values are yes and no or list of possible start times; starting from 1 to number of times. for example random_start_time=2,3,5,6 (default depends on version and mp/sp, better include this key)]]
        music:
            list: true
        defeat_music:
            type: "String"
            description: [[specifies a comma-separated list of music tracks which may be chosen to play on defeat. If not provided, the default in GameConfigWSL is used instead. May be overridden by endlevel clauses.]]
            -- default: Config.defeat_music
            list: true
        victory_music:
            type: "String"
            description: [[specifies a comma-separated list of music tracks which may be chosen to play on victory. If not provided, the default in GameConfigWSL is used instead. May be overridden by endlevel clauses.]]
            list: true
            -- default: Config.victory_music
        theme:
            type: "String"
            description: [[the name of the UI theme that should be used when playing this scenario.]]
        victory_when_enemies_defeated:
            type: "Bool"
            default: true
            description: ""
        carryover_percentage:
            default: 80
            type: "Integer"
            description: [[by default 80% of the gold is carried over to the next scenario, with this key the amount can be changed.]]
        carryover_add:
            default: false
            type: "Bool"
            description: [[if true the gold will be added to the starting gold the next scenario, if false the next scenario will start with the amount of the current scenario (after taxes) or the minimum in the next scenario. Default is false.]]
        remove_from_carryover_on_defeat:
            default: true
            type: "Bool"
            description: "when this is set to true (default), for sides who got defeated (according to the side.defeat_condition), carryover will be removed."
        disallow_recall:
            type: "Bool"
            description:
            default: false
        experience_modifier:
            default: 100
            type: "Integer"
            description:
        label:
            type: ""
            description: "sets a label"
        --item:
        --time:
        --current_time:
        --time_area:
        side: Side
