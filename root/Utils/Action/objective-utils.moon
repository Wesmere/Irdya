_ = (str) -> return str

-- Utility functions for use in the objectives dialog

TURNS_RUN_OUT =
    --[objective]
    description: _ "Turns run out"
    condition: "lose"
    show_turn_counter: true

-- #wmllint: markcheck off
-- #define EARLY_FINISH_BONUS_FOOTNOTE
-- "<span foreground='white'><small> " + _"(early finish bonus)" + "</small></span>"#enddef
-- #wmllint: markcheck on

-- #define OBJECTIVE_FOOTNOTE TEXT
--     "<span foreground='white'><small> " + {TEXT} + "</small></span>"
-- #enddef

-- #define ALTERNATIVE_OBJECTIVE_CAPTION
--     caption= _ "Alternative objective:"
-- #enddef

-- #define BONUS_OBJECTIVE_CAPTION
--     caption= _ "Bonus objective:"
-- #enddef

ALTERNATIVE_OBJECTIVE = (OBJECTIVE_TEXT) ->
--     [objective]
--         {ALTERNATIVE_OBJECTIVE_CAPTION}
--         description={OBJECTIVE_TEXT}
--         condition=win

ALTERNATIVE_OBJECTIVE_BONUS = (OBJECTIVE_TEXT) ->
--     [objective]
--         {ALTERNATIVE_OBJECTIVE_CAPTION}
--         description={OBJECTIVE_TEXT}+{EARLY_FINISH_BONUS_FOOTNOTE}
--         condition=win

IS_LAST_SCENARIO =
--     [note]
--         red,blue,green=0,255,255
    red: 0
    blue: 255
    green: 255
    description: "<b>" .. _"This is the last scenario." .. "</b>"
