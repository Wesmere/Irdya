---
-- [kill]
-- Removes all units (including units in a recall list) that match the filter from the game.
-- StandardUnitFilter: Selection criterion; do not use a [filter] tag.
-- @param animate: if 'yes', displays the unit dying (fading away).
-- @param fire_event: if 'yes', triggers any appropriate 'die' events (See EventWML). Note that events are only fired for killed units that have been on the map (as opposed to recall list).
-- [secondary_unit] with a StandardUnitFilter as argument. Do not use a [filter] tag. Has an effect only if fire_event=yes. The first on-map unit matching the filter becomes second_unit in any fired die and last breath events. If an on-map unit matches and if there are several units killed with a single [kill] tag, second_unit is this same unit for all of them. If no on-map unit matches or [secondary_unit] isn't present, the variable second_unit in each of the die and last breath events is always the same as the variable unit (the dying unit). 

wsl_action
    id: "kill"
    action: (cfg, kernel) =>
        -- @TODO implement
