
----
-- Load a single file within the given environment.
-- @tparam Game self nothing
-- @string file the filepath to load
-- @tab env environment to execute in
load_cfg_file = (file, env) ->
    anal_mode = @state.Config.anal_mode
    --- @todo better and more output
    assert(env, "No env")
    assert(file, "No file")
    env.tostring = tostring
    file_path = path.dirname(file)
    file_basename = path.basename(file)
    file_fun, err = moonscript.loadfile(file)
    unless file_fun
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
            log.error("Error executing file: " .. file .. ": " .. e)
            if anal_mode
                log.fatal("Anal mode exit")
                utils.quit("Anal exit")
        finally: ->
            log.trace("Loaded File: " .. file)

----
--
-- @string id of the WesMod to load
--
wesmere.load_wesmod = (id) ->
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


  ---
  -- load WesMod by path
  -- @tparam Game self
  -- @string wesmod_path
  load_wesmod_by_path: (wesmod_path) =>
    log.info("Loading WesMod at: " .. wesmod_path)
    -- Note: order matters
    found = ""
    for i, folder in ipairs @state.ENV.folders
      folder_path = path.join(wesmod_path, folder)
      if not path.exists(folder_path)
        continue
      found ..= folder .. " "
      env = @state.ENV.folders[folder]
      @load_all_files(folder_path, env)
    log.trace("Found: " .. found)
    -- loading root of the wesmod
    env = @state.ENV.toplevel
    @load_files(wesmod_path, env)
    return true
