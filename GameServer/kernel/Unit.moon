----
-- A unit
-- @classmod Unit

moon = require "moon"
Set = require "pl.Set"

Location = require "kernel/Location"

-- @return iff t is a pure array
isArray = (t) ->
  return false if type(t) == "function"
  return false unless type(t) == "table"
  i = 0
  for _ in pairs(t)
    i = i + 1
    if t[i] == nil
      return false
  return true
---
--
--
wrapInArray = (t) ->
  return t if isArray(t)
  return { t }

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
--
--
class Unit
  ---
  -- Constructor
  -- @param self
  -- @param cfg
  new: (cfg) =>
    @ = cfg

  ---
  -- Prints the table containing all the unit's data
  -- @param self
  debug: =>
    moon.p(@)

  ---
  -- Get the defense propability value
  -- @param self
  -- @param terrain optional terrain
  -- @return propability of defense on @terrain
  defense: (terrain) =>
    log.warn("Not implemented yet")

  ---
  -- Get the movement consts
  -- @param self
  -- @param terrain optional terrain
  -- @return movement costs on @terrain
  movement_cost: (terrain) =>
    log.warn("Not implemented yet")

  ---
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

  ---
  -- iff the unit matches the given filter
  -- @param self
  -- @tab f the filter table
  -- @string f.id unit matches the given id. Can be a list.
  -- @param f.defense
  -- @param f.movement_cost
  -- @treturn bool iff the filter matched
  filter: (f) =>

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

  __tostring: =>
    return("id: " .. @data.id)

  __eq: (other) =>
    return @id == other.id


return Unit
