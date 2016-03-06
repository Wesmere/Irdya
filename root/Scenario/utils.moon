export ^

----
-- @module actionWSL_utils

----
-- @section utils

-- This file contains general utility functions for WSL authors.
-- Later functions in this file are built using earlier ones, which
-- is why they live here rather than being broken out into topic-specific files.

----
-- Function to define a 'quantity' differently based on difficulty levels.
QUANTITY = (NAME, EASY_VALUE, NORMAL_VALUE, HARD_VALUE) ->
    if EASY
        return { [NAME]: EASY_VALUE }
    if NORMAL
        return { [NAME]: NORMAL_VALUE }
    if HARD
        return { [NAME]: HARD_VALUE }

----
-- Four-difficulty version of QUANTITY
QUANTITY4 = (NAME, EASY_VALUE, NORMAL_VALUE, HARD_VALUE, NIGHTMARE_VALUE) ->
    if EASY
        return { [NAME]: EASY_VALUE }
    if NORMAL
        return { [NAME]: NORMAL_VALUE }
    if HARD
        return { [NAME]: HARD_VALUE }
    if NIGHTMARE
        return { [NAME]: NIGHTMARE_VALUE }

----
-- No tab or space-based indentation for these macros to avoid trouble when these macros are used
-- in the middle of a quoted string literal
ON_DIFFICULTY = (EASY_VALUE, NORMAL_VALUE, HARD_VALUE) ->
-- #ifdef EASY
-- #define ON_DIFFICULTY EASY_VALUE NORMAL_VALUE HARD_VALUE
-- {EASY_VALUE}#enddef
-- #endif
-- #ifdef NORMAL
-- #define ON_DIFFICULTY EASY_VALUE NORMAL_VALUE HARD_VALUE
-- {NORMAL_VALUE}#enddef
-- #endif
-- #ifdef HARD
-- #define ON_DIFFICULTY EASY_VALUE NORMAL_VALUE HARD_VALUE
-- {HARD_VALUE}#enddef
-- #endif




-- # No tab or space-based indentation for these macros to avoid trouble when these macros are used
-- # in the middle of a quoted string literal
-- #
-- # wslindent: start ignoring
-- # wslscope: start conditionals
-- #ifdef EASY
-- #define ON_DIFFICULTY4 EASY_VALUE NORMAL_VALUE HARD_VALUE NIGHTMARE_VALUE
-- {EASY_VALUE}#enddef
-- #endif
-- #ifdef NORMAL
-- #define ON_DIFFICULTY4 EASY_VALUE NORMAL_VALUE HARD_VALUE NIGHTMARE_VALUE
-- {NORMAL_VALUE}#enddef
-- #endif
-- #ifdef HARD
-- #define ON_DIFFICULTY4 EASY_VALUE NORMAL_VALUE HARD_VALUE NIGHTMARE_VALUE
-- {HARD_VALUE}#enddef
-- #endif
-- #ifdef NIGHTMARE
-- #define ON_DIFFICULTY4 EASY_VALUE NORMAL_VALUE HARD_VALUE NIGHTMARE_VALUE
-- {NIGHTMARE_VALUE}#enddef
-- #endif
-- # wslscope: stop conditionals
-- # wslindent: stop ignoring
-- # wslscope: prune ON_DIFFICULTY4

----
-- Function to define number of turns for different difficulty levels.
TURNS = (EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT) ->
    QUANTITY "turns", EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT

----
-- Four-difficulty version of TURNS
TURNS4 = (EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT, NIGHTMARE_AMOUNT) ->
    QUANTITY4 "turns", EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT, NIGHTMARE_AMOUNT

----
-- Macro which will let you say {GOLD x y z} to set
-- starting gold depending on easy/medium/hard - x/y/z
GOLD = (EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT) ->
    QUANTITY "gold", EASY_AMOUNT, NORMAL_AMOUNT, HARD_AMOUNT

-- #define GOLD4 EASY_AMOUNT NORMAL_AMOUNT HARD_AMOUNT NIGHTMARE_AMOUNT
--     # Four-difficulty version of GOLD
--     {QUANTITY4 gold {EASY_AMOUNT} {NORMAL_AMOUNT} {HARD_AMOUNT} {NIGHTMARE_AMOUNT}}
-- #enddef

-- #define INCOME EASY_AMOUNT NORMAL_AMOUNT HARD_AMOUNT
--     # Macro which will let you say {GOLD x y z} to set
--     # per-turn income depending on easy/medium/hard - x/y/z
--     {QUANTITY income {EASY_AMOUNT} {NORMAL_AMOUNT} {HARD_AMOUNT}}
-- #enddef

-- #define INCOME4 EASY_AMOUNT NORMAL_AMOUNT HARD_AMOUNT NIGHTMARE_AMOUNT
--     # Four-difficulty version of INCOME
--     {QUANTITY4 income {EASY_AMOUNT} {NORMAL_AMOUNT} {HARD_AMOUNT} {NIGHTMARE_AMOUNT}}
-- #enddef

-- #define NO_INCOME
--     # Used to specify when a side should not have any income
--     # every turn.
--     income=-2
-- #enddef

-- #define ATTACK_DEPTH EASY_VALUE NORMAL_VALUE HARD_VALUE
--     # Macro to define AI attack depth for different difficulty levels
--     # (set it to 1-6)
--     {QUANTITY attack_depth {EASY_VALUE} {NORMAL_VALUE} {HARD_VALUE}}
-- #enddef

-- #define ATTACK_DEPTH4 EASY_VALUE NORMAL_VALUE HARD_VALUE NIGHTMARE_VALUE
--     # Four-difficulty version of ATTACK_DEPTH
--     {QUANTITY4 attack_depth {EASY_VALUE} {NORMAL_VALUE} {HARD_VALUE} {NIGHTMARE_VALUE}}
-- #enddef

-- Macro to make an AI team not recruit scouts.
NO_SCOUTS = (cfg) ->
    cfg.villages_per_scout = 0
    return cfg

-- Macro to quickly pick a random value (in the $random variable, to avoid
-- cluttering up savegames with such temporary variables).
RANDOM = (THING_VALUE) ->
    set_variable
        name: "random"
        rand: THING_VALUE

-- Macro to initialize a variable.  Strictly a syntatic shortcut.
VARIABLE = (VAR, VALUE) ->
    set_variable
        name: VAR
        value: VALUE

-- Assigns a persistent variable with the contents of a standard variable.
GLOBAL_VARIABLE = (NAMESPACE, LOCAL_VAR_NAME, GLOBAL_VAR_NAME, SIDE) ->
    set_global_variable
        namespace: NAMESPACE
        from_local: LOCAL_VAR_NAME
        to_global: GLOBAL_VAR_NAME
        side: SIDE

-- Retrieves the contents of a persistent variable and stores them in a standard variable.
VARIABLE_FROM_GLOBAL = (NAMESPACE, GLOBAL_VAR_NAME, LOCAL_VAR_NAME, SIDE) ->
    get_global_variable
        namespace: NAMESPACE
        from_global: GLOBAL_VAR_NAME
        to_local: LOCAL_VAR_NAME
        side: SIDE
        immediate: false

-- Macro to do mathematical operations on variables.
VARIABLE_OP = (VAR, OP_NAME, VALUE) ->
    set_variable
        name: VAR
        [OP_NAME]: VALUE

-- Macro to do conditional operations on variables.
VARIABLE_CONDITIONAL = (VAR, OP_NAME, VALUE) ->
    variable
        name: VAR
        [OP_NAME]: VALUE

-- Macro to clear a variable previously set.
CLEAR_VARIABLE = (VAR_NAME) ->
    clear_variable
        name: VAR_NAME

----
-- Clears a persistent variable entirely.
CLEAR_GLOBAL_VARIABLE = (NAMESPACE, MY_VARIABLE_NAME, SIDE) ->
    clear_global_variable
        namespace: NAMESPACE
        global: MY_VARIABLE_NAME
        side: SIDE
        immediate: false

-- #define FOREACH ARRAY_VALUE VAR
-- # Macro to begin a WSL clause that iterates over an array.
-- {VARIABLE {VAR} 0}
-- [while]
--     [variable]
--     name={VAR}
--     less_than=${ARRAY_VALUE}.length
--     [/variable]
--     [do]

-- #define NEXT VAR
-- # Macro to end a WSL clause that iterates over an array.
--     [set_variable]
--     name={VAR}
--     add=1
--     [/set_variable]
--     [/do]
-- [/while]
-- {CLEAR_VARIABLE {VAR}}

-- #define REPEAT NUMBER BODY_WSL
--     # Macro to execute some WSL a defined number of times.
--     #
--     # Example that causes screen to quake 5 times:
--     #! {REPEAT 5 (
--     #!     {QUAKE "rumble.ogg"}
--     #! )}
--     {VARIABLE REPEAT_i 0}
--     [while]
--         [variable]
--             name=REPEAT_i
--             less_than={NUMBER}
--         [do]
--             {BODY_WSL}
--             {VARIABLE_OP REPEAT_i add 1}
--     {CLEAR_VARIABLE REPEAT_i}

----
-- Call this to lookup an array element that has a particular key-value pair
-- then it saves the index of that element, or
-- if the key-value pair is not found it saves the array's length
LOOKUP_INDEX = (FROM_ARRAY_NAME, WHERE_KEY_NAME, WHERE_VALUE, SAVE_AS_NAME) ->
--     {VARIABLE {SAVE_AS_NAME} 0}
--     [while]
--         [variable]
--             name={SAVE_AS_NAME}
--             less_than=${FROM_ARRAY_NAME}.length
--         [variable]
--             name={FROM_ARRAY_NAME}[${SAVE_AS_NAME}].{WHERE_KEY_NAME}
--             not_equals={WHERE_VALUE}
--         [do]
--             {VARIABLE_OP {SAVE_AS_NAME} add 1}

----
-- Call this to look up an array element that has a particular key-value pair
-- then it saves another key from that same element.
LOOKUP_VALUE = (FROM_ARRAY_NAME, WHERE_KEY_NAME, WHERE_VALUE, SAVE_KEY_NAME, DEFAULT_VALUE, SAVE_AS_NAME) ->
--     {LOOKUP_INDEX {FROM_ARRAY_NAME} {WHERE_KEY_NAME} {WHERE_VALUE} {SAVE_AS_NAME}}
--     [if]
--         [variable]
--             name={SAVE_AS_NAME}
--             numerical_equals=${FROM_ARRAY_NAME}.length
--         [then]
--             {VARIABLE {SAVE_AS_NAME} {DEFAULT_VALUE}}
--         [else]
--             {VARIABLE {SAVE_AS_NAME} ${FROM_ARRAY_NAME}[${SAVE_AS_NAME}].{SAVE_KEY_NAME}}

----
-- Alters a unit variable (such as unit.x, unit.type,
-- unit.side), handling all the storing and unstoring.
--
-- @usage: -- Example that flips all spearmen to side 2:
-- MODIFY_UNIT {type: "Spearman"}, "side", 2
MODIFY_UNIT = (FILTER, VAR, VALUE) ->
    for unit in *store_unit
            filter: FILTER
            kill: true
        unit[VAR] = VALUE
        unstore_unit
            variable: "unit"
            find_vacant: false
----
--
-- @tparam SUF FILTER
-- @tparam number OFFSET_X
-- @tparam number OFFSET_Y
MOVE_UNIT_BY = (FILTER, OFFSET_X, OFFSET_Y) ->
    MOVE_UNIT_store = store_unit
        filter: FILTER
        variable: "MOVE_UNIT_store"
        kill: true
    for mover in MOVE_UNIT_store
        mover.x += OFFSET_X
        mover.y += OFFSET_Y
        unstore_unit
            variable: mover
            find_vacant: false
----
-- Moves a unit from its current location to the given location,
-- displaying movement normally.
--
-- Note that setting the destination on an existing unit does not kill either
-- one, but causes the unit to move to the nearest vacant hex instead.
-- @tparam SUF FILTER
-- @tparam number TO_X
-- @tparam number TO_Y
MOVE_UNIT = (FILTER, TO_X, TO_Y) ->
    with FILTER
        .to_x = TO_X
        .to_y = TO_Y
        .fire_event = false
    move_unit FILTER
----
-- Heals all? unit(s?) matching the given filter from all pain and diseases.
-- @tparam SUF FILTER
-- @treturn number amount of hp healed
FULL_HEAL = (FILTER) ->
    heal_unit
        filter: FILTER
        amount: "full"
        restore_statuses: true

----
-- This places a given unit back to the recall list of the side it is on.
-- Note however, that the unit is not healed to full health, so when
-- recalled (even if not until the next scenario) the unit may have less
-- than his maximum hp left.
--
-- @usage An example that returns all units stepping on (20,38) back to the recall
-- list:
--
-- event
--     name=moveto
--
--     filter
--          x: 20
--          y: 38
--
--     command: PUT_TO_RECALL_LIST {x: 20, y: 38}
PUT_TO_RECALL_LIST = (FILTER) ->
    put_to_recall_list FILTER
----
--
-- @tparam string IMAGE
-- @tparam string TEXT
-- @fixme Documentation for these is needed.
MENU_IMG_TXT = (IMAGE, TEXT) ->
    return "&" .. IMAGE .. "=" .. TEXT
----
--
-- @tparam string IMAGE
-- @tparam string FIRST_TEXT_VALUE
-- @tparam string SECOND_TEXT_VALUE
MENU_IMG_TXT2 = (IMAGE, FIRST_TEXT_VALUE, SECOND_TEXT_VALUE) ->
    return "&" .. IMAGE .. "=" .. FIRST_TEXT_VALUE .. "=" .. SECOND_TEXT_VALUE
----
-- Allows a side to seemingly recruit variations of a given unit,
-- such as the Walking Corpse.
--
-- @usage An example which makes side 2 have a 50% chance of getting a normal WC
-- and a 50% chance of getting either a drake or dwarf variation:
-- RECRUIT_UNIT_VARIATIONS 2, "Walking Corpse", {"none","none","drake","dwarf"}
RECRUIT_UNIT_VARIATIONS = (SIDE, TYPE, VARIATIONS) ->
    event
        name: "Prerecruit"
        first_time_only: false
        filter:
            side: SIDE
            type: TYPE
        command: ->
            shuffleArray(VARIATIONS)
            variation = VARIATIONS[1]
            unless variation == "none"
                object
                    duration: "forever"
                    silent: true
                    filter:
                        x: x1
                        y: y1
                    effect:
                        apply_to: "variation"
                        name: variation
                    effect:
                        apply_to: "hitpoints"
                        heal_full: true
----
-- Scatters the given kind of units randomly on a given area on the map.
--
-- @tparam number NUMBER the amount of numbers to scatter
-- @tparam {unit_type_id,...} TYPES
-- @tparam number PADDING_RADIUS minimum distance between the units
-- @tparam SLF FILTER
-- @tparam Unit_WSL UNIT_WSL
-- @treturn {Unit,...} The list containing the created units
--
-- An example which scatters some loyal elves on forest hexes in
-- x,y=10-30,20-40, at a minimum of three hexes apart from each other and
-- never on top of or adjacent to any already existing units:
-- @usage SCATTER_UNITS 20, {"Elvish Fighter", "Elvish Archer", "Elvish Shaman"}, 3,
--     {
--         terrain: "Gs^Fp"
--         x: "10-30"
--         y: "20-40"
--         not:
--             filter: {}
--         not:
--             filter_adjacent_location:
--                 filter: {}
--     },
--     {
--         side: 2
--         generate_name: true
--         random_traits: true
--         modifications: TRAIT_LOYAL
--     }
SCATTER_UNITS = (NUMBER, TYPES, PADDING_RADIUS, FILTER, UNIT_WSL) ->
    FILTER.include_borders = false -- isn't excluding borders the deafault?
    possible_unit_locations = store_locations FILTER
    j = 1
    res = for i=1, NUMBER
        break if #possible_unit_locations == 0
        shuffleArray(possible_unit_locations)
        loc = possible_unit_locations[1]
        with UNIT_WSL
            .x = loc.x
            .y = loc.y
            .type = TYPES[j]
        if j == #TYPES then j = 1 else j += 1
        possible_unit_locations = store_locations
            find_in: possible_unit_locations
            not:
                x: loc.x
                y: loc.y
                radius: PADDING_RADIUS
        unit UNIT_WSL
    return res
----
-- Invisibly forces certain units to always have a specific chance to hit
-- when fighting against certain other units.
--
-- Note that the player still only sees the regular damage calculations, so
-- this is useful if you need to give an invisible helping hand to the player
-- or AI. For example, if the player is forced to attack with only a couple
-- of units at the beginning of a scenario, you can use this to ensure that
-- simply having bad luck cannot ruin their attempt so easily. Also you might
-- have enemy leaders which the player is not supposed to fight or be able to
-- defeat due to storyline reasons, but could theoretically still kill with
-- some clever trick, AI mistake or sheer exceptional luck.
--
-- @usage An example which forces Konrad's attacks to always hit Li'sar, but only
-- after turn 10:
-- FORCE_CHANCE_TO_HIT {id: "Konrad"}, {id: "Li'sar"}, 100,
--     {
--         variable:
--             name: "turn_number"
--             greater_than: 10
--     }
FORCE_CHANCE_TO_HIT = (FILTER, SECOND_FILTER, CTH_NUMBER, EXTRA_CONDITIONS_WSL) ->
    command = () ->
        for i in unit.attack
            set_variables
                name: 'i["specials"]["chance_to_hit"]'
                value:
                    id: "forced_cth"
                    value: CTH_NUMBER
                    cumulative: false
        event
            name: "AttackEnd"
            delayed_variable_substitution: true
            command: ->
                for i in unit.attack
                    i.specials.chance_to_hit = i.specials.original_chance_to_hit
    event
        name: "Attack"
        first_time_only: false
        filter: FILTER
        filter_second: SECOND_FILTER
        filter_condition: EXTRA_CONDITIONS_WSL
        :command
    -- The following event is a simple duplicates of the above ones, with the
    -- primary and secondary units reversed so that the effect is applied also on
    -- defense.
    event
        name: "Attack"
        first_time_only: false
        filter: SECOND_FILTER
        filter_second: FILTER
        filter_condition: EXTRA_CONDITIONS_WSL
        :command
----
-- Gives a side gold and informs the player about it.
-- @tparam number AMOUNT the amount of gold to give to the player's side
-- @tparam number SIDE the side the gold is given to. No SSF support.
-- @todo add SSF support.
-- @todo add message for the other players!
LOOT = (AMOUNT, SIDE) ->
    message
        side_for: SIDE
        speaker: "narrator"
        message: _ "You retrieve $amount_gold pieces of gold."
        image: "wesmere-icon"
        sound: "gold"
    gold
        side: SIDE
        amount: AMOUNT
