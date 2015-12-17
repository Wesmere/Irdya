wsl_action
    id: "unit_worth"
    description: [[Takes only an inline StandardUnitFilter (only the first matching unit will be used for calculation) and outputs the following variables:
-- cost, the current unit cost;
-- next_cost, the cost of the most expensive advancement;
-- health, the health of the unit in percentage;
-- experience, current experience in percentage;
-- unit_worth, how much the unit is worth.
-- Mainly used for internal AI checks, but one could in theory just do anything with it.
-- [event]
--     name=moveto
--     [unit_worth]
--        x,y=$x1,$y1
--     [/unit_worth]
--     [message]
--         id=$unit.id
--         message=_"I cost $cost gold, with $health|% of my hitpoints and $experience|% on the way to cost $next_cost|.
-- I am estimated to be worth $unit_worth"
--     [/message]
--     [clear_variable]
--         name=cost,next_cost,health,experience,unit_worth
--     [/clear_variable]
-- [/event]
]]

    action: (cfg, wesnoth) ->
        u = wesnoth.get_units(cfg)[1] or
            helper.wml_error "[unit_worth]'s filter didn't match any unit"
        ut = wesnoth.unit_types[u.type]
        hp = u.hitpoints / u.max_hitpoints
        xp = u.experience / u.max_experience
        best_adv = ut.cost
        for w in *ut.advances_to
            uta = wesnoth.unit_types[w]
            if uta and uta.cost > best_adv then best_adv = uta.cost
        wesnoth.set_variable("cost", ut.cost)
        wesnoth.set_variable("next_cost", best_adv)
        wesnoth.set_variable("health", math.floor(hp * 100))
        wesnoth.set_variable("experience", math.floor(xp * 100))
        wesnoth.set_variable("recall_cost", ut.recall_cost)
        wesnoth.set_variable("unit_worth", math.floor(math.max(ut.cost * hp, best_adv * xp)))
