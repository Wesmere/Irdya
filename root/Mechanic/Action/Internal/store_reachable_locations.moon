[[
[store_reachable_locations]
Stores locations reachable by the given units. Can store either the movement, attack or vision ranges.
[filter]: a StandardUnitFilter. The locations reachable by any of the matching units will be stored.
[filter_location]: (optional) a StandardLocationFilter. Only locations which also match this filter will be stored.
range: possible values movement (default), attack, vision. If movement, stores the locations within the movement range of the unit, taking Zone of Control into account. If attack, stores the attack range (movement range + 1 hex). If vision, stores the vision range (movement range ignoring Zone of Control + 1 hex).
moves: possible values current (default), max. Specifies whether to use the current or maximum movement points when calculating the range.
viewing_side: (optional) the side whose vision to use when calculating the reach. This only has meaning in the presence of fog, shroud, or units with the ambush ability. If left out, then fog, shroud and ambushers are ignored and the real reach of the units is stored.
variable: the name of the variable (array) into which to store the locations.
[store_map_dimensions]
Stores the map dimensions in a variable.
variable: the name of the variable where the values will be saved into. If it is skipped, a variable 'map_size' is used, and its contents overridden, if they existed already. The result is a container variable, with members width and height.
[store_side]
Stores information about a certain side in a variable.
Keys:
StandardSideFilter: All matching sides are stored. (An array is created if several sides match - access it with side[2].team_name and so on.)
variable: the name of the variable to store the information in (default: "side")
Result
Variable will contain following members:
color: It indicates team color. Can be one of the following:
color	red	blue	green	purple	black	brown	orange	white	teal
value	1	2	3	4	5	6	7	8	9
controller: Indicates type of player that control this side. In networked multiplayer, the controller attribute is ambiguous. Be very careful or you have OOS errors.
human: Human player
ai: If players assigns "Computer Player" to "Player/Type" in game lobby
network: In multiplayer for sides that client does not control, both what would normally be human and ai. For host values are as usual, this is where OOS comes from.
null: If players assigns "Empty" to "Player/Type" in game lobby
fog: Indicates whether this side is affected by fog of war.
gold: The amount of gold the side have.
hidden: (boolean) If 'yes', side is not shown in status table.
income: Base income for this side (without villages).
name: Name of player.
recruit: A comma-separated list of unit types that can be recruited by this side.
shroud: Whether this side is affected by shroud.
side: The $side_number of the side belonging to this container
team_name: String representing the team's description.
user_team_name: Translated string representing the team's description.
village_gold: The amount of gold given to this side per village it controls per turn.
scroll_to_leader: (boolean) Whether the game view scrolls to the side leader at the start of their turn.
flag: Flag animation for villages owned by this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag animation.
flag_icon: Flag icon for the status bar for this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag icon.
village_support: The number of unit levels this side is able to support (does not pay upkeep on) per village it controls.]]
