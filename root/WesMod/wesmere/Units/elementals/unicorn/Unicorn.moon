unit_type:
    id: "Unicorn"
    name: _"Unicorn"
    race: "elemental"
    gender: "female"
    trait:{
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_DIAMOND
    }
    hitpoints: 37
    movement_type: "mounted"
    movement: 7
    experience: 38
    level: 1
    alignment: "lawful"
    advances_to: "Silver Unicorn"
    cost: 19
    usage: "healer"
    description: _"These small, white, horse-like creatures proudly bear a horn in the middle of their foreheads. Composed by light and life forces, they are so full of them that its mere presence heals allied units around them." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_HEALS

    abilities:
        ABILITY_HEALS

    defense:
        frozen: 60
    resistance:
        arcane: 70
        cold: 80

    attack:
        name: "horn"
        description: _"horn"
        type: "pierce"
        range: "melee"
        damage: 7
        number: 2
        specials:
            WEAPON_SPECIAL_CHARGE
