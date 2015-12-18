
-- function wsl_actions.lua(cfg)
--     local cfg = helper.shallow_literal(cfg)
--     local bytecode, message = load(cfg.code or "")
--     if not bytecode then error("~lua:" .. message, 0) end
--     bytecode(helper.get_child(cfg, "args"))
-- end
