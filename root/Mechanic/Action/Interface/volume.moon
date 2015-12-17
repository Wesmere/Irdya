wsl_action
    id: "volume"
    description: "Changes the game volume to a percent of the preferences volume for the game being played. Values can go from 0 to 100:"

    action: (cfg, wesnoth) ->

    scheme:
        music:
            description: "Changes the music volume."
            description: "sound: Changes the sound volume."
