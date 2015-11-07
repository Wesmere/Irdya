colors = require "ansicolors"

array2d = require "pl.array2d"

--    _ _           _ _
--  /     \       /     \
-- /       \ _ _ /       \
-- \       /14/28\       /
--  \ _ _ /Fighter\ _ _ /
--  /     \ Mm^Fp /     \
-- /       \ _ _ /       \
-- \       /     \       /
--  \ _ _ /       \ _ _ /


--//    ---
--   /       \
--  /         \
--  \         /
--   \       /
--     -

display_map = (map) ->

  dim_x = #map
  dim_y = #map[0]

  reach_map = array2d.new(dim_x, dim_y, false)
  reach_map[5][5] = true
  reach_map[5][6] = true
  reach_map[1][5] = true

  sidebar = {
    "HP: "
    "XP: "
    "MP: "
    "def: "
  }

  terrain_colors =
    ["Hh^Vhh"]: "yellowbg bright magenta"
    ["Hh^Fds"]: "yellowbg green"
    Ke: "magentabg black"
    ["Ww^Bw/"]: "greenbg cyan"
    Hh: "yellowbg red"
    Ce: "magentabg bright white"
    Mm: "redbg dim white"
    Rd: "greenbg bright yellow"
    Rr: "greenbg bright yellow" -- road is flat
    ["Re^Vhc"]: "greenbg magenta" -- village
    ["Gs^Vht"]: "greenbg magenta" -- village
    ["Gs^Vh"]: "greenbg bright magenta" -- village
    ["Gg^Vh"]: "greenbg bright magenta" -- village
    Wo: "bluebg cyan" -- deep water
    Ww: "cyanbg blue" -- shallow water
    Gs: "greenbg bright white" -- flat
    Gg: "greenbg bright white" -- flat
    Ds: "yellowbg bright yellow" -- sand
    ["Gs^Fds"]: "greenbg bright green" --black"
    ["Re^Fds"]: "greenbg bright green" --black"
    ["Gs^Es"]: "greenbg bright white"
    ["Rd^Es"]: "greenbg bright white"
    ["Rd^Es"]: "greenbg bright white"


  tput_cols = io.popen("tput cols")
  cols = tput_cols\read!
  tput_lines = io.popen("tput lines")
  lines = tput_lines\read!

  hex_lines = 4
  hex_cols = 7 --(9 + 7) / 2

  h_max = (lines - 3) / hex_lines
  w_max = (cols - 2) / hex_cols

  h = math.min(h_max, dim_y)
  w = math.min(w_max, dim_x)

  add_zeroes = (number, digits) ->
    num_str = "#{number}"

    if #num_str < digits
      num_str = "0#{num_str}"
      return add_zeroes(num_str, digits)
    else
      return num_str

  make_fit = (str, size) ->
    if #str == size
      return str
    if #str < (size - 1)
      return make_fit(' ' .. str .. ' ', size)
    if #str < size
      return make_fit(str .. ' ', size)

  io.write("\027[H\027[2J")

  turn = 12
  turn_limit = 18
  gold = 68
  villages = 8
  all_villages = 14
  units = 15
  upkeep = 8
  brutto_upkeep = 22
  income = -1
  time = "14:36"

  print "Turn: #{turn}/#{turn_limit} | Gold: #{gold} | Villages: #{villages}/#{all_villages} | Units: #{units} | Upkeep: #{upkeep} (#{brutto_upkeep}) | Income: #{income} | #{time}"

  line = ""
  odd = true
  for i = 1, w
    if odd
      line ..= "  _____  "
    else
      line ..= "     "
    odd = not odd
  print line



  highlight = (str, yes) ->
    if yes
      return colors("%{reverse}#{str}")
    else
      return colors("%{reset}#{str}")

  get_terrain = (x,y) ->
    loc_x = add_zeroes(x, 2)
    loc_y = add_zeroes(y, 2)
    terrain = ""
    color = "whitebg"
    if map[x]
      if map[y]
        terrain = map[x][y]
    if terrain_colors[terrain]
      color = terrain_colors[terrain]
    loc = make_fit("#{loc_x},#{loc_y}", 5)
    loc = colors("%{#{color}}#{loc}")
    terrain = make_fit(terrain, 7)
    terrain = colors("%{#{color}}#{terrain}")
    return loc, terrain, color

  get_line = (i, odd_line, even_line) ->
    line = ""
    odd = true
    for j = 1 , w
      if odd
        loc, terrain, color = get_terrain(j,i)
        line ..= colors(odd_line)
      else
        loc, terrain, color = get_terrain(j, i - 1)
        line ..= colors(even_line)
      odd = not odd
    line ..= "\n"
    return line

  line1 = (i) ->
    --highlight = if reach_map[1][i]
    --  highlighter else ""
    --line = colors(" #{highlight}/")
    odd_line = "#{loc}%{reset}#{highlight}\\"
    even_line = "#{terrain}%{reset}#{highlight}/"
    return get_line(i, odd_line, even_line)

  line2 = (i) ->
    highlight = if reach_map[1][i]
      highlighter else ""
    line = colors("#{highlight}/")
    odd = true
    for j = 1, w
      if odd
        terrain = ""
        if map[j]
          if map[i]
            terrain = map[j][i]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        line ..= colors("%{#{color}}       %{reset}#{highlight}\\")
      else
        terrain = ""
        if map[j]
          if map[i - 1]
            terrain = map[j][i - 1]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        line ..= colors("%{#{color}}_____%{reset}#{highlight}/")
      odd = not odd
    line ..= "\n"
    return line

  line3 = (i) ->
    line = colors("#{highlight}\\")
    odd = true
    for j = 1, w
      if odd
        terrain = ""
        if map[j]
          if map[i]
            terrain = map[j][i]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        terrain = make_fit(terrain, 7)
        line ..= colors("%{#{color}}#{terrain}%{reset}#{highlight}/") --"#{terrain}/"
      else
        terrain = ""
        if map[j]
          if map[i]
            terrain = map[j][i]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        loc_x = add_zeroes(j, 2)
        loc_y = add_zeroes(i, 2)
        loc = make_fit("#{loc_x},#{loc_y}", 5)
        line ..= colors("%{#{color}}#{loc}%{reset}#{highlight}\\") --"#{loc}\\"
      odd = not odd
    line ..= "\n"
    return line

  line4 = (i) ->
    line = colors("#{highlight} \\")
    odd = true
    for j = 1, w
      if odd
        terrain = ""
        if map[j]
          if map[i]
            terrain = map[j][i]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        terrain = make_fit(terrain, 7)
        line ..= colors("%{#{color}}_____%{reset}#{highlight}/")
      else
        terrain = ""
        if map[j]
          if map[i]
            terrain = map[j][i]
        color = "whitebg"
        if terrain_colors[terrain]
          color = terrain_colors[terrain]
        terrain = make_fit(terrain, 7)
        line ..= colors("%{#{color}}       %{reset}#{highlight}\\")
      odd = not odd
    line ..= "\n"
    return line

  highlight = "%{reverse}"
  screen = ""
  for i = 1, h
    screen ..= line1(i) .. line2(i) .. line3(i) .. line4(i)

  print screen

return display_map
