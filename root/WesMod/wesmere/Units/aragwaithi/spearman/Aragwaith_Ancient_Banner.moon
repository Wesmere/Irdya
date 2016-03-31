unit_type
    id: "Aragwaith Ancient Banner"
    name: _"Ancient Banner"
    race: "aragwaith"
    abilities: {
        ABILITY_LEADERSHIP_LEVEL_4
        ABILITY_PROTECTION_LEVEL_4
    }
    resistance:
        blade: 80
        pierce: 80
        impact: 80
        fire: 90
        cold: 90
    hitpoints: 58
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 200
    level: 4
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 90
    usage: "fighter"
    description: _"TODO" .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP .. SPECIAL_NOTES_PROTECTION

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 21
        number: 2

    attack:
        name: "scythe"
        description: _"scythe"
        type: "blade"
        range: "melee"
        damage: 11
        number: 4
