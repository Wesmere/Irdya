#!/usr/bin/env moon
----
-- Irdya thing
-- @script some


VERSION = "0.0"
manifest_file_name = "WesMod.moon"

-- MoonScript
moonscript = require "moonscript"

-- Penlight
dir = require "pl.dir"
path = require "pl.path"
utils = require "pl.utils"
app = require "pl.app"

check_script_name = ->
  if _G.arg == nil
    error('no command line args available\nWas this run from a main script?')
  return _G.arg[0]

script_name = check_script_name!
abs_path = path.abspath(path.dirname(script_name))
path.chdir(abs_path)

-- enable global logging facility
export log = require "utils/log"


flags, params = app.parse_args!
log.level = flags["log-level"] or "info"

if flags["log-help"]
  log.trace("TRACE")
  log.debug("DEBUG")
  log.info("INFO")
  log.warn("WARN")
  log.error("ERROR")
  log.fatal("FATAL")
  utils.quit("Normal Exit")

if flags["help"]
  print([[
--log-help
--log-level=trace|debug|info|warn|error|fatal
--data-dir
--userdata-dir
--userconfig-dir
--anal_mode
]])
  utils.quit("Normal Exit")

platform = app.platform!
log.debug("Running on " .. platform)
log.trace("Working Directory: " .. path.currentdir!)
log.debug("Applicatoin absolute path: " .. abs_path)
root_path = path.join(abs_path, "../root")
log.trace("root_path: " .. root_path)
norm_path = path.normpath(root_path)
log.trace("normpath: " .. norm_path)

--- @todo detect them
data_dir = flags["data-dir"] or norm_path
userdata_dir = flags["userdata-dir"] or path.join("~/.local/share/kernel", VERSION, "data")
userconfig_dir = flags["userconfig-dir"] or "~/.config/kernel"

userdata_dir = path.expanduser(userdata_dir)
userconfig_dir = path.expanduser(userconfig_dir)

check_root = (root, name, create) ->
  if path.isdir(root)
    log.info(name .. " found at: " .. root)
    manifest = path.join(root, manifest_file_name)
    if path.isfile(manifest)
      log.debug("Reading manifest file: " .. manifest)
      wesmod_type = nil
      env =
        wesmod: (cfg) ->
        -- root: (cfg) ->
          wesmod_type = cfg.type
      file_fun = moonscript.loadfile(manifest)
      utils.setfenv(file_fun, env)
      file_fun!
      if (wesmod_type != "root")
        log.warn(name .. " is not valid at: " .. root)
        return false
      else return true
    -- else log.warn("No Manifest file found at " .. manifest)
  else
    log.warn(name .. "not found at: " .. root)
    if create
      success, err = dir.makepath(root)
      if not success
        log.err("Couldn't create " .. name .. "at " .. root .. ": " .. err)
      else
        log.warn(name .. " created at " .. root)
    return false

data_found = check_root(data_dir, "data-dir", false)
userdata_found = check_root(userdata_dir, "userdata-dir", true)
userconfig_found = check_root(userconfig_dir, "userconfig-dir", true)

if not (data_found or userdata_found)
  log.fatal("No game content found")
  utils.quit("Aborting...")

config =
  data_dir: data_dir
  userdata_dir: userdata_dir
  userconfig_dir: userconfig_dir
  anal_mode: flags["anal-mode"]
  log_level: flags["log-level"] or "info"

export Irdya = require("Game")(config)
Irdya\test!

prompt = require "prompt"
with prompt
  .colorize = true
  .name = "Irdya"
  .history = "/tmp/.myprompt_history"
  .prompts = {"%  ", "%% "}
  .enter()

log.info("Exiting...")
utils.quit("Normal Exit")
