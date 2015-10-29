#!/usr/bin/env moon

-- MoonScript
moonscript = require "moonscript"

-- Penlight
dir = require "pl.dir"
path = require "pl.path"
utils = require "pl.utils"
app = require "pl.app"
--app.require_here!


VERSION = "0.0"
manifest_file_name = "WesMod.moon"

check_script_name = ->
  if _G.arg == nil
    error('no command line args available\nWas this run from a main script?')
  return _G.arg[0]

--- add the current script's path to the Lua module path.
-- Applies to both the source and the binary module paths. It makes it easy for
-- the main file of a multi-file program to access its modules in the same directory.
-- `base` allows these modules to be put in a specified subdirectory, to allow for
-- cleaner deployment and resolve potential conflicts between a script name and its
-- library directory.
-- @string base optional base directory.
-- @treturn string the current script's path with a trailing slash
require_here = (base) ->
  p = path.dirname(check_script_name())
  if not path.isabs(p)
    p = path.join(path.currentdir(),p)
  if p\sub(-1,-1) ~= path.sep
    p = p..path.sep
  if base then
    p = p..base..path.sep
  so_ext = path.is_windows and 'dll' or 'so'
  lsep = package.path\find '^;' and '' or ';'
  csep = package.cpath\find '^;' and '' or ';'
  package.path = ('%s?.moon;%s?.lua;%s?%sinit.lua%s%s')\format(p,p,p,path.sep,lsep,package.path)
  package.cpath = ('%s?.%s%s%s')\format(p,so_ext,csep,package.cpath)
  return p

require_here!

require "moonscript"



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
--log-level=trace|debug|info|warn|error|fatal
--data-dir
--userdata-dir
--userconfig-dir
--anal_mode
]])
  utils.quit("Normal Exit")

platform = app.platform!
log.debug("Running on " .. platform)
log.info("Working Directory: " .. path.currentdir!)
log.info("Application file path: " .. _G.arg[0])

abs_path = path.abspath(path.dirname(_G.arg[0]))

path.chdir(abs_path)


log.info("Applicatoin absolute path: " .. abs_path)
root_path = path.join(abs_path, "../root")
log.info("root_path: " .. root_path)
norm_path = path.normpath(root_path)
log.info("normpath: " .. norm_path)

--- @TODO detect them
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
        root: (cfg) ->
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

prompt = require "prompt"
with prompt
  .colorize = true
  .name = "Irdya"
  .history = "/tmp/.myprompt_history"
  .prompts = {"%  ", "%% "}
  .enter()

log.info("Exiting...")
utils.quit("Normal Exit")
