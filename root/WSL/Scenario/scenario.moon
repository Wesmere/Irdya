
Side =

    side:
        type: "Integer"
        description: [[Fucking side]]
    controller:
        type: "enum"
        enum: {"ai", "human", "null"}
    -- no_leader:
    recruit:
        type: "unit_type_id"
        description: [[a list of unit types. At the beginning of the scenario, the side gains recruitment of these units.]]
        is_list: true
    gold:
        default: 100
        description: [[the starting gold for this side. Default 100. (If gold is carried over from a previous scenario, this value is the minimum starting gold.)]]
        type: "Integer"
    income:
        default: 0
        description: [[the base income for this side, default 0. This is added to base_income, [game_config] to determine the side's base income. (see GameConfigWML).]]
    hidden:
        default: false
        type: "Bool"
        description: [[if 'yes', side is not shown in status table.]]
    fog:
        default: false
        type: "Bool"
        description: [[if 'yes', this side cannot see any tiles it is not within vision of, except at the start. Please note that the AI currently ignores the fog.]]
    -- fog_data: -- used in saved games.
    -- fog_override:
    shroud:
        default: false
        type: "Bool"
        description: [[if 'yes', this side cannot see any tiles it has not moved within sight of. Please note that the AI currently ignores the shroud. NOTE: with shroud=no, this team *ignores* shroud, so it is not possible to modify it using place_shroud and remove_shroud tags. If you want to do so, use "shroud=yes" and place_shroud/remove_shroud tags.]]
    -- shroud_data:
    -- persistent:
    -- save_id:
    -- previous_save_id:
    team_id:
        type: "String"
        description: ""
        --default:
    team_name:
        type: "tString"
        description: [[a translatable string representing the team's description. This has no effect on alliances. Default team_name.]]
    current_player:
        type: "tString"
        description: [[a translatable string representing the player's or leader's name. Defaults to the leader's id; if the side's leader is a human player in multiplayer, the default is the player's username.]]
    color:
        description: [[May be either a numeric color index or a color name (e.g. 'blue', 'purple', 'orange', etc.). The numeric form is deprecated. The default list of numbers and corresponding colors can be found in data/core/team_colors.cfg.]]
        type: "team_color"
    flag:
        description: [[a custom flag animation to use instead of the default one to mark captured villages. An automatic side-coloring is applied.]]
    flag_icon:
        description: [[a custom flag icon to indicate the side playing in the statusbar (a size of 24x16 is recommended). An automatic side-coloring is applied.]]
    village_gold:
        description: [[the amount of gold given to this side per village it controls per turn. Default specified in village_income, [game_config] (GameConfigWML).]]
    village_support:
        description: [[the number of unit levels this side is able to support (does not pay upkeep on) per village it controls. Default specified in village_support, [game_config] (GameConfigWML).]]
        -- default: Config.village_support
    recall_cost:
        description: [[the amount of gold it costs to recall a unit. Default specified in recall_cost, [game_config] (GameConfigWML).]]
        -- default: Config.recall_cost
    -- share_maps:
    -- share_view:
    -- share_vision:
    scroll_to_leader:
        default: true
        description: [[ optional. If 'no', scroll to the leader is not performed on the start of each turn. (default: yes)]]
        type: "Bool"
    surpress_end_turn_confirmation:
        default: false
        description: [[If "yes", then the player will not be asked to confirm ending their turn even if they have not done anything. This is provided for some (probably few) user-made scenarios in which players often skip their turns. (default: no)]]
    -- ai:
    village:
        description: [[describes a village the side begins in control of.]]
        list: true
        type: "table"
        -- schema: SimpleLoc
    -- unit: UnitWSL
        description: [[describes a unit which begins on the side. See SingleUnitWSL. If the side has a recall list and the unit is not given a location, it will start on the recall list. Note that the side attribute under [unit] will be ignored, as the side will come from the side attribute of [side].]]
    -- leader: UnitWSL
        description: [[same as [unit] except that canrecruit will default to yes and current position to the side starting location if not specified.]]
    defeat_condition:
        description: [[Specifies when a side is considered defeated this is checked for all sides, after every player action and at the beginning of every turn.
no_leader_left: (default) The side is considered defeated if it has no units with canrecruit=yes
no_units_left: The side is defeated as soon as it has no units left.
never: The side is never considered defeated.
always: The side is always considered defeated.
For the meaning and significance of defeated, see ScenarioWSL#Scenario_End_Conditions]]
        type: "enum"
        enum: {"no_leader_left", "no_units_left", "never", "always"}
        default: "no_leader_left"
    -- --- multiplayer only stuff
    -- allow_player:
    -- disallow_observers:
    -- disallow_shuffle:
    -- chose_random:
    -- controller_lock:
    -- team_lock:
    -- color_lock:
    -- gold_lock:
    -- income_lock:
    -- faction_lock:
    -- faction:
    -- faction_from_recruit:

wsl_table
    id: "scenario"
    scope: "Scenario"
    on_load: (cfg) ->
        state.Scenario[cfg.id] = cfg
    on_scan: (cfg, file, path) ->
        state.Registry.scenarios[cfg.id] = false

    ignore_cap_keys: true
    type: "table"
    mandatory: true
    description: [[  ]]
    schema:
        id:
            type: "String"
            mandatory: true
            description: [[A unique identifier for this scenario. All scenarios must have an id. Can't clash with id used in [multiplayer] tags.]]
        next_scenario:
            type: "String"
            description: [[The id of the scenario to load when the current one is won. This can be changed dynamically, to build non-linear campaigns.]]
        name:
            type: "tString"
            description: [[(translatable) is shown in several places in the level, including the intro screen. It is also the default name for saves on the level.]]
            --- @TODO mandatory?
        map_data:
            type: "String"
            description: [[inputs valid Wesmere map data. See 'BuildingMaps' for a description of the Wesnoth map syntax.]]
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
            description: [[specifies a comma-separated list of music tracks which may be chosen to play on defeat. If not provided, the default in GameConfigWML is used instead. May be overridden by endlevel clauses.]]
            -- default: Config.defeat_music
            list: true
        victory_music:
            type: "String"
            description: [[specifies a comma-separated list of music tracks which may be chosen to play on victory. If not provided, the default in GameConfigWML is used instead. May be overridden by endlevel clauses.]]
            list: true
            -- default: Config.victory_music
        theme:
            type: "String"
            description: [[the name of the UI theme that should be used when playing this scenario.]]
        victory_when_enemies_defeated:
            type: "Bool"
            default: true
            description:
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
            description: "when this is set to yes (default), for sides who got defeated (according to the side.defeat_condition), carryover will be removed."
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
