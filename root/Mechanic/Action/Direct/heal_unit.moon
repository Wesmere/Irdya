 
-- [heal_unit]
-- Heal a unit. The variable $heal_amount will be set to the exact number of points healed (i.e can be lesser than the parameter amount if the unit is fully healed). $heal_amount contains only the number of hitpoints the first unit that was found got healed.
-- [filter]: StandardUnitFilter All matching on-map units are healed. If no filter is supplied, it is tried to take the unit at $x1, $y1.
-- [filter_second]: StandardUnitFilter all the units matching the filter and having the heals ability will have their animation played (if animate is set to true) for each of the units healed.
-- amount: (integer, default full) the maximum points the unit(s) will be healed. Can't set below 1 or above max_hitpoints. If "full", sets hitpoints to max_hitpoints. Before 1.9 the default is 0.
-- animate: a boolean which indicate if the healing animations must be played. (default no)
-- moves: (integer, default 0) The maximum current movement points the units will be "healed". Can't set below 0 or above max_moves. If "full", sets moves to max_moves.
-- restore_attacks: (boolean, default no) Whether the units' attacks_left should be reset to their max_attacks (usually 1).
-- restore_statuses: (boolean, default yes) Whether standard statuses should be reset to "no". This affects poisoned, slowed, petrified and unhealable. Before 1.9 this is always "no".