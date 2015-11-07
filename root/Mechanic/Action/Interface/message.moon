wsl_action
    id: "message"
    -- @TODO implement correctly
    action: (cfg, kernel) ->
        kernel\print("some message for the player: " .. cfg.message)

