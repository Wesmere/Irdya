unit_type:
    id: "Tidal"
    name: _"Tidal"
    race: "elemental"
    gender: "female"
    TRAIT_EMERALD
    TRAIT_SAPPHIRE
    TRAIT_SAPPHIRE
    TRAIT_DIAMOND
    hitpoints: 25
    movement_type: "water"
    movement: 6
    experience: 35
    level: 1
    alignment: "neutral"
    advances_to: {"Undine", "Ice Crab"}
    cost: 16
    usage: "mixed fighter"
    description: _"Water elementals bodies are merely a mass of water. In water it is hard to distinguish them from the water. This and their ability to restore their form from the water makes them powerful when in water. However on land it takes all the spirits power just to keep itself moving, and flowing, without worrying about defending itself." .. SPECIAL_NOTES .. SPECIAL_NOTES_WATERHOME

    abilities:
        ABILITY_WATERHOME

    attack:
        name: "water punch"
        description: _"water punch"
        type: "impact"
        range: "melee"
        damage: 5
        number: 3

    attack:
        name: "water spray"
        description: _"water spray"
        type: "impact"
        range: "ranged"
        damage: 4
        number: 3
