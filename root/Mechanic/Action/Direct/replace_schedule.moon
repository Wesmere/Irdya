
wsl_action
    id: "replace_schedule"
    description: "Replace the time of day schedule of the entire scenario."

    action: (cfg, kernel) ->
        kernel\print("'replace_schedule' not implemented yet.")

    scheme:
        schedule:
            --TimeWSL:
            description: "the new schedule."

        current_time:
            description: "The time slot number (starting with zero) active at schedule replacement."

