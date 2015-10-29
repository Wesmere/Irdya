moonscript = require "moonscript"
moon = require "moon"
utils = require "pl.utils"
dir = require "pl.dir"

Set = require "pl.Set"

-- log = require "Lua/aux/log"
Location = require "kernel/Location"
Unit = require "kernel/Unit"

----
-- @TODO
-- @classmod Kernel
class Kernel
  ---
  -- Constructor
  -- @content
  new: (content) =>
    assert(content)
    -- contains actions, commands, terrain_types, unit_types, eras, etc
    @content_state = content
    -- some game state @TODO
    @game_state =
      sides: {}
      events: {}
      units: {} -- unit.id --> Location
  -- display state to be synced with the diplay server
    @display_state =
      units: {}
      sides:
        units: {} -- unit.id --> unit.data
        labels: {} --
        villages: {} -- location Set
        map: {}
      -- contains 2darrays for hex grid based issues
      board:
        map: {} -- [x][y] --> terrain_type.id
        units: {} -- [x][y] --> unit.id

        labels: {} -- [x][y] --> label.data
        items: {} -- [x][y] --> item.data
        sound_sources: {} -- [x][y] -->
        villages: {} -- [x][y] --> owner side_number
  ---
  -- @TODO
  -- @return state update for a client
  get_client_state = (side_number) ->
    state =
      sides: {}
      board:
        units: {}
        map: {}
        labels: {}
        items: {}
        sound_sources: {}
    -- own side is known
    state.sides[side_number] = @display_state.sides[side_number]
    -- allied sides are known
    --- @TODO implement allied sides known
    --- @TODO implement a lot more
    return state
  ---
  -- Print the data table
  debug: => moon.p(@)
  ---
  -- Print txt to stdout
  -- @param txt to print
  print: (txt) => print(txt)
  ---
  -- register the given event handler
  -- @param cfg
  -- @return iff the event was registered or removed @TODO
  register_event_handler: (cfg) =>
    -- @TODO handle id
    -- @TODO handle remove
    assert(cfg.name)
    assert(cfg.command)
    utils.setfenv(cfg.command, @content_state.actions)
    if not @game_state.events[cfg.name]
      @game_state.events[cfg.name] = {}
    table.insert(@game_state.events[cfg.name], cfg)
    return true -- @ TODO
  ---
  --
  -- @return iff t is a pure list
  isArray = (t) ->
    i = 0
    for _ in pairs(t)
      i = i + 1
      if t[i] == nil
        return false
    return true
  ---
  -- @TODO
  -- @param thing
  -- @param f
  -- @return
  doArrayOrSingle: (thing, f) =>
    assert(f)
    assert(thing)
    if isArray(thing)
      log.warn("thing is an array")
      result = for item in *thing
        f(@, item)
      return result
    else return f(@, thing)
  ---
  --
  -- @param side
  setup_side: (side) =>
    assert(side)
    @doArrayOrSingle(side.unit, @create_unit)

  ---
  -- Constructs a new unit table and puts it into gamestate
  -- @param cfg
  -- @return Unit created
  create_unit: (cfg) =>
    assert(cfg)
    tablex = require "pl.tablex"
    -- find the unit's type
    unit_type = cfg.type
    --- @TODO handle misssing unit type id more gracefully
    assert(unit_type)
    unit_type_cfg = @content_state.Units.unit_type[unit_type]
    --- @TODO handle missing units more gracefully
    assert(unit_type_cfg)
    new_unit_cfg = tablex.deepcopy(unit_type_cfg)
    tablex.merge(new_unit_cfg, cfg)
    @display_state.units[new_unit_cfg.id] = new_unit_cfg
    new_unit = Unit(@display_state.units[new_unit_cfg.id])
    assert(new_unit)
    return new_unit
  ---
  --
  -- @param id
  -- @param cfg
  start_scenario: (id, cfg) =>
    log.trace("Kernel: Scenario started:" .. id)
    -- @TODO some error handling
    scenario = @content_state.Scenarios[id]
    assert(scenario)
    -- Let's load the map.
    map_parser = require "kernel/Map"
    if map_data = scenario.map_data
      @display_state.board.map = map_parser(map_data)
    elseif map_id = scenario.map
      map_cfg = @content_state.Map[map_id]
      assert(map_cfg)
      @display_state.board.map = map_parser(map_cfg.map_data)
      --moon.p(@display_state.board.map)
    --- @TODO check if every used terrain type is known
    -- Side setup
    assert(scenario.side)
    moon.p(scenario.side)
    @doArrayOrSingle(scenario.side, @setup_side)
  ---
  -- @TODO
  -- @param side
  -- @param loc
  -- @param fire_event
  capture_village: (side, loc, fire_event) =>
    if fire_event
      @fire_event("capture", loc)
  ---
  -- This getter wrapes a unit table from the game state into a class object.
  -- @param location Location or Table to search on
  -- @return Unit on the location or nil
  get_unit: (x, y) =>
    loc = Location(x, y)
    if @game_state.Units[loc\get_x!] == nil
      log.warn("Kernel.get_unit: Trying to get a unit from empty hex")
      return nil
    unit = @game_state.Units[loc\get_x!][loc\get_y!]
    if unit == nil
      log.warn("Kernel.get_unit: Trying to get a unit from empty hex")
      return nil
    return Unit(unit)
  ---
  -- Get all sides matching the given filter
  -- @param sideFilter SSF
  --   side
  --   has_unit
  --     SUF
  --     search_recall_list
  --   team_name
  --   enemy_of: SSF
  --   allied_with: SSF
  --   has_enemy: SSF
  --   has_ally: SSF
  --   controller
  --   and: SSF
  --   or: SSF
  --   not: SSF
  -- @return a number list of matching sides
  get_sides: (sideFilter) =>
    result = Set {}
    number_of_sides = #@display_state.side
    all = Set [i for i = 1, number_of_sides]
    --- @TODO get the order right
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
  --
  -- @param sideFilter SSF
  -- @param
  -- @return iff the given filter matches the given side
  match_side: (sideFilter, side_number) =>
    return false if sideFilter.side != side_number
    return false if @game_state.Sides

  ---
  -- Get all locations matching the filter
  -- @param locationFilter
  -- time_of_day
  -- time_of_day_id
  -- terrain
  -- x,y
  -- area
  -- include_borders
  -- [filter] SUF
  -- [filter_vision]
  --   visible
  --   respect_fog
  -- [filter_owner] SSF
  -- find_in
  -- radius
  -- [filter_radius]
  -- [and]
  -- [or]
  -- [not]
  -- [filter_adjacent_location]
  --   count
  --   adjacent
  -- @return
  get_locs: (locationFilter) =>
    if type(locationFilter) == "function"
      return locationFilter


  ---
  -- Get only a single location
  -- @param locationFilter
  -- @return iff the filter matches
  match_loc: (locationFilter) =>

  ---
  -- get_units
  -- @param
  -- @return all units in game matching the filter
  get_units: (filter) =>
    matches = {}
    -- @TODO try to be fast later
    --if filter.filter_location
    --  locations =
    for unit in *@scenario_state.units
      if unit\filter(filter)
        table.insert(matches, unit)
    return matches
  ---
  -- @param handler
  -- @param primary
  -- @param second
  -- @return iff gamestate changed
  execute_event_handler: (handler, primary, second) =>
    return false if handler.remove
    return false if handler.filter_condition and not handler.filter_condition()
    return false if primary and not primary\filter(handler.filter)
    return false if second  and not second\filter(handler.filter_second)
    --@TODO filter_attack
    --@TODO filter_second_attack
    --@TODO filter_side
    --@TODO delayed_variable_substitution ?
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
  -- @param name string
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
    -- events = @game_state.events[name]
    if events
      for event in *@game_state.events[name]
        @execute_event_handler(event, primary_unit, secondary_unit, first_weapon, second_weapon)
  ---
  -- Handle a command from the display server
  -- @param command
  execute_command: (command) =>
    assert(command.name)
    action_name = command.name
    log.debug("Kernel.execute_command: execute command: " .. action_name)
    action_func = @game_state.Actions[action_name]
    assert(action_func)
    return action_func(Command)
  ---
  --
  -- @param
  execute_command_chain: (Actions) =>
    for Action in *@game_state.Actions
      execute_command()

return Kernel
