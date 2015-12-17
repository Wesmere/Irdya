helper = wesnoth.require "lua/helper.lua"
wml_actions = wesnoth.wml_actions
game_events = wesnoth.game_events

scenario_items = {}

add_overlay = (x, y, cfg) ->
	wesnoth.add_tile_overlay(x, y, cfg)
	items = scenario_items[x * 10000 + y]
	unless items
		items = {}
		scenario_items[x * 10000 + y] = items
	table.insert(items, { x = x, y = y, image = cfg.image, halo = cfg.halo, team_name = cfg.team_name, visible_in_fog = cfg.visible_in_fog, redraw = cfg.redraw })
end

local function remove_overlay(x, y, name)
	local items = scenario_items[x * 10000 + y]
	if not items then return end
	wesnoth.remove_tile_overlay(x, y, name)
	if name then
		for i = #items,1,-1 do
			local item = items[i]
			if item.image == name or item.halo == name then
				table.remove(items, i)
			end
		end
	end
	if not name or #items == 0 then
		scenario_items[x * 10000 + y] = nil
	end
end

local old_on_save = game_events.on_save
function game_events.on_save()
	local custom_cfg = old_on_save()
	for i,v in pairs(scenario_items) do
		for j,w in ipairs(v) do
			table.insert(custom_cfg, { "item", w })
		end
	end
	return custom_cfg
end

local old_on_load = game_events.on_load
function game_events.on_load(cfg)
	local i = 1
	while i <= #cfg do
		local v = cfg[i]
		if v[1] == "item" then
			local v2 = v[2]
			add_overlay(v2.x, v2.y, v2)
			table.remove(cfg, i)
		else
			i = i + 1
		end
	end
	old_on_load(cfg)
end





local methods = { remove = remove_overlay }

function methods.place_image(x, y, name)
	add_overlay(x, y, { x = x, y = y, image = name })
end

function methods.place_halo(x, y, name)
	add_overlay(x, y, { x = x, y = y, halo = name })
end

return methods
