unit_type:
    id: "Silver Unicorn"
    name: _"Silver Unicorn"
    race: "elemental"
    gender: "female"
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_SAPPHIRE
    TRAIT_DIAMOND
    hitpoints: 46
    movement_type: "mounted"
    movement: 7
    experience: 100
    level: 2
    alignment: "lawful"
    advances_to: "null"
    AMLA_DEFAULT
    cost: 38
    usage: "healer"
    description: _"Gleaming with light, these exotic creatures bear a magical silvery horn in the middle of their foreheads which can shoot rays of pure light. Composed by light and life forces, they are so full of them that its mere presence heals allied units around them." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE

    abilities:
        ABILITY_CURES

    defense:
        frozen: 60
    resistance:
        arcane: 50
        cold: 80

    attack:
        name: "horn"
        description: _"horn"
        type: "pierce"
        range: "melee"
        damage: 8
        number: 2
        specials:
            WEAPON_SPECIAL_CHARGE

    attack:
        name: "lightbeam"
        description: _"lightbeam"
        type: "arcane"
        range: "ranged"
        damage: 6
        number: 3
        specials:
            WEAPON_SPECIAL_MAGICAL
