unit_type
    id: "Wind Herder"
    name: _"Wind Herder"
    race: "elemental"
    trait:{
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_AMETHYST
        TRAIT_AMETHYST
    }
    hitpoints: 28
    movement_type: "windfly"
    movement: 8
    experience: 35
    level: 1
    alignment: "neutral"
    advances_to: "Zephyr"
    cost: 19
    usage: "archer"
    description: _"As Air Elementals stay in their physical form, they grow stronger, as does their power over winds. The advanced ability to control or herd winds allows the elemental to attack with more force. In addition they are now strong enough to hold a dagger."

    attack:
        name: "dagger"
        description: _"dagger"
        type: "blade"
        range: "melee"
        damage: 6
        number: 2

    attack:
        name: "tornado"
        description: _"galeforce"
        type: "impact"
        range: "ranged"
        damage: 9
        number: 2
