[[
Contents [hide]
1 Abilities and their effects
2 The [abilities] tag
2.1 Common keys and tags for every ability
2.2 Extra keys used by the [heals] ability
2.3 Extra keys used by the [regenerate] ability
2.4 Extra keys and tags used by the [resistance] ability
2.5 Extra keys used by the [leadership] ability
2.6 Extra keys used by the [illuminates] ability
2.7 Extra keys used by the [hides] ability
2.8 Extra tags used by the [teleport] ability
2.9 Macros for common abilities
3 The [specials] tag
3.1 Common keys and tags for every weapon special
3.2 Common keys and tags for specials with a value
3.3 Extra keys used by the [berserk] special
3.4 Extra keys used by the [plague] special
3.5 Extra keys used by the [swarm] special
3.6 Macros for common weapon specials
4 See Also
Abilities and their effects

There are two types of abilities: ones that apply to units (called abilities) and ones that only apply when using a particular attack (called specials or weapon specials). A unit may have multiple abilities and an attack can have multiple specials, but by convention only one weapon special should be assigned to any given attack.]]

ability =
    description: [[Common keys and tags for every ability]]

    scheme:
        name:
            description: [[the (translatable) name of the ability.]]
        female_name:
            description: [[the (translatable) name of the ability when possessed by a female unit. Defaults to name if not specified.]]
        name_inactive:
            description: [[the (translatable) name of the ability when inactive. Defaults to name if not specified; if the ability is supposed to be not displayed when inactive, you must explicitly set name_inactive to an empty string (nothing after the equals sign).]]

        female_name_inactive:
            description: [[the (translatable) name of the ability when inactive and possessed by a female unit. Defaults to name_inactive if not specified.]]

        description:
            description: [[the (translatable) description of the ability.]]

        description_inactive:
            description: [[the (translatable) description of the ability when inactive. Defaults to description if not specified.]]

        affect_self:
            description: [[if equal to 'yes', the ability will affect the unit that has it.]]
        affect_allies:
            description: [[if equal to 'yes', the ability will affect allies in the specified adjacent hexes.]]
        affect_enemies:
            description: [[if equal to 'yes', the ability will affect enemies in the specified adjacent hexes.]]

        cumulative:
            description: [[if set to 'yes', this ability will be cumulative with the base value for this ability.]]

        id:
            description: [[this ability will not be cumulative with other abilities using this id. Must be present if cumulative is anything other than 'yes'.]]

        filter:
            description: [[StandardUnitFilter If the unit owning the ability does not match this filter, the ability will be inactive.]]

        affect_adjacent:
            description: [[an adjacent unit that does not match this filter will not receive its effects. There can be multiple [affect_adjacent] tags in a single ability; a unit needs to match any one of these to receive the effects. If there are no [affect_adjacent] tags, then no adjacent units will receive the effects.]]

        adjacent:
            description: [[a comma separated list of any combination of these directions: n,ne,se,s,sw,nw. (See notes)]]

        filter:
            description: [[a StandardUnitFilter. (Version 1.13.2 and later only) The variable $other_unit refers to the unit owning the ability.]]

        filter_self:
            description: [[if the owner of the ability does not match this filter, it will not receive the effects of the ability. [filter_self] takes a StandardUnitFilter as argument.]]

        filter_adjacent:
            description: [[if an adjacent unit does not match this filter, the ability will not be active and no-one will receive its affects. Takes extra keys adjacent, count, is_enemy, just like in a StandardUnitFilter, with the one difference that, in the absence of a specified count, all listed directions must match (so, with two directiones eg adjacent=n,s, the default is count=2). In fact, it's really a shorthand for a [filter_adjacent] nested within [filter_self]. The variables $this_unit and (Version 1.13.2 and later only) $other_unit both work as you'd expect. Multiple [filter_adjacent] can be provided, all of which must pass for the ability to activate.]]

        filter_adjacent_location:
            description: [[like [filter_adjacent], but filters on locations instead of units. This is a shorthand for [filter_self][filter_location][filter_adjacent_location].]]

        filter_base_value:
            description: [[filters on the value before any modifications; uses the keys equals, not_equals, etc. If several keys are used all have to match.]]


-- wsl_table
    id: "abilitiesWSL"
    description: [[The abilities table
Any other name is valid (for example [dummy]), but will result in an ability that does nothing but report it's there. These tags still use the same common keys and tags as every other ability. Note: a dummy ability must have an id for the name and description to display.
Macros for common abilities
ABILITY_AMBUSH
ABILITY_CURES
ABILITY_HEALS
ABILITY_ILLUMINATES
ABILITY_LEADERSHIP_LEVEL_1 to ABILITY_LEADERSHIP_LEVEL_5
(Version 1.13.2 and later only) ABILITY_LEADERSHIP (replaces the above leadership macros, which are now deprecated)
ABILITY_NIGHTSTALK
ABILITY_REGENERATES
ABILITY_SKIRMISHER
ABILITY_STEADFAST
ABILITY_SUBMERGE
ABILITY_TELEPORT]]

    scheme:
        heals:
            description: [[modifies the hitpoints of a unit at the beginning of the healer's turn. These keys affect the actual resistance (e.g. -20%), not the damage modifier normally used in [resistance] (e.g. 120).]]
            scheme:
                value:
                    description: "the amount healed."
                poison:
                    description: "can be one of slowed,cured."
        regenerate:
            description: [[modifies the hitpoints of a unit at the beginning of the unit's turn]]
            scheme:
                value:
                    description: [[the amount healed.]]
                poison:
                    description: [[can be one of slowed,cured.]]
        resistance:
            description: [[modifies the resistance of a unit to damage]]
            scheme:
                value:
                    description: "set resistance to this value."
                max_value:
                    description: [[maximum resistance value. This value must be set in order for [resistance] to function.]]
                add:
                    description: [[adds to resistance.]]
                sub:
                    description: [[subtracts from resistance.]]
                multiply:
                    description: [[multiplies resistance value.]]
                divide:
                    description: [[divides resistance value.]]
                apply_to:
                    description: [[a list of damage types; if left out, the ability applies to all types.]]
                active_on:
                    description: [[one of 'defense' or 'offense'; if left out, the ability is active on both.]]

        leadership:
            description: [[modifies the damage output of a unit]]
            scheme:
                value:
                    description: [[the percentage bonus to damage.]]

        skirmisher:
            description: [[negates enemy zones of control]]
        illuminates:
            scheme:
                value:
                    description: [[the percentage bonus to lawful units.]]
                max_value:
                    description: [[the maximum percentage bonus given.]]
                min_value:
                    description: [[the minimum percentage bonus given.]]

            description: [[modifies the time of day adjacent to the affected units]]
        teleport:
            scheme:
                tunnel:
                    description: [[- a tunnel tag (see DirectActionsWSL#.5Btunnel.5D) (without the remove key) defining the tunneling source and target hexes, and maybe other conditions. (It automatically applies only to the unit with the ability.) You may use $teleport_unit inside the tunnel tag for filtering purposes.]]
            description: [[allows the unit to teleport]]
        hides:
            scheme:
                alert:
                    description: [[the displayed text when the unit is discovered. Default "Ambushed!".]]
                    default: [[Ambushed!]]

            description: [[renders the unit invisible to enemies]]

