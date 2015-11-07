-- [attack]: the player attacked.
-- @param weapon: the index number of the weapon. Weapons are indexed by the unit designer.
-- @param defender_weapon: the index number of the defenders weapon. Weapons are indexed by the unit designer, '-1' to choose the best weapon locally. The '-1' option is deprecated because it can cause OOS.
-- @param [source]: the location of the attacking unit.
-- @param [destination]: the location of the defending unit.

wsl_command
  id: "attack"
  function: (cfg) ->
    attacker = kernel\get_unit(cfg.source.x, cfg.source.y)
    defender = kernel\get_unit(cfg.destination.x, cfg.destination.y)
    attacker\attack(cfg.weapon, defender, cfg.defender_weapon)
