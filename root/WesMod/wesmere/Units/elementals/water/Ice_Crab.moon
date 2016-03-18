unit_type
    id: "Ice Crab"
    name: _"Ice Crab"
    race: "elemental"
    gender: "female"
    trait:{
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_SAPPHIRE
        TRAIT_DIAMOND
    }
    hitpoints: 43
    movement_type: "smallfoot"
    movement: 6
    experience: 78
    level: 2
    alignment: "neutral"
    advances_to: "Ice Shell"
    cost: 24
    usage: "fighter"
    description: _"Some water elementals decide to generate an aura of cold, to freeze their form, and give them a solid body. Crabs are the favored for, because their form is practical for both land, and sea travel, and can fight with spearlike icicles." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW

    resistance:
        fire: 150
        cold: 10
        impact: 120
        pierce: 90
        blade: 80
        arcane: 110
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
        damage: 8
        number: 3
    attack:
        name: "cold aura"
        description: _"cold aura"
        type: "cold"
        range: "ranged"
        damage: 3
        number: 3
        specials:
            WEAPON_SPECIAL_SLOW
