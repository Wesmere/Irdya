unit_type:
    id: "Ice Shell"
    name: _"Ice Shell"
    race: "elemental"
    gender: "female"
    trait:{
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_SAPPHIRE
        TRAIT_DIAMOND
    }
    hitpoints: 55
    movement_type: "smallfoot"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 35
    usage: "fighter"
    description: _"Once ice crabs gather enough elemental power from the cold, they evolve into a more stronger and taller sort of creature. Having icicle spikes for hands, they prefer to thrive in the coldest regions of the world." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW

    resistance:
        fire: 150
        cold: 10
        impact: 120
        pierce: 90
        blade: 80
        arcane: 100
    movement_costs:
        deep_water: 3
        shallow_water: 2
        frozen: 1
    defense:
        deep_water: 60
        shallow_water: 50
        frozen: 40

    attack:
        name: "icicle"
        description: _"icicle"
        type: "pierce"
        range: "melee"
        damage: 10
        number: 3

    attack:
        name: "cold aura"
        description: _"cold aura"
        type: "cold"
        range: "ranged"
        damage: 5
        number: 3
        specials:
            WEAPON_SPECIAL_SLOW
