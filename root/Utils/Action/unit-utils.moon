-- This file contains unit utility functions for WSL authors.

-- This needs to match the magic UNREACHABLE constant in unit_movement_type
UNREACHABLE = 99

-- # Use this to restrict a filter to on-map units, not the recall list.
-- #define NOT_ON_RECALL_LIST
--     [not]
--         x,y=recall,recall
--     [/not]
-- #enddef

-- # Rationale for the naming scheme of these generators:
-- # All generators take SIDE X Y for consistency.
-- # Those that begin with NAMED_ additionally take ID_STRING NAME_STRING
-- # The LOYAL_ macros set the loyalty trait.

-- Place a unit with embedded WML specified.
--
UNIT = (SIDE, TYPE, X, Y, WSL) ->
    with WSL
        .side = SIDE
        .type = TYPE
        .x = X
        .y = Y
    return unit WSL

-- Creates a generic unit of TYPE belonging to SIDE at X,Y, which has a
-- random name, gender and traits (just like a recruited unit).
GENERIC_UNIT = (SIDE, TYPE, X, Y) ->
    return unit
        side: SIDE
        type: TYPE
        x: X
        y: Y
        generate_name: true
        random_traits: true
        random_gender: true
        upkeep: "full"

-- Creates a unit with no traits, random gender and generated name.
-- 
-- Example:
-- ! {NOTRAIT_UNIT 1 (Elvish Fighter) 19 16}
--     
NOTRAIT_UNIT = (SIDE, TYPE, X, Y) ->
    return unit
       side: SIDE
       type: TYPE
       x: X
       y: Y
       generate_name: true
       random_traits: false
       random_gender: true

-- Creates a unit with the Loyal trait.
-- 
-- Example:
-- ! {LOYAL_UNIT 1 (Elvish Fighter) 19 16}
-- 
LOYAL_UNIT = (SIDE, TYPE, X, Y) ->
    return unit
        type: TYPE
        side: SIDE
        x: X
        y: Y
        generate_name: true
        modifications: TRAIT_LOYAL
        overlays: "misc/loyal-icon.png"

-- Place a named unit with embedded WML specified.
-- 
NAMED_UNIT = (SIDE, TYPE, X, Y, ID_STRING, NAME_STRING, WML) ->
    unless WML
        WML = {}
    with WML
        .side = SIDE
        .type = TYPE
        .x = X
        .y = Y
        .id = ID_STRING
        .name = NAME_STRING
    unit WML

-- Creates a unit with the Loyal trait.
-- 
-- Example:
-- ! {NAMED_LOYAL_UNIT 1 (Elvish Fighter) 19 16 (Myname) ( _ "Myname")}
--     
NAMED_LOYAL_UNIT = (SIDE, TYPE, X, Y, ID_STRING, NAME_STRING) ->
    unit
        side: SIDE
        type: TYPE
        id: ID_STRING
        name: NAME_STRING
        x: X
        y: Y
        modifications: TRAIT_LOYAL
        overlays: "misc/loyal-icon"

-- Creates a generic unit of TYPE belonging to SIDE at X,Y, which has a
-- generated gender and traits (just like a recruited unit).
NAMED_GENERIC_UNIT = (SIDE, TYPE, X, Y, ID_STRING, NAME_STRING) ->
    unit
        side: SIDE
        type: TYPE
        id: ID_STRING
        name: NAME_STRING
        x: X
        y: Y
        random_traits: true
        random_gender: true
        upkeep: "full"

-- Creates a unit with no traits, random gender and specified name.
-- 
-- Example:
-- ! {NAMED_NOTRAIT_UNIT 1 (Elvish Fighter) 20 22 (Mochi) (_"Mochi") }
--     
NAMED_NOTRAIT_UNIT = (SIDE, TYPE, X, Y, ID_STRING, NAME_STRING) ->
    unit
        side: SIDE
        type: TYPE
        id: ID_STRING
        name: NAME_STRING
        x: X
        y: Y
        random_traits: false 
        random_gender: true

RECALL = (ID_STRING) ->
    recall
        id: ID_STRING

-- Note that id precedes x and y, unlike with the unit-generating macros.
RECALL_XY = (ID_STRING, X, Y) ->
    recall
        id: ID_STRING
        x: X
        y: Y

-- #define GUARDIAN
--     # Meant to be used as a suffix to a unit-generating macro call.
--     [+unit]
--         ai_special=guardian
--         animate=no
--     [/unit]
-- #enddef

-- #define NO_UPKEEP
--     # Meant to be used as a suffix to a unit-generating macro call.
--     # Use this when you don't want to use up a traits slot.
--     [+unit]
--         upkeep=loyal
--         # It's questionable whether we should do this here...
--         overlays="misc/loyal-icon.png"
--     [/unit]
-- #enddef

-- #define FACING DIRECTION
--     # Meant to be used as a suffix to a unit-generating macro call.
--     [+unit]
--         facing={DIRECTION}
--     [/unit]
-- #enddef

-- #define VARIATION VARIATION_NAME
--     # Meant to be used as a suffix to a unit-generating macro call.
--     [+unit]
--         variation={VARIATION_NAME}
--     [/unit]
-- #enddef

-- Stores an attribute of a unit into the given global variable.
-- 
-- Example where this is used to flip all orcs to whatever side James is on:
-- ! {STORE_UNIT_VAR (id=James) side side_of_James}
-- ! {MODIFY_UNIT (race=orc) side $side_of_James}
STORE_UNIT_VAR = (FILTER, VAR, TO_VAR_NAME) ->
    unit = store_unit
        filter: FILTER
        kill: false
    if TO_VAR_NAME
        set_variable
            name: TO_VAR_NAME
            value: unit[VAR]
    return unit[VAR]

-- Advances all units matching the filter to ID_STRING or if missing, their normal advancement
-- 
-- Example to advance all spearmen to a cavalrymen:
-- ! {ADVANCE_UNIT type=Spearman Cavalryman}
-- Example to advance your leader normally:
-- ! {ADVANCE_UNIT canrecruit,side=yes,1 ""}
ADVANCE_UNIT = (FILTER, ID_STRING) ->
    modify_unit
        filter: FILTER
        type: ID_STRING

-- Transforms all units matching the filter into TYPE or if missing, their normal advancement
-- Keeps the unit's hitpoints, experience and status intact.
--
-- Example to turn all spearmen into cavalrymen:
-- ! {TRANSFORM_UNIT type=Spearman Cavalryman}
TRANSFORM_UNIT = (FILTER, TYPE) ->
    --- @TODO check syntax of transform_unit
    transform_unit FILTER
        transform_to: TYPE

