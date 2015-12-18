----
-- A unit
-- @classmod Unit

moon = require "moon"
Set = require "pl.Set"

Location = require "kernel/Location"

---
-- @table this
-- @tfield number hitpoints
-- @tfield number advances_to
-- @tfield number alignment
-- @tfield number alpha
-- @tfield number attacks_left
-- @tfield bool can_recruit
-- @tfield number cost
-- @tfield number experience
-- @tfield number facing
-- @tfield number flying
-- @tfield number gender
-- @tfield number goto_x
-- @tfield number goto_y
-- @tfield number hitpoints
-- @tfield string id
-- @tfield tstring language_name (same as the name key in the unit config)
-- @tfield number max_experience
-- @tfield number max_hitpoints
-- @tfield number max_moves
-- @tfield number moves
-- @tfield number overlays
-- @tfield number resting
-- @tfield number side
-- @tfield string type
-- @tfield tstring unit_description
-- @tfield bool unrenamable
-- @tfield number upkeep
-- @tfield number x
-- @tfield number y
-- @tfield number zoc
-- @tfield tab movement_costs
-- @tfield number movement_costs.arsch
-- @tfield number movement_costs.pimmel
-- @tfield number [defense]
-- @tfield number [resistance]
-- @tfield number [variables]
-- @tfield tab status
-- @tfield bool status.poisoned
-- @tfield bool status.slowed
-- @tfield bool status.petrified
-- @tfield bool status.uncovered
-- @tfield bool status.guardian
-- @tfield bool status.unhealable
-- @tfield {tab,...} attack
-- @tfield tstring attack.description a translatable text for name of the attack, to be displayed to the user.
-- @tfield string attack.name the name of the attack. Used as a default description, if description is not present, and to determine the default icon, if icon is not present (if name=x then icon=attacks/x.png is assumed unless present). Non-translatable. Used for the has_weapon key and animation filters; see StandardUnitFilter and AnimationWML
-- @tfield string attack.type the damage type of the attack. Used in determining resistance to this attack (see [resistance]).
-- @tfield tab attack.specials contains the specials of the attack. See AbilitiesWML.
-- @tfield string attack.icon the image to use as an icon for the attack in the attack choice menu, as a path relative to the images directory.
-- @tfield string attack.range the range of the attack. Used to determine the enemy's retaliation, which will be of the same type. Also displayed on the status table in parentheses; 'melee'(default) displays "melee", while 'ranged' displays "ranged". Range can be anything. Standard values are now "melee" and "ranged". From now on, short and long will be treated as totally different ranges. You can create any number of ranges now (with any name), and units can only retaliate against attacks for which they have a corresponding attack of the same range. This value is translatable.
-- @tfield number attack.damage the damage of this attack
-- @tfield number attack.number the number of strikes per attack this weapon has
-- @tfield number attack.accuracy a number added to the chance to hit whenever using this weapon offensively; negative values work too
-- @tfield number attack.parry a number deducted from the enemy chance to hit whenever using this weapon offensively; negative values work too
-- @tfield number attack.movement_used determines how many movement points using this attack expends. By default all movement is used up, set this to 0 to make attacking with this attack expend no movement.
-- @tfield number attack.attack_weight helps the AI to choose which attack to use when attacking; highly weighted attacks are more likely to be used. Setting it to 0 disables the attack on attack
-- @tfield number attack.defense_weight used to determine which attack is used for retaliation. This affects gameplay, as the player is not allowed to determine his unit's retaliation weapon. Setting it to 0 disable the attacks on defense
-- @tfield tab modifications_description
-- @tfield {tab,...} modifications
-- @tfield {tab,...} modifications.trait a trait the unit has. Same format as [trait], UnitsWSL.
-- @tfield {tab,...} modifications.object an object the unit has. Same format as [object], DirectActionsWSL.
-- @tfield {tab,...} modifications.advance an advancement the unit has. Same format as [advancement], UnitTypeWSL. Might be used if the unit type has some advancements, but this particular one is supposed to have some of them already taken. (Version 1.13.2 and later only) In 1.13.2 and later this has been renamed to [advancement], to match the UnitTypeWML tag of the same name.

----
-- Unit
class Unit
    ----
    -- Constructor
    -- @param self
    -- @param cfg
    new: (cfg) =>
        @ = cfg

    ----
    -- Prints the table containing all the unit's data
    -- @param self
    debug: =>
        moon.p(@)

    ----
    -- Get the defense propability value
    -- @param self
    -- @param terrain optional terrain
    -- @return propability of defense on @terrain
    defense: (terrain) =>
        log.warn("Not implemented yet")

    ----
    -- Get the movement consts
    -- @param self
    -- @param terrain optional terrain
    -- @return movement costs on @terrain
    movement_cost: (terrain) =>
        log.warn("Not implemented yet")

    ----
    -- Return the terrain the unit is currenty on
    -- @param self
    terrain: =>
        log.warn("Not implemented yet")

    ---
    -- Return the position of the unit
    -- @tparam Unit self
    -- @treturn Location of the unit
    loc: =>
        log.warn("Not implemented yet")

    ----
    -- Returns true if the given unit matches the WML filter passed as the second argument. If other_unit is specified, it is used for the $other_unit auto-stored variable in the filter. Otherwise, this variable is not stored for the filter.
    -- @tparam Unit self
    -- @tparam StandardUnitFilter filter
    -- @tparam[opt] Unit other_unit
    -- @treturn bool iff this unit matches the filter
    -- @usage assert(unit.canrecruit == wesnoth.match_unit(unit, { can_recruit: true }))
    matches: (filter, other_unit) =>
        if or_table = f["or"]
            return true if @filter(or_table)

        if and_table = f["and"]
            return false unless @filter(and_table)

        if not_table = f["not"]
            return false if @filter(not_table)

        log.warn("filtering the unit with the id: #{@.id}")

    -- assert(type(f) == "function" or type(f) == "table")
    -- return f(@) if type(f) == "function"
--special ones
    -- defense: current defense of the unit on current tile
    -- (chance to hit %, like in movement type definitions)
        if f.defense
            return false if Set(f.defense)[@defense!]
        if f.movement_cost
            return false if Set(f.movement_cost)[@movement_cost!]
    --find_in: name of an array or container variable; if present, the unit will not match unless it is also found stored in the variable
        items = { id: true, speaker: true, type: true }
        if id = wrapInArray(f.id)
            return false if Set(id)[@id]
        if f.speaker
            return false if Set(f.speaker)[@id]
        if f.type
            return false if Set(f.type)[@type]
    -- TODO implement table filter
    return true

    ----
    -- Places a unit on the map. This unit is described either by a WML table or by a proxy unit. Coordinates can be passed as the first two arguments, otherwise the table is expected to have two fields x and y, which indicate where the unit will be placed. If the function is called with coordinates only, the unit on the map at the given coordinates is removed instead. (Version 1.13.2 and later only) This use is now deprecated; use wesnoth.erase_unit instead.
    -- @tparam Unit self
    -- @number[opt] x
    -- @number[opt] y
    -- @usage -- create a unit with random traits, then erase it
    -- wesnoth.put_unit(17, 42, { type: "Elvish Lady" })
    -- wesnoth.put_unit(17, 42)
    -- When the argument is a proxy unit, no duplicate is created. In particular, if the unit was private or on a recall list, it no longer is; and if the unit was on the map, it has been moved to the new location. Note: passing a WML table is just a shortcut for calling #wesnoth.create_unit and then putting the resulting unit on the map.
    -- -- move the leader back to the top-left corner
    -- wesnoth.put_unit(1, 1, wesnoth.get_units({ can_recruit: true })[1])
    to_map: (x, y) =>

    ----
    -- Erases the unit from the map.
    -- After calling this on a unit, the unit is no longer valid.
    -- @tparam Unit self
    erase: () =>

    ----
    -- Places a unit on a recall list. This unit is described either by a WML table or by a proxy unit. The side of the recall list is given by the second argument, or by the side of the unit if missing.
    -- @tparam Unit self
    -- @number[opt] side the list is inserted into
    to_recall: (side) =>

    ----
    -- Advances the unit (and shows the advance unit dialog if needed) if the unit has enough xp. This function should be called after modifying the units experience directly. A similar function is called by wesnoth internally after unit combat. The second argument is a boodean value that specifies whether the advancement should be animated. The third agrument is a boodean value that specifies whether advancement related events should be fired.
    -- @tparam Unit self
    -- @bool animate whether the advancement should be animated.
    -- @bool fire_events whether advancement related events should be fired.
    advance: (animate, fire_events) =>

    ----
    -- Modifies the unit.
    -- @tparam Unit self
    -- @string type the type of the modification (one of "trait", "object", or "advancement").
    -- @tab effects See EffectWML for details about effects.
    -- @bool[opt] write_to_mods
    add_modification: (type, effects, write_to_mods) =>

    ----
    -- j
    -- @tparam Unit self
    -- @string terrain_code
    movement: (terrain_code) =>

    ----
    -- blah
    -- @tparam Unit self
    -- @string terrain_code
    vision: (terrain_code) =>

    ----
    -- foo
    -- @tparam Unit self
    -- @string terrain_code
    jamming: (terrain_code) =>

    ----
    -- bar
    -- @tparam Unit self
    -- @tab ability_table
    ability: (ability_table) =>

    ----
    -- jepp
    -- @tparam Unit self
    -- @string to_type
    transform: (to_type) =>

    ----
    -- Returns the resistance of a unit against an attack type. (Note: it is a WML resistance. So the higher it is, the weaker the unit is.) The third argument indicates whether the unit is the attacker. Last arguments are the coordinates of an optional map location (for the purpose of taking abilities into account).
    -- @tparam Unit self
    -- @string damage_type
    resistance: (damage_type) =>

    ----
    -- Returns the defense of a unit on a particular terrain. (Note: it is a WML defense. So the higher it is, the weaker the unit is.)
    -- @tparam Unit self
    -- @string terrain_code
    defense: (terrain_code) =>

    ----
    -- Creates a private unit from another unit.
    -- @tparam Unit self
    -- @treturn Unit the clone
    clone: () =>

    ----
    -- superjo
    -- @tparam Unit self
    extract: () =>

    ----
    -- yeah
    -- @tparam Unit self
    __tostring: =>
        return("id: " .. @data.id)

    ----
    -- yes yes yes
    -- @tparam Unit self
    -- @tparam Unit other
    __eq: (other) =>
        return @id == other.id


return Unit
