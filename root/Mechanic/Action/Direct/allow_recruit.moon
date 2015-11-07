--- 
-- [allow_recruit]
-- Allows a side to recruit units it couldn't previously recruit.
-- @param type: the types of units that the side can now recruit.
-- @param side: (default=1) the number of the side that is being allowed to recruit the units. This can be a comma-separated list note: Default side=1 for empty side= is deprecated.
-- @param StandardSideFilter tags and keys; default for empty side= is all sides, as usual in a SSF.
--- @TODO not proper implemented yet
wsl_action
  id: "allow_recruit"
  function: (cfg) ->
    sides = kernel\get_sides(cfg)
    for side in *sides
      kernel\print("some not implemented stuff.")
