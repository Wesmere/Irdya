unit_type
    id: "Zephyr"
    name: _"Zephyr"
    race: "elemental"
    trait:{
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_AMETHYST
        TRAIT_AMETHYST
    }
    hitpoints: 40
    movement_type: "windfly"
    movement: 6
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "Djinn"
    -- AMLA_DEFAULT
    cost: 36
    usage: "archer"
    description: _"A wind spirit who stays in form long enough gains great mastery over winds. This grants him strength to his attacks, and toughness to his form."

    attack:
        name: "scimitar"
        description: _"scimitar"
        type: "blade"
        range: "melee"
        damage: 6
        number: 3

    attack:
        name: "tornado"
        description: _"tornado"
        type: "impact"
        range: "ranged"
        damage: 14
        number: 2
