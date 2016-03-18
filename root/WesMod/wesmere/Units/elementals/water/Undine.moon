unit_type:
    id: "Undine"
    name: _"Undine"
    race: "elemental"
    gender: "female"
    trait:{
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_SAPPHIRE
        TRAIT_DIAMOND
    }
    hitpoints: 37
    movement_type: "water"
    movement: 6
    experience: 84
    level: 2
    alignment: "neutral"
    advances_to: "Tempest Spirit"
    cost: 27
    usage: "mixed fighter"
    description: _"In conserving more power, little water elementals become the more violent and magnificent Undines. Not only have the Undines gained more power but they seemed to have, for some unknown reason, taken the shape of a woman." .. SPECIAL_NOTES .. SPECIAL_NOTES_WATERHOME

    abilities:
        ABILITY_WATERHOME

    attack:
        name: "water punch"
        description: _"water punch"
        type: "impact"
        range: "melee"
        damage: 8
        number: 3

    attack:
        name: "water spray"
        description: _"water spray"
        type: "impact"
        range: "ranged"
        damage: 7
        number: 3
