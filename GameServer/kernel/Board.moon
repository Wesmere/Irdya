----
-- @classmod


array2d = require "pl.array2d"


class Board


    new: (map) =>

      rows, cols = array2d.size(map)
      @map = map -- [x][y] --> terrain_type.string
      @units = array2d.new(rows, cols, "") -- [x][y] --> unit.id
      @villages = array2d.new(rows, cols, 0) -- [x][y] --> owner side_number

      --@time = array2d.new(rows, cols, "") -- [x][y] --> schedule.id
      --@labels: {} -- [x][y] --> label.data - the global labels
      --@items: {} -- [x][y] --> item.data
      --@sound_sources: {} -- [x][y] -->

    validate: () =>

      record = {}
      for row in *@units
        for col in *row
          assert(record[col] == false)
          record[col] = true



return Board
