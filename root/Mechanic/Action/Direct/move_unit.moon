 
-- [move_unit]
-- works like the MOVE_UNIT macro.
-- StandardUnitFilter as argument; do not use a [filter] tag. All units matching the filter are moved. If the target location is occupied, the nearest free location is chosen.
-- to_x (unsigned integer): The units are moved to this x coordinate. Can be a comma-separated list, in which case the unit follows this given path during the move.
-- to_y (unsigned integer): The units are moved to this y coordinate. Can be a comma-separated list.
-- fire_event (optional, boolean yes|no, default no): Whether any according moveto events shall be fired. The target location ($x1, $y1 in the event) may not be the same location that the unit was tried to be moved to, if the original target location is occupied or impassable.
-- check_passability (boolean yes|no, default yes): Whether the terrain the unit is moved to should be checked for suiting the unit. (If it does not, a nearby suitable hex is chosen.)
-- force_scroll: Whether to scroll the map or not even when [lock_view] is in effect or Follow Unit Actions is disabled in Advanced Preferences. Defaults to using [move_unit_fake]'s default value.
