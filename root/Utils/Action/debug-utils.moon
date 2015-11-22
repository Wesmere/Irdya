-- This file contains macros useful for debugging and testing purposes.

----
-- Emit a debug message.  Meant to be overridden with no-op definition
-- of the same name for production use.
DEBUG_MSG = (MESSAGE_TEXT) ->
    message
        speaker: "narrator"
        message: MESSAGE_TEXT
        image: "wesnoth-icon"

----
-- Logs a WML debug message to consol and the in-game chat.
-- It does nothing unless the 'wml' log domain is set to debug
-- level at application startup (usually with --log-debug=wml),
-- or in-game with the :log command (e.g. :log debug wml).
--
-- Example:
-- DEBUG "inconsistency: $unit.id is not loyal!"
DEBUG = (TEXT) ->
    wml_message
        logger: "debug"
        message: TEXT

----
-- Logs a WML message to console and the in-game chat. It does
-- nothing unless the 'wml' log domain is set to log level at
-- application startup (usually with --log-info=wml), or in-game
-- with the :log command (e.g. :log info wml).
--
-- Example:
-- LOG "player moved to forbidden location"
LOG = (TEXT) ->
    wml_message
        logger: "log"
        message: TEXT

----
-- Logs a WML warning to console and the in-game chat. It does
-- nothing unless the 'wml' log domain is set to warning level at
-- application startup (usually with --log-warning=wml), or in-game
-- with the :log command (e.g. :log warning wml).
--
-- Example:
-- WARNING "malformed unit data"
WARNING = (TEXT) ->
    wml_message
        logger: "warn"
        message: TEXT

----
-- Logs a WML error to console and the in-game chat.
--
-- Example:
-- ERROR "could not respawn hero at 2,4"
ERROR = (TEXT) ->
    wml_message
        logger: "err"
        message: TEXT

----
-- Measure (in milliseconds) the time arbitrary event WML takes to
-- execute.
--
-- Example:
-- event
--     name: "Start"
--
--     command: TIMED_ACTIONS "orc renaming", () ->
--         MODIFY_UNIT {race = "orc"}, "name", _ "Azir"
TIMED_ACTIONS TITLE_TEXT CONTENT_WML
    TIME_ACTIONS_time_begin = set_variable
        time: "stamp"

    CONTENT_WML!

    TIME_ACTIONS_time_end = set_variable
        time: "stamp"

    message
        speaker: "narrator"
        caption: TITLE_TEXT
        message: "#{TIME_ACTIONS_time_end - TIME_ACTIONS_time_begin} milliseconds."
        image: "wesnoth-icon"
