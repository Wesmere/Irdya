 
-- [transform_unit]
-- Transforms every unit matching the filter to the given unit type. Keeps intact hit points, experience and status. If the unit is transformed to a non-living type (undead or mechanical), it will be also unpoisoned. Hit points will be changed if necessary to respect the transformed unit's maximum hit points.
-- StandardUnitFilter: do not use a [filter] tag.
-- transform_to: the unit type in which all the units matching the filter will be transformed. If missing, the units will follow their normal advancement.