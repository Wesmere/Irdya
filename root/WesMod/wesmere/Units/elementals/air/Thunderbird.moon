unit_type
    id: "Thunderbird"
    name: _"Thunderbird"
    race: "elemental"
    trait:{
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
    }
    hitpoints: 44
    movement_type: "fly"
    movement: 9
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 32
    usage: "scout"
    description: _"Using its metal feathers the Thunderbird is able to create powerfull sparks that can be thrown at long range." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_MAGICAL

    resistance:
        arcane: 110

    attack:
        name: "beak"
        description: _"beak"
        type: "pierce"
        range: "melee"
        damage: 14
        number: 1
        specials:
            WEAPON_SPECIAL_CHARGE

    attack:
        name: "blade shower"
        description: _"blade shower"
        type: "blade"
        range: "ranged"
        damage: 9
        number: 3

    attack:
        name: "thunderbolt"
        description: _"thunderbolt"
        type: "fire"
        range: "ranged"
        damage: 16
        number: 2
        specials:
            WEAPON_SPECIAL_MAGICAL
