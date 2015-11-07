-- From the WML Reference Wiki:
-- [capture_village]
-- Changes the ownership of a village.
-- StandardLocationFilter: all village locations matching the filter are affected.
-- side: the side that takes control of the village. This side needs to have a leader (canrecruit=yes). If the side key is not given, the village will become neutral (unless [filter_side] is present, in which case that side fiter decides, see below).
-- [filter_side] with StandardSideFilter tags and keys as arguments; if both this tag and inline side= are present it's an error. Otherwise, the first matching side gets ownership (or the village becomes neutral if none match).
-- fire_event (boolean yes|no, default: no): Whether any capture events shall be fired.

---
-- capture_village
-- @param side  
-- @param filter_side @ref StandardSideFilter
-- @param fire_event
wsl_action
  id: "capture_village"
  function: (kernel, cfg) ->
    side = cfg.side
    filter_side = cfg.filter_side
    if filter_side
      side = kernel\get_sides(filter_side)[1]
    fire_event = cfg.fire_event
    locs = kernel\get_locs(cfg)
    for loc in *locs
      kernel\capture_village(side, loc, fire_event)
