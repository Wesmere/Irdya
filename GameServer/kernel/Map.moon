parse_map_string = (map_string) ->
  assert(map_string)
  log.trace("Parsing map string: " .. map_string)
  map = {}
  y = 0
  for line in string.gmatch(map_string, "[^\r\n]+")
    x = 0
    for terrain_string in string.gmatch(line, "([^ ]+)")
      if y == 0
        map[x] = {}
      map[x][y] = terrain_string
      x = x + 1
    y = y + 1
  return map

return parse_map_string
