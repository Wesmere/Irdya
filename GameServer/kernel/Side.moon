----
-- @classmod

-- color: It indicates team color. Can be one of the following:
-- color    red    blue    green    purple    black    brown    orange    white    teal
-- value    1    2    3    4    5    6    7    8    9
-- controller: Indicates type of player that control this side. In networked multiplayer, the controller attribute is ambiguous. Be very careful or you have OOS errors.
-- human: Human player
-- ai: If players assigns "Computer Player" to "Player/Type" in game lobby
-- network: In multiplayer for sides that client does not control, both what would normally be human and ai. For host values are as usual, this is where OOS comes from.
-- null: If players assigns "Empty" to "Player/Type" in game lobby
-- fog: Indicates whether this side is affected by fog of war.
-- gold: The amount of gold the side have.
-- hidden: (boolean) If 'yes', side is not shown in status table.
-- income: Base income for this side (without villages).
-- name: Name of player.
-- recruit: A comma-separated list of unit types that can be recruited by this side.
-- shroud: Whether this side is affected by shroud.
-- side: The $side_number of the side belonging to this container
-- team_name: String representing the team's description.
-- user_team_name: Translated string representing the team's description.
-- village_gold: The amount of gold given to this side per village it controls per turn.
-- scroll_to_leader: (boolean) Whether the game view scrolls to the side leader at the start of their turn.
-- flag: Flag animation for villages owned by this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag animation.
-- flag_icon: Flag icon for the status bar for this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag icon.
-- village_support: The number of unit levels this side is able to support (does not pay upkeep on) per village it controls.

class Side

  new: (cfg) =>
    @ = cfg


  ----
  -- removes a unit from the recall list
  -- @tparam string unit_id The unit to be removed
  -- @treturn the removed unit
  disband: (unit_id) =>
    unit = @recalls[unit_id]
    @recalls[unit_id] = nil
    return unit
  ----
  --
  -- @tparam Unit unit which is added to the recall list.
  new_recall: (unit) =>
    @recalls[unit.id] = unit
