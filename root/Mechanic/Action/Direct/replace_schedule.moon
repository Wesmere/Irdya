
wsl_action
    id: "replace_schedule"
    description: "Replace the time of day schedule of the entire scenario."

    action: (cfg) ->
        if schedule = cfg.schedule
            wesmere.set_schedule(schedule)

    scheme:
        schedule:
            --TimeWSL:
            description: "the new schedule."

        current_time:
            description: "The time slot number (starting with zero) active at schedule replacement."

