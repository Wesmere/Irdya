-- wsl_table
{
    id: "SUF"

    description: [[From FilterWSL, this is the standard way of filtering units.
When a unit filter is applied to a map, first it applies to all units on the field, based on their coordinates. Next it applies to units in the recall list. This is important to remember as it means, for example, that the tag [kill] can be used to kill units in the recall list.
You can access the filtered unit within the filter as the $this_unit variable, see SingleUnitWSL for the possible content of these variables
The term StandardUnitFilter means that the set of such keys and tags (see below) can appear at that point. Often a StandardUnitFilter needs to be included in a [filter] tag. But many tags take the StandardUnitFilter directly as an argument, like [kill] and [have_unit]. See Special:WhatLinksHere/StandardUnitFilter for tags which can contain a StandardUnitFilter.]]

    scheme:

        id:
            description: [[unit matches the given id. This is the same as id in the [unit] tag. Note that it is independent of a unit's user-visible name, which can be internationalized independent of this (see SingleUnitWSL). id= can be a comma-separated list, every unit with one of these ids matches.]]

        speaker:
            description: [[alias for id (no comma-separated list supported)]]

        type:
            description: [[matches the unit's type name (can be a list of types)]]

        race:
            description: [[the race of the unit type. This can be a comma-separated list; the unit's race must match one of the given races.
    Mainline races are listed in data/core/units.cfg]]

        ability:
            description: [[unit has an ability with the given id; see AbilitiesWSL]]

        status:
            description: [[matches if the unit has the specified status active. This can be a comma-separated list, in which case the unit will match as long as it has one of the listed statuses active]]

        side:
            description: [[the unit is on the given side (can be a list)]]

        has_weapon:
            description: [[the unit has a weapon with the given name]]

        can_recruit:
            description: [[yes if the unit can recruit (i.e. is a leader)]]

        gender:
            description: [[female if the unit is female rather than the default of male
    role: the unit has been assigned the given role; see [role], InternalActionsWSL]]

        level:
            description: [[the level of the unit]]

        defense:
            description: [[current defense of the unit on current tile (chance to hit %, like in movement type definitions)
    movement_cost: current movement cost of the unit on current tile]]

    --x,y: the position of the unit. Note: there is a special case for units on the recall list such that x,y="recall,recall"

        find_in:
            description: [[name of an array or container variable; if present, the unit will not match unless it is also found stored in the variable]]


        filter_vision:
            description: [[this tests whether or not the unit is currently visible
    visible: yes or no, default yes. When "yes", this matches units that are not obscured by fog or shroud, and that are not hiding (via the [hides] ability). When "no", this matches units that are obscured by fog or shroud, or that are hiding.
    StandardSideFilter tags and keys. Filter for who may be able to see (or not see) the unit. If there is *at least one* matching side which can see the unit then the filter matches, and otherwise it fails to match.]]

        filter_wsl:
            description: [[this is WSL level filter for the unit. In it, you can filter on anything that is in the WSL description of a unit. This description can be found in any savegame also in SingleUnitWSL. If the filter encounters a nested [not] tag, the attributes and containers inside the tag should not match for the upper filter to match. Note: [filter_wsl] is especially slow, unless it contains only a child [variables], which is used for matching variables stored inside the unit.]]

        and:
            description: [[an extra unit filter. Unless the unit also matches the [and] filter, then it will not count as a match. Note: [and],[or], and [not] filters are considered after the containing filter; they are then processed in the order encountered.]]

        or:
            description: [[an extra unit filter. If a unit matches the [or] filter, then it will count as a match regardless of conditions in previous filters or the containing filter.]]

        not:
            description: [[an extra unit filter. If a unit matches the [not] filter, then that unit will not be considered a match by the containing filter.]]

        filter_adjacent:
            description: [[with a StandardUnitFilter as argument; do not use a [filter] tag. If present the correct number of adjacent units must match this filter.
    StandardUnitFilter tags and keys
    count: a number, range, or comma separated range; default "1-6"
    adjacent: a comma separated list of directions; default "n,ne,se,s,sw,nw" (see notes)
    is_enemy: a boolean specifying whether the adjacent unit must be an enemy or an ally (optional)
    $other_unit: (Version 1.13.2 and later only) Within [filter_adjacent], the special variable $other_unit refers to the filtered unit from the enclosing filter, while $this_unit refers (as with all StandardUnitFilters) to the unit being filtered on.]]

        filter_location:
            description: [[StandardLocationFilter - the tile that the unit is standing on matches the location filter.]]

        filter_side:
            description: [[The currently filtered unit's side must match this StandardSideFilter for the unit to match.
    StandardSideFilter tags and keys]]

        formula:
            description: [[FormulaAI like formula returning a boolean (here that is 1 or 0). The unit filtered is an implicit variable(for keys) in the call. However to get anything from tags in unit, there is need to use more complicated ways. To get something from single specific tag $this_unit. way can be used.]]

        lua_function:
            description: [[the name of a Lua function in the global environment that takes a unit as an argument and returns true if the given unit matches the filter.]]
}
