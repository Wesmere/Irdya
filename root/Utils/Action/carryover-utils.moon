-- Utility macros for defining carryover gold, mostly in the [endlevel] tag.
-- Macros for describing the current scenario's carryover in the objectives
-- dialog are in objective-utils.cfg.

----
-- @TODO add comments
NEW_GOLD_CARRYOVER = (PERCENTAGE_NUMBER, cfg) ->
    cfg.carryover_add = true
    cfg.carryover_percentage = PERCENTAGE_NUMBER
    return cfg
