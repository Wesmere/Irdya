--tablex = require "pl.tablex"

--moon = require "moon"
--moonscript = require "moonscript"

parse_map_string = (map_string) ->
  assert(map_string)
  log.trace("Parsing a map string: " .. map_string)
  map = {}
  y = 1
  for line in string.gmatch(map_string, "[^\r\n]+")
    x = 1
    for terrain_string in string.gmatch(line, "([^ ]+)")
      if y == 1
        map[x] = {}
      map[x][y] = terrain_string
      x = x + 1
    y = y + 1
  return map

return parse_map_string

----
--
--
-- class Map
--   new: (cfg) =>
--     @data = load_map_string(cfg.map_data)
