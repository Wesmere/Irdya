---
--
-- @return iff t is a pure array
isArray = (t) ->
  return false if type(t) == "function"
  i = 0
  for _ in pairs(t)
    i = i + 1
    if t[i] == nil
      return false
  return true
---
--
-- @param t
-- @return
wrapInArray = (t) ->
  return t if isArray(t)
  return { t }
---
--
-- @param cfg
-- @param scheme
-- @param name
validate = (cfg, scheme, name) ->
  -- check for mandatory keys
  for key, config in pairs scheme
    if config.is_mandatory
      unless cfg[key]
        error("Missing mandatory WSL key: #{key} in #{name} table")
  for key, value in pairs cfg
    -- check for unknown keys
    config = scheme[key]
    unless key_scheme
      error("Unknown WSL key: #{key} in #{name} table")

    if config.is_list
      value = wrapInArray(value)
    elseif isArray(value)
      error("The #{key} key in the #{name} table doesn't likes lists")

    --validate_array = () ->

    -- type = onfig.types
    -- switch type
    --     when "table"
    --         key_scheme = config.scheme
    --         for i, val in ipairs value
    --             validate(value, key_scheme, key)
    --     when "String"
    --         for i, val in ipairs value
    --             unless type(val) == "String"
    --     when "iString"
    --         for i, val in ipairs value
    --             unless type(val) == "String"
    --     when "Integer"
    --         for i, val in ipairs value
    --             unless type(val) == "String"
    --     else
    --         error("key with unknown type: #{key} in #{name} table")
