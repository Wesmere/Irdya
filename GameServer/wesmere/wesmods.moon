----
-- This class is more or less just a loader for the game's content
-- @classmod Game

-- MoonScript
moonscript = require "moonscript"
moon = require "moon"
-- Penlight lib requires
path = require "pl.path"
dir = require "pl.dir"
utils = require "pl.utils"
tablex = require "pl.tablex"

wsl_error = require("actions").wsl_error


-- Lifted from MoonScript@GitHub
try = (t) ->
  ok,err = pcall t.do
  unless ok
      t.catch err
  t.finally! if t.finally

local ENV

Registry = {}
content = {}

wsl_handler_loader = (cfg) ->
    assert(cfg.id, "no id for wsl table handler")
    assert(cfg.scope, "no scope for wsl table handler " .. cfg.id)
    local env
    local dest
    Registry[cfg.id] = {}
    if cfg.scope
        unless ENV.folders[cfg.scope]
            ENV.folders[cfg.scope] = {}
        table.insert(ENV.folders, cfg.scope)
        content[cfg.scope] = {}
    env = ENV.folders[cfg.scope]
    wsl_error("Folder unknown: " .. cfg.scope) unless env
    dest = content[cfg.scope]
    unless env[cfg.id]
        env[cfg.id] = {}
        dest[cfg.id] = {}
    else
        unless ENV.toplevel[cfg.id]
            ENV.toplevel[cfg.id] = {}
            content.toplevel[cfg.id] = {}
        env = ENV.toplevel
        dest = content.toplevel
    env[cfg.id] = (config, file, path) ->
        --- @todo do validation here!
        dest[cfg.id][config.id] = config
        if entry = Registry[cfg.id][config.id]
            entry.loaded = true
        else Registry[cfg.id][config.id] =
            loaded: true
        ENV.on_scan[cfg.id] = (config, file, path) ->
        if entry = Registry[cfg.id][config.id]
            entry.path = path
            entry.file = file
        else
            Registry[cfg.id][config.id] =
                path: path
                file: file

ENV = -- holds tables being used as env
    toplevel: {}
    on_scan:
        wsl_handler: (cfg, file, dir_path) ->
            Registry.wsl_handler[cfg.id] =
                path: dir_path
                file: file
  --      wsl_table: wsl_table_scanner
    folders: { -- envs for wesmod content folders
        "WSL"
           --- @todo think about same name but different scopes
           --  Which currently just overwrites the on_scan function
        WSL:
            wsl_table: (cfg) ->
            wsl_handler: wsl_handler_loader
    }

---
-- jo class game here
--class Game
  --- @todo move into function or outside of class?
 -- try = require "../utils/try"
  ----
  -- Load a single file within the given environment.
  -- @tparam Game self nothing
  -- @string file the filepath to load
  -- @tab env environment to execute in
load_cfg_file = (file, env) ->
    anal_mode = true --@state.Config.anal_mode
    --- @todo better and more output
    assert(env, "No env")
    assert(file, "No file")
    env.tostring = tostring
    file_path = path.dirname(file)
    file_basename = path.basename(file)
    file_fun, err = moonscript.loadfile(file)
    if not file_fun
      --- @todo think about a better error output format
      --- err is most likely a syntax error
      log.error("Error parsing file: #{file} >> #{err}")
      if anal_mode
        log.fatal("Anal mode exit")
        utils.quit("Anal exit")
      return
    new_env = {}
    for key, value in pairs env
      new_env[key] = (cfg) -> value(cfg, file_basename, file_path)
    --new_env.state = @state
    utils.setfenv(file_fun, new_env)
    try
      do: ->
        file_fun!
      catch: (e) ->
        --- @todo better error output. Error is a runtime error
        wsl_error("Error executing file: " .. file .. ": " .. e)
        if anal_mode
        --  log.fatal("Anal mode exit")
          utils.quit("Anal exit")
      finally: ->
      --  log.trace("Loaded File: " .. file)
  ---
  -- Load only the files at this level of the directory structure.
  -- @tparam Game self
  -- @string content_dir_path
  -- @tab env environment to execute the files in
  -- load_files: (content_dir_path, env) =>
  --   assert(content_dir_path)
  --   assert(env)
  --   --- @todo this patterns don't work
  --   --files = dir.getfiles(content_dir_path, "@(*.moon|*.lua)")
  --   files = dir.getfiles(content_dir_path, "*.moon")
  --   for file in *files
  --     filePath = path.join(content_dir_path, file)
  --     @load_cfg_file(filePath, env)

----
-- Load each and every file in the given path.
-- @tparam Game self
-- @string content_dir_path root path to load from
-- @tab env environment to run the file loader with
load_all_files = (content_dir_path, env) ->
    assert(content_dir_path)
    assert(env)
    -- log.trace("Loading all files in: " .. content_dir_path)
    iter = dir.walk(content_dir_path, false, false)
    helper = (root, dirs, files) ->
    --  log.trace(root)
      --- @todo this patterns don't work
      --for file in *dir.filter(files, "@(*.moon|*.lua)")
      for file in *dir.filter(files, "*.moon")
        filepath = path.join(root, file)
        load_cfg_file(filepath, env)
    seq = require("pl.seq").foreach(iter, helper)
  ---
  -- load WesMod by path
  -- @tparam Game self
  -- @string wesmod_path
  -- load_wesmod_by_path: (wesmod_path) =>
  --   log.info("Loading WesMod at: " .. wesmod_path)
  --   -- Note: order matters
  --   found = ""
  --   for i, folder in ipairs @state.ENV.folders
  --     folder_path = path.join(wesmod_path, folder)
  --     if not path.exists(folder_path)
  --       continue
  --     found ..= folder .. " "
  --     env = @state.ENV.folders[folder]
  --     @load_all_files(folder_path, env)
  --   log.trace("Found: " .. found)
  --   -- loading root of the wesmod
  --   env = @state.ENV.toplevel
  --   @load_files(wesmod_path, env)
  --   return true

  ---
  -- Scans all the root for stuff
  -- @tparam Game self
  -- @string root_path
scan_root = (root_path) ->
    env = ENV.on_scan
    -- log.info("Scanning root: " .. root_path)
    load_all_files(root_path, env)




    ---
  -- Constructor
  -- @tparam Game self
  -- @tab config
  -- @string config.data_dir
  -- @string config.userdata_dir
  -- new: (config) =>

  --   wsl_table_scanner = (cfg, file, dir_path) ->
  --     @state.Registry.wsl_table[cfg.id] =
  --       path: dir_path
  --       file: file

  --     dump_path = "/tmp/wml_dump"
  --     dir.makepath(dump_path)

  --     file_name = "WesMod"
  --     if scope = cfg.scope
  --       file_name = scope

  --     file_path = path.join(dump_path, file_name)

  --     mode = "a"
  --     header1 = "# "
  --     header2 = "## "
  --     header3 = "### "
  --     list_element = "* "
  --     bold = (str) -> return "**#{str}**"
  --     italic = (str) -> return "_#{str}_"

  --     file_handle_mode = assert(io.open(file_path, mode))

  --     if scope = cfg.scope
  --       file_handle_mode\write("#{header1}#{scope}WSL\n")

  --     file_handle_mode\write("#{header2}the #{italic(cfg.id)} table\n")

  --     if description = cfg.description
  --       file_handle_mode\write("#{description}\n\n")

  --     file_handle_mode\write("The following keys are recognized in the #{bold(cfg.id)} tables:\n")

  --     if scheme = cfg.scheme
  --       for key, config in pairs scheme
  --         if description = config.description
  --           file_handle_mode\write("#{list_element}#{bold(key)}: #{description}\n")



  --   @state =
  --     content:
  --       toplevel: {}
  --     Registry:
  --       wsl_table: {}
  --       wsl_handler: {}

  --     Config: config

  --   -- root must be loaded first or only wml_config function is known.
  --   if config.data_dir
  --     @load_wesmod_by_path(config.data_dir)
  --     @scan_root(config.data_dir)
  --   else
  --     log.fatal("no data dir")
  --     utils.quit("no data dir")

  --   if userdata_dir = config.userdata_dir
  --     @scan_root(userdata_dir)
  --   @kernel = require("kernel/Kernel")(@state.content)
  -- ---
  -- -- dumb the game state
  -- -- @tparam Game self
  -- debug: =>
  --   @kernel\debug!
  -- ---
  -- -- test the west
  -- -- @tparam Game self
  -- test: =>
  --   @load_wesmod("test")
  --   --moon.p(@state.content)
  --   @start_scenario("test")
  --   --@kernel\fire_event("Start")
  -- ---
  -- -- display the map for debugging purposes
  -- -- @tparam Game self
  -- display_map: =>
  --   @kernel\display!

  --
  --
  -- @param cfg
  -- register_action: (cfg) =>
  --   env =
  --     kernel: @kernel
  --   utils.setfenv(cfg.command, @content_state.actions)
  --   assert(cfg.name)
  --   if not @game_state.events[cfg.name]
  --     @game_state.events[cfg.name] = {}
  --   table.insert(@game_state.events[cfg.name], cfg)


  ---
  -- Start the scenario
  -- @tparam Game self
  -- @string id
  -- @tab cfg
  --start_scenario: (id, cfg) =>
  --  assert(id, "Missing first arguement")
  --  @kernel = require("kernel/Kernel")(@state)
  --  @kernel\start_scenario(id, cfg)

  ---
  -- Load a WesMod by its id
  -- @tparam Game self
  -- @string id of the WesMod to load
  -- load_wesmod: (id) =>
  --   unless id
  --     print "Available WesMods:"
  --     for key, value in pairs @state.Registry.wesmod
  --       print key
  --     return
  --   mod = @state.Registry.wesmod[id]
  --   if not mod
  --     log.error("Can't load, WesMod not registered: " .. id)
  --     return false
  --   assert(mod)
  --   if mod.loaded
  --     log.warn("WesMod " .. id .. " already loaded")
  --     return false
  --   -- @todo
  --   -- if (not @core_loaded) and mod.type != "core"
  --   --   log.error("WesMod " .. id .. " can't load, core needed")
  --   --   return false
  --   mod_path = mod.path
  --   mod.loaded = @load_wesmod_by_path(mod_path)
  --   switch mod.type
  --     when nil
  --       log.warn("WesMod of type nil")
  --     when "scenario"
  --       @kernel\load_scenario(mod_path)
  --     when "campaign"
  --       log.debug("Loading campaign: " .. id)
  --     else
  --       log.debug("Loading some type: " .. mod.type .. " with " .. id)

----
-- Load a single file within the given environment.
-- @tparam Game self nothing
-- @string file the filepath to load
-- @tab env environment to execute in
-- load_cfg_file = (file, env) ->
--     anal_mode = @state.Config.anal_mode
--     --- @todo better and more output
--     assert(env, "No env")
--     assert(file, "No file")
--     env.tostring = tostring
--     file_path = path.dirname(file)
--     file_basename = path.basename(file)
--     file_fun, err = moonscript.loadfile(file)
--     unless file_fun
--         --- @todo think about a better error output format
--         --- err is most likely a syntax error
--         log.error("Error parsing file: #{file} >> #{err}")
--         if anal_mode
--             log.fatal("Anal mode exit")
--             utils.quit("Anal exit")
--         return
--         new_env = {}
--     for key, value in pairs env
--         new_env[key] = (cfg) -> value(cfg, file_basename, file_path)
--     --new_env.state = @state
--     utils.setfenv(file_fun, new_env)
--     try
--         do: ->
--             file_fun!
--         catch: (e) ->
--             --- @todo better error output. Error is a runtime error
--             log.error("Error executing file: " .. file .. ": " .. e)
--             if anal_mode
--                 log.fatal("Anal mode exit")
--                 utils.quit("Anal exit")
--         finally: ->
--             log.trace("Loaded File: " .. file)

----
--
-- @string id of the WesMod to load
--
load_wesmod = (id) ->
    unless id
        print "Available WesMods:"
        for key, value in pairs @state.Registry.wesmod
            print key
        return
    mod = @state.Registry.wesmod[id]
    unless mod
        log.error("Can't load, WesMod not registered: " .. id)
        return false
    assert(mod)
    if mod.loaded
        log.warn("WesMod " .. id .. " already loaded")
        return false
    -- @todo
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


----
-- load WesMod by path
-- @tparam Game self
-- @string wesmod_path
load_wesmod_by_path = (wesmod_path) ->
    -- log.info("Loading WesMod at: " .. wesmod_path)
    -- Note: order matters
    found = ""
    for i, folder in ipairs ENV.folders
      folder_path = path.join(wesmod_path, folder)
      if not path.exists(folder_path)
        continue
      found ..= folder .. " "
      env = ENV.folders[folder]
      load_all_files(folder_path, env)
    log.trace("Found: " .. found)
    -- loading root of the wesmod
    env = ENV.toplevel
    load_files(wesmod_path, env)
    return true

{
    :scan_root
    :load_wesmod
    :load_wesmod_by_path
}
