unit_type
    id:"Ancient Lich"
    name: _ "Ancient Lich"
    race:"undead"
    hitpoints:80
    movement_type:"undeadfoot"
    movement:6
    experience:200
    level:4
    alignment:"chaotic"
    advances_to:nil
--ifdef ENABLE_ANCIENT_LICH
    advance_from:
        unit:"Lich"
        experience:250
--endif
    -- AMLA_DEFAULT
    cost:100
    usage:"mixed fighter"
    description: _ "A being of this order is a revenant of ages long past. Anyone who encounters an Ancient Lich likely has far worse things to worry about than death." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_DRAIN .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_SUBMERGE
    movement_costs:
        shallow_water:3
    abilities:
        ABILITY_SUBMERGE
    attack:
        name:"touch"
        description:"_touch"
        type:"arcane"
        range:"melee"
        damage:8
        number:4
        specials:
            WEAPON_SPECIAL_DRAIN
    attack:
        name:"chill tempest"
        description:"_chill tempest"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:13
        number:5
    attack:
        name:"shadow wave"
        description:"_shadow wave"
        type:"arcane"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:9
        number:5
