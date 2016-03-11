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

wsl_error = error
-- import wsl_error from require "actions"
import message from require "interface"
import try from require "misc"

log =
    warn: message
    :error --: wsl_error
    trace: message
    debug: message
    info: message


local ENV

Registry = {}
content =
    Units:
        unit_type: {}
    toplevel: {}

wsl_handler_loader = (cfg) ->
    assert(cfg.id, "no id for wsl table handler")
    local env
    local dest
    Registry[cfg.id] = {}
    if cfg.scope
        unless ENV.folders[cfg.scope]
            ENV.folders[cfg.scope] = {}
            table.insert(ENV.folders, cfg.scope)
            content[cfg.scope] = {}
            ENV.folders[cfg.scope]["_"] = (str) -> return str
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

    env[cfg.id] = (config) ->

        assert(file_path)
        assert(file_name)
        --- @todo do validation here!
        dest[cfg.id][config.id] = config
        if entry = Registry[cfg.id][config.id]
            entry.loaded = true
        else Registry[cfg.id][config.id] =
            loaded: true

    ENV.on_scan[cfg.id] = (config) ->
        assert(file_path)
        assert(file_name)

        unless config.id
            wsl_error("No id key in '#{cfg.id}' from #{path}/#{file}")

        if entry = Registry[cfg.id][config.id]

            entry.path = file_path
            entry.file = file_name
        else
            Registry[cfg.id][config.id] =
                path: file_path
                file: file_name


ENV = -- holds tables being used as environment
    toplevel: {
        ["_"]: (str) -> str
    }
    on_scan:
        ["_"]: (str) -> str
        wsl_handler: (cfg) ->
            --- @todo clean up
            -- Registry.wsl_handler[cfg.id] =
            --     path: path
            --     file: file
        wsl_table: wsl_table_scanner
    folders: { -- envs for wesmod content folders
        "WSL"
           --- @todo think about same name but different scopes
           --  Which currently just overwrites the on_scan function
        WSL:
            ["_"]: (str) -> str
            wsl_table: (cfg) ->
            wsl_handler: wsl_handler_loader
    }


----
-- Load a single file within the given environment.
-- @tparam Game self nothing
-- @string file the filepath to load
-- @tab env environment to execute in
load_cfg_file = (file, env) ->
    anal_mode = true --- @todo read from a config?
    assert(env, "No env")
    assert(file, "No file")

    file_fun, err = moonscript.loadfile(file)
    unless file_fun
        --- @todo think about a better error output format
        --- err is most likely a syntax error
        log.error("Error parsing file: '#{file}' >> '#{err}'")
        if anal_mode
            log.fatal("Anal mode exit")
            utils.quit("Anal exit")
        return

    file_path = path.dirname(file)
    file_basename = path.basename(file)
    some_env =
        file_name: file_basename
        :file_path
        :assert
        :table

    env.file_name = file_basename
    env.file_path = file_path
    env.assert = assert
    env.table = table
    for key, thing in pairs env
        if type(thing) == "function"
            --- @todo clean up
            -- env = getfenv(thing)
            -- env.file_name = file_basename
            -- env.file_path = file_path
            utils.setfenv(thing, env)

    env.tostring = tostring
    --- @todo clean up
    --ENV.on_scan._file = file_basename
    --ENV.on_scan._path = file_path
    utils.setfenv(file_fun, env)

    try
        do: ->
            file_fun!
        catch: (err) ->
            --- @todo better error output. Error is a runtime error
            wsl_error("Error executing file: " .. file .. ": " .. err)
            if anal_mode
                log.fatal("Anal mode exit")
                utils.quit("Anal exit")
        finally: ->
            log.trace("Loaded File: " .. file)


---
-- Load only the files at this level of the directory structure.
-- @tparam Game self
-- @string content_dir_path
-- @tab env environment to execute the files in
load_files = (content_dir_path, env) ->
    assert(content_dir_path)
    assert(env)
    --- @todo this patterns don't work
    --files = dir.getfiles(content_dir_path, "@(*.moon|*.lua)")
    files = dir.getfiles(content_dir_path, "*.moon")
    for file in *files
        load_cfg_file(file, env)


----
-- Load each and every file in the given path.
-- @tparam Game self
-- @string content_dir_path root path to load from
-- @tab env environment to run the file loader with
load_all_files = (content_dir_path, env) ->
    assert(content_dir_path)
    assert(env)
    log.trace("Loading all files in: " .. content_dir_path)
    iter = dir.walk(content_dir_path, false, false)
    helper = (root, dirs, files) ->
        log.trace(root)
        --- @todo this patterns don't work
        --for file in *dir.filter(files, "@(*.moon|*.lua)")
        for file in *dir.filter(files, "*.moon")
            filepath = path.join(root, file)
            load_cfg_file(filepath, env)
    seq = require("pl.seq").foreach(iter, helper)


----
-- Scans all the root for stuff
-- @tparam Game self
-- @string root_path
scan_root = (root_path) ->
    env = ENV.on_scan
    log.info("Scanning root: " .. root_path)
    load_all_files(root_path, env)


wsl_table_scanner = (cfg, file, dir_path) ->
    @state.Registry.wsl_table[cfg.id] =
        path: dir_path
        file: file

    dump_path = "/tmp/wml_dump"
    dir.makepath(dump_path)

    file_name = "WesMod"
    if scope = cfg.scope
        file_name = scope

    file_path = path.join(dump_path, file_name)

    mode = "a"
    header1 = "# "
    header2 = "## "
    header3 = "### "
    list_element = "* "
    bold = (str) -> return "**#{str}**"
    italic = (str) -> return "_#{str}_"

    file_handle_mode = assert(io.open(file_path, mode))
    if scope = cfg.scope
        file_handle_mode\write("#{header1}#{scope}WSL\n")

    file_handle_mode\write("#{header2}the #{italic(cfg.id)} table\n")
    if description = cfg.description
        file_handle_mode\write("#{description}\n\n")

    file_handle_mode\write("The following keys are recognized in the #{bold(cfg.id)} tables:\n")

    if scheme = cfg.scheme
        for key, config in pairs scheme
            if description = config.description
                file_handle_mode\write("#{list_element}#{bold(key)}: #{description}\n")


----
-- load WesMod by path
-- @tparam Game self
-- @string wesmod_path
load_wesmod_by_path = (wesmod_path) ->
    log.info("Loading WesMod at: " .. wesmod_path)
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


----
-- Loads a registered WesMod when you know the id
-- @function load_wesmod
-- @string id of the WesMod to load
load_wesmod = (id) ->
    unless id
        print "Available WesMods:"
        for key, value in pairs Registry.wesmod
            print key
        return
    mod = Registry.wesmod[id]
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
    mod.loaded = load_wesmod_by_path(mod_path)
    switch mod.type
        when nil
            log.warn("WesMod of type nil")
        when "campaign"
            log.debug("Loading campaign: " .. id)
        else
            log.debug("Loading some type: " .. mod.type .. " with " .. id)


{
    :load_cfg_file
    :scan_root
    :load_wesmod
    :load_wesmod_by_path
    :Registry
    :content
    :ENV
}
