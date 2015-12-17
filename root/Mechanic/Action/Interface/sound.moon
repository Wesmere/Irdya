
wsl_action
    id: "sound"
    description: "Plays a sound"

    scheme:
        name:
            description: "the filename of the sound to play (in sounds/ as .wav or .ogg)"
        repeat:
            description: "repeats the sound for a specified additional number of times (default=0)]]"

    action: (cfg, wesnoth) ->
        name = cfg.name or helper.wml_error("[sound] missing required name= attribute")
        wesnoth.play_sound(name, cfg["repeat"])
