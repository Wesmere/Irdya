-- MoonScript
--moon = require "moon"
moonscript = require "moonscript"
-- Penlight lib requires
path = require "pl.path"
dir = require "pl.dir"
utils = require "pl.utils"
tablex = require "pl.tablex"
----
-- This class is more or less just a loader for the game's content
-- @TODO
-- @classmod Game
class Game
  --- @TODO move into function or outside of class?
  try = require "../utils/try"
  ----
  -- Load a single file within the given environment.
  -- @param file the filepath to load
  -- @param env environment to execute in
  load_cfg_file: (file, env) =>
    anal_mode = @state.Config.anal_mode
    assert(env, "No env")
    assert(file, "No file")
    env.tostring = tostring
    file_path = path.dirname(file)
    file_basename = path.basename(file)
    file_fun, err = moonscript.loadfile(file)
    if not file_fun
      --- @TODO think about a better error output format
      log.error("#{file} >> #{err}")
      if anal_mode
        log.fatal("Anal mode exit")
        utils.quit("Anal exit")
      return
    new_env = {}
    for key, value in pairs env
      new_env[key] = (cfg) -> value(cfg, file_basename, file_path)
    new_env.state = @state
    utils.setfenv(file_fun, new_env)
    try
      do: ->
        file_fun!
      catch: (e) ->
        log.error("Error Loading config file: " .. file .. ": " .. e)
        if anal_mode
          log.fatal("Anal mode exit")
          utils.quit("Anal exit")
      finally: ->
        log.trace("Loaded File: " .. file)
  ---
  -- Load only the files at this level of the directory structure.
  -- @param content_dir_path
  -- @param env environment to execute the files in
  load_files: (content_dir_path, env) =>
    assert(content_dir_path)
    assert(env)
    --- @TODO this patterns don't work
    --files = dir.getfiles(content_dir_path, "@(*.moon|*.lua)")
    files = dir.getfiles(content_dir_path, "*.moon")
    for file in *files
      filePath = path.join(content_dir_path, file)
      @load_cfg_file(filePath, env)
  ---
  -- Load each and every file in the given path.
  -- @param content_dir_path root path to load from
  -- @param env environment to run the file loader with
  load_all_files: (content_dir_path, env) =>
    assert(content_dir_path)
    assert(env)
    log.trace("Loading all files in: " .. content_dir_path)
    iter = dir.walk(content_dir_path, false, false)
    helper = (root, dirs, files) ->
      log.trace(root)
      --- @TODO this patterns don't work
      --for file in *dir.filter(files, "@(*.moon|*.lua)")
      for file in *dir.filter(files, "*.moon")
        filepath = path.join(root, file)
        @load_cfg_file(filepath, env)
    seq = require("pl.seq").foreach(iter, helper)
  ---
  -- load WesMod by path
  -- @param wesmod_path string
  load_wesmod_by_path: (wesmod_path) =>
    log.info("Loading WesMod at: " .. wesmod_path)
    -- Note: order matters
    -- knowns = { "Eras", "Help", "Tips" }
    knowns = { "WSL", "Mechanics", "Terrain", "Units", "Scenarios" }
    found = ""
    for folder in *knowns
      folder_path = path.join(wesmod_path, folder)
      if not path.exists(folder_path)
        continue
      found ..= folder .. " "
      env = @state.ENV.folders[folder]
      @load_all_files(folder_path, env)
    log.trace("Found: " .. found)
    -- loading root of the wesmod
    env = @state.ENV.folders.WesMods
    @load_files(wesmod_path, env)
    return true
  ---
  -- @TODO
  -- @param root_path
  scan_root: (root_path) =>
    env = @state.ENV.on_scan
    log.info("Scanning root: " .. root_path)
    @load_all_files(root_path, env)
  ---
  -- Constructor @TODO
  -- @param data_dir
  -- @param userdata_dir
  -- @param config_dir
  new: (config) =>
    -- @core_loaded = false
    -- @core_loaded = true --- @TODO
    @state =
      Registry:
        maps: {}
        scenarios: {}
        WSL_tags: {}
        roots: {}
        campaigns: {}
        eras: {}
        game_cores: {}
      ENV: -- holds tables being used as env
        on_scan:
          wsl_config: (cfg) -> @state.Registry.WSL_tags[cfg.name] = true
        folders: -- envs for wesmod content folders
          Mechanics: {}
          Terrain: {}
          WesMods: {}
          Units: {}
          Help: {}
          Scenarios: {}
          --- @TODO think about same name but different scopes
          --  Which currently just overwrites the on_scan function
          WSL:
            wsl_config: (cfg) ->
              assert(cfg.name, "no name")
              assert(cfg.on_load, "no on_load")
              @state.ENV.folders[cfg.scope][cfg.name] = cfg.on_load
              if cfg.on_scan
                @state.ENV.on_scan[cfg.name] = cfg.on_scan
              else
                @state.ENV.on_scan[cfg.name] = ->
        action: {} -- the env for event handlers
        command: {} -- is it an env? at least a collenction of functions
      Mechanics: -- used by Kernel execution
        actions: {} -- direct kernel access
        commands: {}
      Help:
        toplevel: {}
        topic: {}
        section: {}
      Terrain:
        terrain_type: {}
      Units:
        move_type: {} -- depend on terrain_types
        race: {}
        trait: {}
        unit_type: {} -- depend on movetypes, races, traits
      WesMods: {}
      Era:
        factions: {}
        era: {}
      Scenarios: {}
      Map: {}
      Config: config

    -- root must be loaded first or only wml_config function is known.
    if config.data_dir
      @load_wesmod_by_path(config.data_dir)
      @scan_root(config.data_dir)
    else
      log.fatal("no data dir")
      utils.quit("no data dir")

    if userdata_dir
      @scan_root(userdata_dir)
    @kernel = require("kernel/Kernel")(@state)
  ---
  -- dumb the game state
  debug: =>
    @kernel\debug!
  ---
  --
  -- @param cfg
  register_action: (cfg) =>
    env =
      kernel: @kernel
    utils.setfenv(cfg.command, @content_state.actions)
    assert(cfg.name)
    if not @game_state.events[cfg.name]
      @game_state.events[cfg.name] = {}
    table.insert(@game_state.events[cfg.name], cfg)
  ---
  -- @TODO
  -- @param id
  -- @param cfg
  start_scenario: (id, cfg) =>
    assert(id, "Missing first arguement")
    @kernel = require("kernel/Kernel")(@state)
    @kernel\start_scenario(id, cfg)
  ---
  -- Load a WesMod by its id
  -- @param id of the WesMod to load
  load_wesmod: (id) =>
    unless id
      print "Available WesMods:"
      for key, value in pairs @state.WesMods
        print key
      return
    mod = @state.WesMods[id]
    if not mod
      log.error("Can't load, WesMod not registered: " .. id)
      return false
    assert(mod)
    if mod.loaded
      log.warn("WesMod " .. id .. " already loaded")
      return false
    -- @TODO
    -- if (not @core_loaded) and mod.type != "core"
    --   log.error("WesMod " .. id .. " can't load, core needed")
    --   return false
    mod_path = mod.path
    mod.loaded = @load_wesmod_by_path(mod_path)
    switch mod.type
      when nil
        log.warn("WesMod of type nil")
      when "scenario"
        @kernel\load_scenario(mod_path)
      when "campaign"
        log.debug("Loading campaign: " .. id)
      else
        log.debug("Loading some type: " .. mod.type .. " with " .. id)
---
return Game
