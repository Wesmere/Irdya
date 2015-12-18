
local helper = wesmere.require "lua/helper.lua"
local utils = wesmere.require "lua/wsl-utils.lua"
local T = helper.set_wsl_tag_metatable {}
local wsl_actions = wesmere.wsl_actions

local used_items = {}

function wsl_actions.object(cfg)
	local context = wesmere.current.event_context

	-- If this item has already been used
	local obj_id = utils.check_key(cfg.id, "id", "object", true)
	if obj_id and used_items[obj_id] then return end

	local unit, command_type, text

	local filter = helper.get_child(cfg, "filter")
	if filter then
		unit = wesmere.get_units(filter)[1]
	else
		unit = wesmere.get_unit(context.x1, context.y1)
	end

	-- If a unit matches the filter, proceed
	if unit then
		text = tostring(cfg.description or "")
		command_type = "then"

		local dvs = cfg.delayed_variable_substitution
		local add = cfg.no_write ~= true
		if dvs then
			wesmere.add_modification(unit, "object", helper.literal(cfg), add)
		else
			wesmere.add_modification(unit, "object", helper.parsed(cfg), add)
		end

		wesmere.select_hex(unit.x, unit.y, false)

		-- Mark this item as used up
		if obj_id then used_items[obj_id] = true end
	else
		text = tostring(cfg.cannot_use_message or "")
		command_type = "else"
	end

	-- Default to silent if object has no description
	local silent = cfg.silent
	if silent == nil then silent = (text:len() == 0) end

	if not silent then
		wsl_actions.redraw{}
		local name = tostring(cfg.name or "")
		wesmere.show_popup_dialog(name, text, cfg.image)
	end

	for cmd in helper.child_range(cfg, command_type) do
		local action = utils.handle_event_commands(cmd, "conditional")
		if action ~= "none" then break end
	end
end

local old_on_load = wesmere.game_events.on_load
function wesmere.game_events.on_load(cfg)
	for i = 1,#cfg do
		if cfg[i][1] == "used_items" then
			-- Not quite sure if this will work
			-- Might need to loop through and copy each ID separately
			used_items = cfg[i][2]
			table.remove(cfg, i)
			break
		end
	end
	old_on_load(cfg)
end

local old_on_save = wesmere.game_events.on_save
function wesmere.game_events.on_save()
	local cfg = old_on_save()
	table.insert(cfg, T.used_items(used_items) )
	return cfg
end

function wesmere.wsl_conditionals.found_item(cfg)
	return used_items[utils.check_key(cfg.id, "id", "found_item", true)]
end
