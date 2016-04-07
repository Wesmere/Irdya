unit_type
    id: "Saurian Bonecaster"
    name: _"Saurian Bonecaster"
    race: "lizard"
    hitpoints: 37
    movement_type: "lizard"
    movement: 6
    experience: 150
    level: 3
    alignment: "chaotic"
    advances_to: "null"
    -- AMLA_DEFAULT
    undead_variation: "saurian"
    cost: 42
    usage: "healer"
    description: _"Description pending." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_CURES
    abilities:
        ABILITY_CURES

    attack:
        name: "staff"
        description: _"staff"
        type: "impact"
        range: "melee"
        damage: 6
        number: 2

    attack:
        name: "curse"
        description: _"curse"
        type: "cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range: "ranged"
        damage: 9
        number: 3
