----
-- The Kernel, responsible for executing events
-- @classmod Kernel

moonscript = require "moonscript"
utils = require "pl.utils"
dir = require "pl.dir"

debug = require "utils/debug"

Set = require "pl.Set"

Location = require "kernel/Location"
Unit = require "kernel/Unit"

---
-- @table Kernel.game.sides.side
-- @tfield Set(Location) villages
-- @tfield tab units unit.id --> Location
-- @tfield {Unit,...} recalls
-- @tfield number map
-- @tfield number|string color It indicates team color. Can be one of the following:
-- color	red	blue	green	purple	black	brown	orange	white	teal
-- value	1	2	3	4	5	6	7	8	9
-- @tfield "human"|"ai"|"network"|"null" controller Indicates type of player that control this side. In networked multiplayer, the controller attribute is ambiguous. Be very careful or you have OOS errors.
-- [*] human: Human player
-- ai: If players assigns "Computer Player" to "Player/Type" in game lobby
-- network: In multiplayer for sides that client does not control, both what would normally be human and ai. For host values are as usual, this is where OOS comes from.
-- null: If players assigns "Empty" to "Player/Type" in game lobby
-- @tfield bool fog Indicates whether this side is affected by fog of war.
-- @tfield number gold The amount of gold the side have.
-- @tfield bool hidden (boolean) If 'yes', side is not shown in status table.
-- @tfield number income Base income for this side (without villages).
-- @tfield string name Name of player.
-- @tfield {string,...} recruit A comma-separated list of unit types that can be recruited by this side.
-- @tfield bool shroud Whether this side is affected by shroud.
-- @tfield number side The $side_number of the side belonging to this container
-- @tfield string team_name String representing the team's description.
-- @tfield tstring user_team_name Translated string representing the team's description.
-- @tfield number village_gold The amount of gold given to this side per village it controls per turn.
-- @tfield bool scroll_to_leader Whether the game view scrolls to the side leader at the start of their turn.
-- @tfield string flag Flag animation for villages owned by this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag animation.
-- @tfield string flag_icon Flag icon for the status bar for this side (see [side]). Unless previously specified in [side] or changed with WML (see [modify_side]), this value may be empty for the default flag icon.
-- @tfield number village_support The number o

---
-- @table content
-- @tfield stuff more a field in the content table

---
-- @table game
-- @tfield {side,...} sides
-- @tfield {team,...} teams
-- @tfield {[Unit],...} units unit.id --> Unit
-- @tfield tab areas
-- @tfield {[string]={event,...},...} events type --> array
-- @tfield tab action id --> function ENV for event handlers

---
-- @table board
-- @tfield [x][y]->unit_id units
-- @tfield [x][y]->schedule.id time
-- @tfield [x][y]->terrain_type.string map
-- @tfield [x][y]->labels the global labels
-- @tfield [x][y]->item items
-- @tfield [x][y]->sound_source sound_sources
-- @tfield [x][y]->number villages to owner side number mapping

----
-- TODO
-- lassmod Kernel
-- contains 2darrays for hex grid based issues
class Kernel
  ---
  -- Constructor
  -- @tparam Kernel self
  -- @tab content
  new: (content) =>
    assert(content)
    --assert(content.content)
    -- contains actions, commands, terrain_types, unit_types, eras, etc
    @content = content
    -- some game state @todo
    @game =
      sides: {
        -- 1:
        --   villages: {} -- Location Set
        --   units: {} -- unit.id --> Location
        --   recalls
        --   map: ?
      }
      teams: {
        -- elves:
        --   sides: {} signed array: side_number
        --   labels: {} [x][y] --> label table
      }
      units: {} -- unit.id --> Unit
      areas: {
        -- darkwood:
        --   location: {}
        --   filter: {}
      }
      -- functions
      events: {} -- type --> array
      action: {} -- id --> function ENV for event handlers
    -- contains 2darrays for hex grid based issues
    @board =
      time: {} -- [x][y] --> schedule.id
      map: {} -- [x][y] --> terrain_type.string
      units: {} -- [x][y] --> unit.id
      labels: {} -- [x][y] --> label.data - the global labels
      items: {} -- [x][y] --> item.data
      sound_sources: {} -- [x][y] -->
      villages: {} -- [x][y] --> owner side_number
  ---
  -- To be send to the display client
  -- @tparam Kernel self
  -- @return state update for a client
  get_client_state = (side_number) ->
    return @display_state
  ---
  -- Print the data table
  -- @tparam Kernel self
  debug: =>
    -- debug.print(@content_state)
    debug.print(@content.Scenario)
  ---
  -- Print txt to stdout
  -- @tparam Kernel self
  -- @string txt to print
  print: (txt) => print(txt)
  ---
  -- register the given event handler
  -- @tparam Kernel self
  -- @tab cfg
  -- @treturn bool iff the event was registered or removed @todo
  register_event_handler: (cfg) =>
    -- @todo handle id
    -- @todo handle remove
    assert(cfg.name)
    assert(cfg.command)
    utils.setfenv(cfg.command, @game.action)
    if not @game.events[cfg.name]
      @game.events[cfg.name] = {}
    table.insert(@game.events[cfg.name], cfg)
    return true -- @todo
  ---
  -- Check for a table being a pure array.
  -- @return iff t is a pure array
  isArray = (t) ->
    return false if type(t) == "function"
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
  --
  -- @param thing
  -- @param f
  -- @return
  -- doArrayOrSingle: (thing, f) =>
  --   assert(f)
  --   assert(thing)
  --   if isArray(thing)
  --     log.warn("thing is an array")
  --     result = for item in *thing
  --       f(@, item)
  --     return result
  --   else return f(@, thing)


  ---
  -- Setup a side at scenario start.
  -- @tparam Kernel self
  -- @tab side
  setup_side: (side) =>
    assert(side)
    @game.sides[side.side] =
      units: {}
      labels: {}

    units = wrapInArray(side.unit)
    for unit in *units
      unit.side = side.side
      @create_unit(unit)

  ---
  -- Constructs a new unit table and puts it into gamestate
  -- @tparam Kernel self
  -- @tab cfg
  -- @treturn Unit created
  create_unit: (cfg) =>
    assert(cfg)
    tablex = require "pl.tablex"
    -- find the unit's type
    unit_type = cfg.type
    --- @todo handle misssing unit type id more gracefully
    assert(unit_type)
    unit_type_cfg = @content.content.Units.unit_type[unit_type]
    --- @todo handle missing units more gracefully
    assert(unit_type_cfg)
    new_unit_cfg = tablex.deepcopy(unit_type_cfg)
    new_unit = tablex.merge(new_unit_cfg, cfg, true)
    @game.units[cfg.id] = new_unit
    unit = Unit(@game.units[cfg.id])
    assert(unit)
    return unit
  ---
  -- Start a damn scenario
  -- @tparam Kernel self
  -- @string id
  -- @tab cfg
  start_scenario: (id, cfg) =>
    log.trace("Kernel: Scenario started:" .. id)
    -- @todo some error handling
    debug.print(@content)
    scenario = @content.content.Scenario.scenario[id]
    assert(scenario)
    -- Let's load the map.
    map_parser = require "kernel/Map"
    if map_data = scenario.map_data
      @board.map = map_parser(map_data)
    elseif map_id = scenario.map
      map_cfg = @content.content.Scenario.map[map_id]
      assert(map_cfg)
      @board.map = map_parser(map_cfg.map_data)
    --- @todo check if every used terrain type is known
    -- Side setup
    assert(scenario.side)
    debug.print(scenario.side)
    --@doArrayOrSingle(scenario.side, @setup_side)

    sides = wrapInArray(scenario.side)
    for side in *sides
      @setup_side(side)


    for key, action in pairs @content.content.Mechanic.wsl_action
      --- @todo do validation here
      @game.action[key] = (cfg) -> return action.action(cfg, @)

    for key, events in pairs scenario
      char = key\sub(1,1)
      unless char\match("%u")
        continue
      events = wrapInArray(events)
      for i, event in ipairs events
        switch type(event)
          when "table"
            event.name = key
            @register_event_handler(event)
          when "function"
            @register_event_handler
              name: key
              command: event

    @fire_event("Preload") -- should be fired every time a scenario got reloaded
    @fire_event("Prestart") -- before anything is on the screen
    @fire_event("Start")

    @fire_event("NewTurn")


  ---
  -- Change the village ownership
  -- @tparam Kernel self
  -- @number side to give the ownership to
  -- @tparam Location loc evil of the villabe thingy ding dong
  -- @bool fire_event iff the "capture_village" event is fired
  -- @treturn bool iff the village could be captured
  capture_village: (side, loc, fire_event) =>
    if fire_event
      @fire_event("capture", loc)

  ---
  -- getter for a side
  -- @tparam Kernel self
  -- @number side
  -- @treturn table
  get_side: (side) =>
    if type(side) == "number"
      return @game.sides[sideFilter]

    -- if type(side)


  ---
  -- Get all sides matching the given filter
  -- @tparam Kernel self
  -- @tab sideFilter
  -- @field side
  -- @field  has_unit
  --     SUF
  --     search_recall_list
  -- @field  team_name
  -- @field  enemy_of: SSF
  --   allied_with: SSF
  --   has_enemy: SSF
  --   has_ally: SSF
  --   controller
  --   and: SSF
  --   or: SSF
  --   not: SSF
  -- @return a number list of matching sides
  get_sides: (sideFilter) =>

    if type(sideFilter) == "number"
      return @game.sides[sideFilter]

      -- if side = @game.sides[sideFilter]
      --   return side
      -- else return

    result = Set {}
    number_of_sides = #@display_state.side
    all = Set [i for i = 1, number_of_sides]
    --- @todo get the order right
    if filter = sideFilter["not"]
      match = get_sides(filter)
      result = result + (all - match)

    if match = sideFilter["and"]
      result = result * match

    if match = sideFilter["or"]
      result = result + match

    if side = sideFilter.side
      if match_side sideFilter, side
        return { side }
      else return {}

  ---
  -- match a side to a given filter
  -- @tparam Kernel self
  -- @tab sideFilter SSF
  -- @number side_number
  -- @treturn bool iff the given filter matches the given side
  match_side: (sideFilter, side_number) =>
    return false if sideFilter.side != side_number
    return false if @game_state.Sides

  ---
  -- Get all locations matching the filter
  -- @tparam Kernel self
  -- @tab locationFilter
  -- @param locationFilter.time_of_day
  -- @param locationFilter.time_of_day_id
  -- @param locationFilter.terrain
  -- @param locationFilter.x
  -- @param locationFilter.y
  -- @param locationFilter.area
  -- @param locationFilter.include_borders
  -- [filter] SUF
  -- [filter_vision]
  --   visible
  --   respect_fog
  -- [filter_owner] SSF
  -- @param locationFilter.find_in
  -- @param locationFilter.radius
  -- [filter_radius]
  -- [and]
  -- [or]
  -- [not]
  -- [filter_adjacent_location]
  --   count
  --   adjacent
  -- @treturn {Location,...} All matching locations.
  get_locs: (locationFilter) =>
    if type(locationFilter) == "function"
      return locationFilter


  ---
  -- Get only a single location
  -- @param self
  -- @param locationFilter
  -- @return iff the filter matches
  match_loc: (locationFilter) =>
  ---
  -- This getter wrapes a unit table from the game state into a class object.
  -- @param self
  -- @param x location Location or Table to search on
  -- @param y
  -- @return Unit on the location or nil
  get_unit_at: (x, y) =>
    loc = Location(x, y)
    if @game.Units[loc\get_x!] == nil
      log.warn("Kernel.get_unit: Trying to get a unit from empty hex")
      return nil
    unit = @game.Units[loc\get_x!][loc\get_y!]
    if unit == nil
      log.warn("Kernel.get_unit: Trying to get a unit from empty hex")
      return nil
    return Unit(unit)
  ---
  -- This getter wrapes a unit table from the game state into a class object.
  -- @param self
  -- @param filter
  -- @return Unit on the location or nil
  get_unit: (filter) =>
    for id, unit in pairs @game.units
      log.warn("Filtering unit with id: #{id}")
      unit_obj = Unit(unit)
      if unit_obj\filter(filter)
        return unit_obj
  ---
  -- get_units
  -- @param self
  -- @param filter
  -- @return all units in game matching the filter
  get_units: (filter) =>
    matches = {}
    -- @todo try to be fast later
    --if filter.filter_location
    --  locations =
    for unit in *@scenario_state.units
      if unit\filter(filter)
        table.insert(matches, unit)
    return matches
  ---
  -- event handler stuff executing thing
  -- @param self
  -- @param handler
  -- @param primary
  -- @param second
  -- @param first_weapon
  -- @param second_weapon
  -- @return iff gamestate changed
  execute_event_handler: (handler, primary, second, first_weapon, second_weapon) =>
    return false if handler.remove
    return false if handler.filter_condition and not handler.filter_condition()
    return false if primary and not primary\filter(handler.filter)
    return false if second  and not second\filter(handler.filter_second)
    --@todo filter_attack
    --@todo filter_second_attack
    --@todo filter_side
    --@todo filter_condition
    --@todo delayed_variable_substitution ?
    log.debug("Executing " .. handler.name)

    if handler.first_time_only
      handler.remove = true
    -- utils.setfenv(handler.command, @content_state.actions)
    fenv = utils.getfenv(handler.command)

    handler.command(primary, secondary)
    return true
  ---
  -- Fires all the events of the given type
  -- Which executes the handlers listening for them
  -- @tparam Kernel self
  -- @string name
  -- @param primary optional unit or location
  -- @param secondary optional unit or location
  -- @param first_weapon
  -- @param second_weapon
  fire_event: (name, primary, secondary, first_weapon, second_weapon) =>
    -- predefined variables:
    -- side_number
    -- x1, y1 -- position of primary unit
    -- x2, y2 -- position of secondary unit
    -- unit -- primary unit
    -- second_unit -- secondary_unit
    -- damage_inflicted
    if primary
      primary_unit = (type(primary) == Unit) and primary or @get_unit(primary)
    if secondary
      secondary_unit = (type(secondary) == Unit) and secondary or @get_unit(secondary)
    if events = @game.events[name]
      for event in *@game.events[name]
        @execute_event_handler(event, primary_unit, secondary_unit, first_weapon, second_weapon)
  ---
  -- Handle a command from the display server
  -- @param self
  -- @param command
  execute_command: (command) =>
    assert(command.name)
    action_name = command.name
    log.debug("Kernel.execute_command: execute command: " .. action_name)
    action_func = @game_state.Actions[action_name]
    assert(action_func)
    return action_func(Command)
  ---
  -- execute a list of commands.
  -- @param self
  -- @param Actions
  execute_command_chain: (Actions) =>
    for Action in *@game_state.Actions
      execute_command()
  ---
  -- Some display thing
  -- @param self
  display: =>
    require("map_display")(@display_state.board.map)

return Kernel
