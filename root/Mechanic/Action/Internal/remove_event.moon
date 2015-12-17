wsl_action
    id: "remove_event"
    description: [[(Version 1.13.0 and later only)
Removes the event with the specified id. Equivalent to [event] id=foo remove=yes. See EventWML.]]

    action: (cfg, wesnoth) ->
        id = cfg.id
        for w in *id
            wesnoth.remove_event_handler(w)

    scheme:
        id:
            description: [[the id of the event to remove. May be a comma separated list.]]
            mandatory: true
            list: true
