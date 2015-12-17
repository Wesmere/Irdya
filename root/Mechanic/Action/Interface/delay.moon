wsl_action
    id: "delay"
    description: "Pauses the game."

    scheme:
        time:
            description: "the time to pause in milliseconds"
            accelerate: "(boolean yes|no, default no): (Version 1.13.0 and later only) whether the delay is affected by acceleration."

    action: (cfg, wesnoth) ->
        delay = tonumber(cfg.time) or
            helper.wml_error "[delay] missing required time= attribute."
        accelerate = cfg.accelerate or false
        wesnoth.delay(delay, accelerate)
