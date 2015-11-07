wsl_table
    id: "move_type"
    scope: "Units"

    --on_scan: (cfg) ->
    --on_load: (cfg) ->
    --assert(cfg.id)
    --    state.Units.move_type[cfg.id] = cfg

    description: [[The [movetype] tag is used to make shortcuts to describe units with similar terrain handicaps. Units from the same advancement tree should generally have the same movetype.
name: an ID for this movetype. Units with the attribute movement_type=name will be assigned this movetype.
flies: either 'true' or 'false'(default). A unit with flies=true does not have its image's height adjusted for different terrains.]]
    scheme:
        movement_costs:
            description: [[describes how fast the unit moves on different terrains. The attribute terrain=speed means that the unit will need to use speed move points to move onto terrain with id=terrain (see TerrainWML).]]
        vision_costs:
            description: [[describes how far the unit clears fog and shroud on different terrains. The attribute terrain=cost means that the unit will need to use cost vision points to view into terrain with id=terrain (see TerrainWML). (If not specified for a particular terrain, the vision cost defaults to the movement cost.)]]
        defense:
            description: [[describes how likely the unit is to be hit on different terrains. The attribute terrain=defense means that the unit will be hit defense percent of the time in the terrain with id=terrain. If the defense value is negative, then the unit will be hit as though the value were positive with one difference: the number is also the best defense that the unit may have if there is more than one terrain type for the terrain the unit is on.]]
        resistance:
            description: [[describes how much damage the unit takes from different types of attacks. The attribute type=resistance makes the unit receive resistance percent of damage, or resist 100-resistance percent of damage from attacks with type=type. So for example, a resistance of fire=110 means, this unit will receive 110% of damage, or have a resistance of -10% as displayed in-game. A value of fire=0 would mean, the unit receives no damage and therefore has a resistance of 100%.]]
--Default keys for the [movement_costs], [vision_costs], and [defense] tags are deep_water, shallow_water, reef, swamp_water, flat, sand, forest, hills, mountains, village, castle, cave, frozen, unwalkable, fungus, and impassable. Default keys for [resistance] are blade, pierce, impact, fire, cold, and arcane.
