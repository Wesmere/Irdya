wsl_action
    id: "chat"
    description: "Displays a message in the chat area, not visible for observers. Alternative visible for observers: LuaWML:Display#wesnoth.message"

    scheme:
        speaker:
            description: [[(default="WML") A string for the name of the sender of the message.]]

        message:
            description: "The message that should be displayed."
            StandardSideFilter:
                description: "tags and keys as argument; if the same client controls multiple sides that match, then the message will only be displayed once."

    action: (cfg, wesnoth) ->
        side_list = wesnoth.get_sides(cfg)
        speaker = tostring(cfg.speaker or "WML")
        message = tostring(cfg.message or
            helper.wml_error "[chat] missing required message= attribute.")

        for side in *side_list
            if side.controller == "human"
                wesnoth.message(speaker, message)
                break
