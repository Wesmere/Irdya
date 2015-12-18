wsl_action
    id: "wsl_action"

    action: (cfg, wesmere) ->
        -- The new tag's name
        name = cfg.name or
            helper.wsl_error "[wsl_action] missing required name= attribute."
        code = cfg.lua_function or
            helper.wsl_error "[wsl_action] missing required lua_function= attribute."
        bytecode, message = load(code)
        unless bytecode
            helper.wsl_error("[wsl_action] failed to compile Lua code: " .. message)
        -- The lua function that is executed when the tag is called
        lua_function = bytecode() or
            helper.wsl_error "[wsl_action] expects a Lua code returning a function."
        wsl_actions[name] = lua_function
