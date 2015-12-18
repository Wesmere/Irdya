wsl_action
    id: "add_ai_behavior"
    description: ""

    action: (cfg, wesmere) ->

        unit = wesmere.get_units(helper.get_child(cfg, "filter"))[1] or
		helper.wsl_error("[add_ai_behavior]: no unit specified")

        side = cfg.side or
            helper.wsl_error("[add_ai_behavior]: no side attribute given")

        sticky = cfg.sticky or false
        loop_id = cfg.loop_id or "main_loop"
        eval = cfg.evaluation
        exec = cfg.execution
        id = cfg.bca_id or ("bca-" .. unit.__cfg.underlying_id)

        ux = unit.x -- @note: did I get it right that coordinates in C++ differ by 1 from thos in-game(and in Lua)?
        uy = unit.y

        unless (eval and exec)
            helper.wsl_error("[add_ai_behavior]: invalid execution/evaluation handler(s)")

        path = "stage[" .. loop_id .. "].candidate_action[" .. id .. "]" -- bca: behavior candidate action

        conf = {
            action: "add"
            engine: "lua"
            path: path
            side: side
            {
                "candidate_action"
                {
                    id: id
                    name: id
                    engine: "lua"
                    sticky: sticky
                    unit_x: ux
                    unit_y: uy
                    evaluation: eval
                    execution: exec
                }
            }
        }
        wesmere.wsl_actions.modify_ai(conf)
        --wesmere.message("Adding a behavior")
