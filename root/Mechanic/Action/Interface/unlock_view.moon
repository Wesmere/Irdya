wsl_action
    id: "unlock_view"
    description: "Unlocks gamemap view scrolling for human players."

    action: (cfg, wesnoth) ->
        wesnoth.lock_view(false)
