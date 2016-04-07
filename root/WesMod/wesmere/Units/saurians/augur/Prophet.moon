unit_type
    id: "Saurian Prophet"
    name: _"Saurian Prophet"
    race: "lizard"
    hitpoints: 40
    movement_type: "lizard"
    movement: 6
    experience: 150
    level: 3
    alignment: "chaotic"
    advances_to: "null"
    -- AMLA_DEFAULT
    undead_variation: "saurian"
    cost: 42
    usage: "archer"
    description: _"Description pending." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_HEALS
    abilities:
        ABILITY_HEALS

    attack:
        name: "staff"
        description: _"staff"
        type: "impact"
        range: "melee"
        damage: 5
        number: 3

    attack:
        name: "curse"
        description: _"curse"
        type: "cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range: "ranged"
        damage: 8
        number: 4
