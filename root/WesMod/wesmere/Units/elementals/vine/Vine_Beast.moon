unit_type:
    id: "Vine Beast"
    name: _"Vine Beast"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_SAPPHIRE
    TRAIT_AMETHYST
    hitpoints: 33
    movement_type: "woodland"
    movement: 6
    experience: 36
    level: 1
    alignment: "lawful"
    advances_to: "Vine Tiger"
    cost: 16
    usage: "mixed fighter"
    description: _"The vine beasts are diffrent from most elementals. They are not an incarnation of an elemental spirit, but rather a beast formed from wood, and given life by magic." .. SPECIAL_NOTES .. SPECIAL_NOTES_FORESTHOME

    abilities:
        ABILITY_FORESTHOME
    resistance:
        arcane: 80
        fire: 120
        pierce: 80
    defense:
        village: 50
        castle: 50

    attack:
        name: "claws"
        description: _"claws"
        type: "blade"
        range: "melee"
        damage: 5
        number: 4

    attack:
        name: "thorns"
        description: _"thorns"
        type: "pierce"
        range: "ranged"
        damage: 3
        number: 3
