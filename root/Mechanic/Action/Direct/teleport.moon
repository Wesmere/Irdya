 
-- [teleport]
-- Teleports a unit on map. (Hint: Use the TELEPORT_UNIT macro)
-- [filter]: StandardUnitFilter the first unit matching this filter will be teleported.
-- x,y: the position to teleport to. If that position is not empty, some other location will be chosen.
-- clear_shroud: should shroud be cleared on arrival
-- animate: should a teleport animation be played (if the unit doesn't have a teleport animation, it will fade out/fade in)
-- check_passability: (boolean yes|no, default yes): normally, units will not be teleported into terrain that is impassable for them. Setting this attribute to "no" permits it.
-- (Note: There is also a ability named teleport, see AbilitiesWML.)
  