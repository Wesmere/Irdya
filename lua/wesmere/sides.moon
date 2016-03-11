----
-- @submodule wesmere

-- LuaWSL:Sides
-- This page describes the LuaWSL functions and helpers for handling sides and villages.

----
-- This is not a function but a table indexed by side numbers.
-- Its elements are proxy tables with these fields:
-- The metatable of these proxy tables appears as "side".
-- @usage side = wesmere.sides[1]
-- side.gold += 50
-- wesmere.message(string.format("%d sides", #wesmere.sides))
-- @table wesmere.sides
-- @number side the side number
-- @number gold
-- @number village_gold
-- @number base_income integers (read/write)
-- @number total_income integer (read only)
-- @tfield tstring objectives
-- @tfield tstring user_team_name translatable strings (read/write)
-- @bool objectives_changed (read/write)
-- @string team_name: string (read/write)
-- @string controller: string (read/write) possible values: human, network, ai, network_ai, null, idle. note: In networked multiplayer, the controller attribute is ambiguous. Be very careful or you have OOS errors. A local human should always be "human", a local ai should always be "ai", a remote human should always be "network". and a remote ai should always be "network_ai". An empty side should be null on all clients. An idle side should appear similarly as a "human" side for all sides that don't own the idle side, i.e. as "network". These values may be checked using lua, or the :controller command in game. This value can only be set to 'human', 'ai' or 'null'.
-- @bool fog (read)
-- @bool shroud (read)
-- @bool hidden (read/write)
-- @string name (read)
-- @string color (read/write)
-- @tparam {string,...} recruit (read/write)
-- @bool scroll_to_leader (read/write)
-- @string village_support (read/write)
-- @string flag (read)
-- @string flag_icon (read)
-- @string defeat_condition (read/write) See description at SideWSL, ScenarioWSL#Scenario_End_Conditions
-- @bool lost (read/write) If lost=true this side will be removed from the persitent list at the end of the scenario. This key can also be used to stop the engine from removing a side by setting it to false. Writing this key only works in a victory/defeat event.
-- @tab __cfg WSL table (dump)



add_side = (cfg) =>



----
-- Returns a table array containing tables for these sides matching the passed StandardSideFilter.
-- @function wesmere.get_sides
-- @tab filter StandardSideFilter
-- @usage
-- -- set gold to 0 for all sides with a leader
-- sides = wesmere.get_sides({ {"has_unit", { can_recruit: true }} })
-- for side in *sides
--     side.gold = 0
get_sides = (filter) ->
    -- @todo check for filter.side and preselect
    return for side in *wesmere.sides
        if wesmere.match_filter(side, filter)
            side
        else continue



----
-- Gives ownership of the village at the given location to the given side (or remove ownership if none). Ownership is also removed if nil or 0 is passed for the third parameter, but no capture events are fired in this case.
-- @function wesmere.set_village_owner
-- @number x
-- @number y
-- @number[opt=0] side
-- @bool[opt=false] fire_events An optional 4th parameter (boolean true|false, default: false) can be passed determining whether to fire any capture events.
-- @treturn number|bool side number of the former owner
-- @usage wesmere.set_village_owner(12, 15, 1)
set_village_owner = (x, y, side=0, fire_events=false) =>
	-- int x = luaL_checkint(L, 1);
	-- int y = luaL_checkint(L, 2);

	-- int new_side = lua_isnoneornil(L, 3) ? 0 : luaL_checkint(L, 3);

	loc = Location(x,y)
	return false unless is_village(@board.map[x][y])

    old_side = wesmere.board.village[x][y]

    -- if (new_side == old_side || new_side < 0 || new_side > static_cast<int>(teams().size()) || board().team_is_defeated(teams()[new_side - 1])) {
    --     return 0;
    -- }

    --if old_side
    --     teams()[old_side - 1].lose_village(loc);

    -- if (new_side) {
    --     teams()[new_side - 1].get_village(loc, old_side, (luaW_toboolean(L, 4) ? &gamedata() : NULL) );
    -- }
    -- return 0;

    --if old_side
    --    wesmere.board.village[x][y]

    if side
        wesmere.board.village[x][y] = side

    return old_side

----
-- Returns true if sideA is enemy of sideB, false otherwise.
-- @function wesmere.is_enemy
-- @number sideA
-- @number sideB
-- @treturn bool
-- @usage enemy_flag = wesmere.is_enemy(1, 3)
is_enemy = (sideA, sideB) ->

    wesmere.wsl_error("wesmere.is_enemy: sideA not a number") unless sideA or type(sideA) != "number"
    wesmere.wsl_error("wesmere.is_enemy: sideB not a number") unless sideB or type(sideB) != "number"
    wesmere.wsl_error("wesmere.is_enemy: sideA not valid") if sideA < 1 or sideA > #wesmere.sides
    wesmere.wsl_error("wesmere.is_enemy: sideB not valid") if sideB < 1 or sideB > #wesmere.sides

    -- We're not enemy of ourselves
    return false if sideA == sideB
    teamsA = Set(wesmere.sides[sideA].team_name)
    teamsB = Set(wesmere.sides[sideB].team_name)
    -- We're friendly with any side we share a team with
    return (teamsA * teamsB)\isempty!

----
-- Matches a side against a given StandardSideFilter.
-- @function wesmere.match_side
-- @usage wesmere.message(tostring(wesmere.match_side(1, {{"has_unit", { type: "Troll" }}})))
match_side = (side, filter) ->

    ----
    --
    --
    check_side_number = (side, range) ->


    -- if (cfg_.has_attribute("side_in")) {
    --     if (!check_side_number(t,cfg_["side_in"])) {
    --         return false;
    --     }
    -- }
    return false if filter.side_in and not check_side_number(side, filter.side_in)

    -- if (cfg_.has_attribute("side")) {
    --     if (!check_side_number(t,cfg_["side"])) {
    --         return false;
    --     }
    -- }
    return false if filter.side and not check_side_number(side, filter.side)

    -- if (!side_string_.empty()) {
    --     if (!check_side_number(t,side_string_)) {
    --         return false;
    --     }
    -- }

    -- config::attribute_value cfg_team_name = cfg_["team_name"];
    -- if (!cfg_team_name.blank()) {
    --     const std::string& that_team_name = cfg_team_name;
    --     const std::string& this_team_name = t.team_name();
    --     if(std::find(this_team_name.begin(), this_team_name.end(), ',') == this_team_name.end()) {
    --         if(this_team_name != that_team_name) return false;
    --     }
    --     else {
    --         const std::vector<std::string>& these_team_names = utils::split(this_team_name);
    --         bool search_futile = true;
    --         BOOST_FOREACH(const std::string& this_single_team_name, these_team_names) {
    --             if(this_single_team_name == that_team_name) {
    --                 search_futile = false;
    --                 break;
    --             }
    --         }
    --         if(search_futile) return false;
    --     }
    -- }
    if that_team_name = filter.team_name
        this_team_name = side.team_name
        return false if (Set(that_team_name) * Set(this_team_name)).is_empty!

    -- Allow filtering on units
    -- if(cfg_.has_child("has_unit")) {
    --     const vconfig & ufilt_cfg = cfg_.child("has_unit");
    --     if (!ufilter_)
    --         ufilter_.reset(new unit_filter(ufilt_cfg, fc_, flat_));
    --     bool found = false;
    --     BOOST_FOREACH(const unit &u, fc_->get_disp_context().units()) {
    --         if (u.side() != t.side()) {
    --             continue;
    --         }
    --         if (ufilter_->matches(u)) {
    --             found = true;
    --             break;
    --         }
    --     }
    --     if(!found && ufilt_cfg["search_recall_list"].to_bool(false)) {
    --         BOOST_FOREACH(const unit_const_ptr & u, t.recall_list()) {
    --             scoped_recall_unit this_unit("this_unit", t.save_id(),t.recall_list().find_index(u->id()));
    --             if(ufilter_->matches(*u)) {
    --                 found = true;
    --                 break;
    --             }
    --         }
    --     }
    --     if (!found) {
    --         return false;
    --     }
    -- }
    if unit_filter = filter.has_unit
        found = false
        for map_unit in *wesmere.units
            continue if map_unit.side != side.side
            if map_unit\matches(unit_filter)
                found = true
                break
        unless found and filter.search_recall_list
            for recall_unit in *side.recall_list
                if recall_unit\matches(unit_filter)
                    found = true
                    break
        return false unless found

    -- const vconfig& enemy_of = cfg_.child("enemy_of");
    -- if(!enemy_of.null()) {
    --     if (!enemy_filter_)
    --         enemy_filter_.reset(new side_filter(enemy_of, fc_));
    --     const std::vector<int>& teams = enemy_filter_->get_teams();
    --     if(teams.empty()) return false;
    --     BOOST_FOREACH(const int side, teams) {
    --         if(!(fc_->get_disp_context().teams())[side - 1].is_enemy(t.side()))
    --             return false;
    --     }
    -- }
    if enemy_of = filter.enemy_of
        enemies = wesmere.get_sides(enemy_of)
        return false if #sides == 0
        for enemy in enemies
            return false if wesmere.is_enemy(side, enemy)

    -- const vconfig& allied_with = cfg_.child("allied_with");
    -- if(!allied_with.null()) {
    --     if (!allied_filter_)
    --         allied_filter_.reset(new side_filter(allied_with, fc_));
    --     const std::vector<int>& teams = allied_filter_->get_teams();
    --     if(teams.empty()) return false;
    --     BOOST_FOREACH(const int side, teams) {
    --         if((fc_->get_disp_context().teams())[side - 1].is_enemy(t.side()))
    --             return false;
    --     }
    -- }
    if allied_filter = filter.allied_with
        allies = wesmere.get_sides(allied_filter)
        return false if #allies == 0
        for ally in allies
            return false if ally.is_enemy(side.side)

    -- const vconfig& has_enemy = cfg_.child("has_enemy");
    -- if(!has_enemy.null()) {
    --     if (!has_enemy_filter_)
    --         has_enemy_filter_.reset(new side_filter(has_enemy, fc_));
    --     const std::vector<int>& teams = has_enemy_filter_->get_teams();
    --     bool found = false;
    --     BOOST_FOREACH(const int side, teams) {
    --         if((fc_->get_disp_context().teams())[side - 1].is_enemy(t.side()))
    --         {
    --             found = true;
    --             break;
    --         }
    --     }
    --     if (!found) return false;
    -- }
    if enemy_filter = filter.has_enemy
        enemies = wesmere.get_sides(enemy_filter)
        found = false
        for enemy in *enemies
            if wesmere.is_enemy(side, enemy)
                found = true
                break
        return false unless found

    -- const vconfig& has_ally = cfg_.child("has_ally");
    -- if(!has_ally.null()) {
    --     if (!has_ally_filter_)
    --         has_ally_filter_.reset(new side_filter(has_ally, fc_));
    --     const std::vector<int>& teams = has_ally_filter_->get_teams();
    --     bool found = false;
    --     BOOST_FOREACH(const int side, teams) {
    --         if(!(fc_->get_disp_context().teams())[side - 1].is_enemy(t.side()))
    --         {
    --             found = true;
    --             break;
    --         }
    --     }
    --     if (!found) return false;
    -- }
    if ally_filter = filter.has_ally
        allies = wesmere.get_sides(ally_filter)
        found = false
        for ally in *allies
            unless wesmere.is_enemy(side, ally)
                found = true
                break
        return false unless found

    -- const config::attribute_value cfg_controller = cfg_["controller"];
    -- if (!cfg_controller.blank())
    -- {
    --     if (network::nconnections() > 0 && synced_context::is_synced()) {
    --         ERR_NG << "ignoring controller= in SSF due to danger of OOS errors" << std::endl;
    --     }
    --     else {
    --         bool found = false;
    --         BOOST_FOREACH(const std::string& controller, utils::split(cfg_controller))
    --         {
    --             if(t.controller().to_string() == controller) {
    --                 found = true;
    --             }
    --         }
    --         if(!found) {
    --             return false;
    --         }
    --     }
    -- }
    if controller = filter.controller
        found = false
        for each in *controller
            if each == side.controller
                found = true
                break
        return false unless found

    return true

----
-- Returns the starting location of the given side.
-- @function wesmere.get_starting_location
-- @usage loc = wesmere.get_starting_location(1)
-- wesmere.message(string.format("side 1 starts at (%u, %u)", loc[1], loc[2]))
get_starting_location = (side) ->
    return wesmere.sides[side].starting_location

----
-- Returns an iterator over sides that can be used in a for-in loop.
-- @function helper.all_sides
-- @usage for side in helper.all_sides() do side.gold = 200
all_sides = () ->
    return sides

----
-- Stub text
-- @function wesmere.get_village_owner
-- @number x
-- @number y
-- @treturn number the side that owns the village at the given location.
-- @usage owned_by_side_1 = wesmere.get_village_owner(12, 15) == 1
get_village_owner = (x, y) =>
    -- @todo rename to get_tile_owner to make it less wesnoth specific
    return @board.villages[x][y]


{
    :sides
    :add_side
    :get_sides
    :get_village_owner
    :set_village_owner
    :is_enemy
    :match_side
    :get_starting_location
    :all_teams
}
