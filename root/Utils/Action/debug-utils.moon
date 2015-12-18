-- This file contains macros useful for debugging and testing purposes.

----
-- Emit a debug message.  Meant to be overridden with no-op definition
-- of the same name for production use.
DEBUG_MSG = (MESSAGE_TEXT) ->
    message
        speaker: "narrator"
        message: MESSAGE_TEXT
        image: "wesmere-icon"

----
-- Logs a WSL debug message to consol and the in-game chat.
-- It does nothing unless the 'wsl' log domain is set to debug
-- level at application startup (usually with --log-debug=wsl),
-- or in-game with the :log command (e.g. :log debug wsl).
--
-- Example:
-- DEBUG "inconsistency: $unit.id is not loyal!"
DEBUG = (TEXT) ->
    wsl_message
        logger: "debug"
        message: TEXT

----
-- Logs a WSL message to console and the in-game chat. It does
-- nothing unless the 'wsl' log domain is set to log level at
-- application startup (usually with --log-info=wsl), or in-game
-- with the :log command (e.g. :log info wsl).
--
-- Example:
-- LOG "player moved to forbidden location"
LOG = (TEXT) ->
    wsl_message
        logger: "log"
        message: TEXT

----
-- Logs a WSL warning to console and the in-game chat. It does
-- nothing unless the 'wsl' log domain is set to warning level at
-- application startup (usually with --log-warning=wsl), or in-game
-- with the :log command (e.g. :log warning wsl).
--
-- Example:
-- WARNING "malformed unit data"
WARNING = (TEXT) ->
    wsl_message
        logger: "warn"
        message: TEXT

----
-- Logs a WSL error to console and the in-game chat.
--
-- Example:
-- ERROR "could not respawn hero at 2,4"
ERROR = (TEXT) ->
    wsl_message
        logger: "err"
        message: TEXT

----
-- Measure (in milliseconds) the time arbitrary event WSL takes to
-- execute.
--
-- Example:
-- event
--     name: "Start"
--
--     command: TIMED_ACTIONS "orc renaming", () ->
--         MODIFY_UNIT {race = "orc"}, "name", _ "Azir"
TIMED_ACTIONS = (TITLE_TEXT, CONTENT_WSL) ->
    TIME_ACTIONS_time_begin = set_variable
        time: "stamp"

    CONTENT_WSL!

    TIME_ACTIONS_time_end = set_variable
        time: "stamp"

    message
        speaker: "narrator"
        caption: TITLE_TEXT
        message: "#{TIME_ACTIONS_time_end - TIME_ACTIONS_time_begin} milliseconds."
        image: "wesmere-icon"
