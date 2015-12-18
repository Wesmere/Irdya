----
-- @submodule wesmere

-- LuaWML:Variables
-- This page describes the LuaWML functions and helpers for handling WML variables and containers.

----
-- Loads a WML variable with the given qualified name (argument 1) and converts it into a Lua object. Returns nil if the name does not point to anything, a scalar for a WML attribute, and a table for a WML object. The format of the table is described in LuaWML#Encoding WML objects into Lua tables.
-- Argument 2, if true, prevents the recursive conversion when the name points to an object; a fresh empty table is returned in this case. This is mainly used for writing proxy objects, e.g. in #helper.set_wml_var_metatable.
-- Note that, if the variable name happens to designate a sequence of WML objects, only the first one (index 0) is fetched. If all the WML objects with this name should have been returned, use #helper.get_variable_array instead.
-- @function wesnoth.get_variable
-- @usage wesnoth.fire("store_unit", { variable="my_unit", { "filter", { id="hero" } } })
-- heros_hp = wesnoth.get_variable("my_unit[0].hitpoints")
-- wesnoth.message(string.format("The 'hero' unit has %d hitpoints.", heros_hp))
wesnoth.get_variable = (var_name) ->


----
-- Converts and stores a Lua object (argument 2) to a WML variable (argument 1). A WML object is created for a table, an attribute otherwise.
-- Setting a WML variable to nil erases it.
-- @function wesnoth.set_variable
-- @usage wesnoth.set_variable("my_unit.hitpoints", heros_hp + 10)
wesnoth.set_variable = (var_name, value) ->

----
-- Returns all the WML variables currently set in form of a WML table.
-- @function wesnoth.get_all_vars
-- @usage wesnoth.get_all_vars = () ->
-- for key, value in pairs( wesnoth.get_all_vars! )
--     if type( value ) == "table"
--         print( key, value[1], value[2] )
--     else
--         print( key, value )
wesnoth.get_all_vars = () ->


----
-- Sets the metatable of a table so that it can be used to access WML variables. Returns the table. The fields of the tables are then proxies to the WML objects with the same names; reading/writing to them will directly access the WML variables.
-- helper.set_wml_var_metatable(_G)
-- my_persistent_variable = 42
-- it's not reccomended to use helper.set_wml_var_metatable(_G) because that limits possible gobal variables to valid wml attributes or tables. This can have some surprising effects:
-- c = { a= 9}
-- d = c
-- c.a = 8
-- wesnoth.message(d.a) -- normaly prints 8 but prints 9 with helper.set_wml_var_metatable(_G)
-- local lla = { {"a", {}}}
-- lla[1][2] = lla
-- la = lla -- crashes wesnoth with helper.set_wml_var_metatable(_G)
-- helper = wesnoth.require("lua/helper.lua")
-- helper.set_wml_var_metatable(_G)
-- -- some code later (maybe in another addon)
-- H = wesnoth.require("lua/helper.lua") -- fails because wesnoth.require("lua/helper.lua") doesn' return a valid wmltable..
-- helper = wesnoth.require("lua/helper.lua")
-- helper.set_wml_var_metatable(_G)
-- -- some code later (maybe in another addon)
-- T = helper.set_wml_tag_metatable {}  -- doesn't work
-- V = helper.set_wml_var_metatable({}) -- doesn't work
-- even if you don't use such code in your addon it's still bad because other code of modifications or eras to be used with your addon might do. And you'll mess up their code. This is also true for SP campaigns because it might interfere with ai code and we plan to enable modifications in SP too. Instead you should use set_wml_var_metatable with another table ('V' in this example):
-- V = helper.set_wml_var_metatable({})
-- V.my_persistent_variable = 42
-- @function helper.set_wml_var_metatable
helper.set_wml_var_metatable = () ->


----
-- Returns the first sub-tag of a WML object with the given name.
-- If a third parameter is passed, only children having a id attribute equal to it are considered.
-- @function helper.get_child
-- @usage u = wesnoth.get_units({ id = "Delfador" })[1]
-- costs = helper.get_child(u.__cfg, "movement_costs")
-- wesnoth.message(string.format("Delfador needs %d points to move through a forest.", costs.forest))
helper.get_child = (config, child_tag_name) ->

----
-- Returns the nth sub-tag of a WML object with the given name.
-- @function helper.get_nth_child
-- @param config
-- @param child_tag_name
-- @param n
helper.get_child = (config, child_tag_name, n) ->

----
-- Returns the number of children in the config with the given tag name.
-- @function helper.child_count
helper.child_count = (config, child_tag_name) ->

----
-- @function helper.child_range
helper.child_range = (config, child_tag_name) ->
Returns an iterator over all the sub-tags of a WML object with the given name.
u = wesnoth.get_units({ id = "Delfador" })[1]
for att in helper.child_range(u.__cfg, "attack")
    wesnoth.message(tostring(att.description))

----
-- @function helper.child_array
helper.child_array = (config, child_tag_name) ->
Like helper.child_range, but returns an array instead of an iterator. Useful if you need random access to the children.

----
-- Fetches all the WML container variables with given name and returns a table containing them (starting at index 1).
-- @function helper.get_variable_array
-- @usage get_recall_list = (side) ->
--     wesnoth.fire("store_unit", { x: "recall", variable: "LUA_recall_list })
--     l = get_variable_array "LUA_recall_list"
--     wesnoth.set_variable "LUA_recall_list"
--     return l
helper.get_variable_array = (var_name) ->


----
-- @function helper.get_variable_proxy_array
helper.get_variable_proxy_array(var_name)
Creates proxies for all the WML container variables with given name and returns a table containing them (starting at index 1). This function is similar to #helper.get_variable_array, except that the proxies can be used for modifying WML containers.



helper.set_variable_array
helper.set_variable_array(varname, array)
Creates WML container variables with given name from given table.
helper.set_variable_array("target", { t1, t2, t3 })
-- target[0] <- t1; target[1] <- t2; target[2] <- t3
