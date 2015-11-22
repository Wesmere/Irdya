-- #textdomain wesnoth
-- # Conditionals for MP scenarios.

-- # These don't depend on any other macros.  Please don't change this.
-- # ! in comments is used in generating HTML documentation, ignore it otherwise.

----
-- Test if a given side owns the village at the specified location
OWN_VILLAGE = (X, Y, SIDE,) ->
    return have_location
        owner_side: SIDE
        x: X
        y: Y



-- #define IF_VAR VAR OP_NAME VALUE CONTENTS_WML
--     # Shortcut for IF statements testing the value of a variable.
--     # Need to write [then] and [else] tags manually.
--     # Use like this:
--     #! {IF_VAR some_variable equals yes (
--     #!     [then]
--     #!         ...
--     #!     [/then]
--     #! )}
--     [if]
--         [variable]
--             name={VAR}
--             {OP_NAME}={VALUE}
--         [/variable]

--         {CONTENTS_WML}
--     [/if]
-- #enddef


IS_ALIVE = (SIDE) ->
    return have_unit { side: SIDE }

IF_ALIVE = (SIDE, ACTION_WSL) ->
    if IS_ALIVE(SIDE)
        return ACTION_WSL!
-- #define IF_ALIVE SIDE ACTION_WML
--     # Condition triggering of ACTION_WML on whether SIDE has at least one unit left.
--     # For example, if the player 2 is still alive, kill all his units.
--     #! {IF_ALIVE 2 (
--     #!   [kill]
--     #!       side=2
--     #!   [/kill]
--     #! )}
--     [if]
--         [have_unit]
--             side={SIDE}
--         [/have_unit]
--         [then]
--             {ACTION_WML}
--         [/then]
--     [/if]
-- #enddef


IS_DEAD = (SIDE) ->
    return not have_unit({ side: SIDE })
IF_DEAD = (SIDE, ACTION_WML) ->
    if IS_DEAD(SIDE)
        return ACTION_WML!
-- #define IF_DEAD SIDE ACTION_WML
--     # Condition triggering of ACTION_WML on whether SIDE has no units left.
--     # For example, give player 2 gold if player 1 is dead
--     #! {IF_DEAD 1 (
--     #!   [gold]
--     #!       side=2
--     #!       amount=25
--     #!   [/gold]
--     #! )}
--     [if]
--         [not]
--             [have_unit]
--                 side={SIDE}
--             [/have_unit]
--         [/not]
--         [then]
--             {ACTION_WML}
--         [/then]
--     [/if]
-- #enddef

IS_ALLIED = (PLAYER1_SIDE, PLAYER2_SIDE) ->

IF_ALLIED = (PLAYER1_SIDE, PLAYER2_SIDE, ACTION_WSL) ->
    if IS_ALLIED(PLAYER1_SIDE, PLAYER2_SIDE)
        return ACTION_WSL!


-- #define IF_ALLIED PLAYER1_SIDE PLAYER2_SIDE ACTION_WML
--     # Condition that triggers if PLAYER1_SIDE and PLAYER2_SIDE belong
--     # to the same team.
--     # NOTE: only works if leaders are alive, are the same leader as the game
--     # started and haven't changed teams.
--     # For example, if player 3 and 4 is allied, steal 10 gold from each:
--     #! {IF_ALLIED 3 4 (
--     #!   [gold]
--     #!       side=3
--     #!       amount=-10
--     #!   [/gold]
--     #!   [gold]
--     #!       side=4
--     #!       amount=-10
--     #!   [/gold]
--     #! )}
--     [store_side]
--         side={PLAYER1_SIDE}
--         variable=player1_side
--     [/store_side]
--     [store_side]
--         side={PLAYER2_SIDE}
--         variable=player2_side
--     [/store_side]
--     [if]
--         [variable]
--             name=player1_side.team_name
--             not_equals=$empty
--         [/variable]
--         [variable]
--             name=player1_side.team_name
--             equals=$player2_side.team_name
--         [/variable]
--         [then]
--             {ACTION_WML}
--         [/then]
--     [/if]
--     [clear_variable]
--         name=player1_side,player2_side
--     [/clear_variable]
-- #enddef
