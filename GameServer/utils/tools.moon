----
-- Check for a table not consisting of any records and thus being a pure array.
-- @tab t to be checked
-- @return iff t is a pure array
isArray = (t) ->
  return false if type(t) == "function"
  return false unless type(t) == "table"
  i = 0
  for _ in pairs(t)
    i += 1
    return false if t[i] == nil
  return true
----
-- Checks if the given arguement is already
-- @param t item to wrap
-- @return tab
wrapInArray = (t) ->
  return t if isArray(t)
  return { t }
