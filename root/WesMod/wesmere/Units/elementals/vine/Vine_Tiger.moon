unit_type:
    id: "Vine Tiger"
    name: _"Vine Tiger"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_SAPPHIRE
    TRAIT_AMETHYST
    hitpoints: 46
    movement_type: "woodland"
    movement: 6
    experience: 100
    level: 2
    alignment: "lawful"
    advances_to: "null"
    AMLA_DEFAULT
    cost: 32
    usage: "mixed fighter"
    description: _"The vine beasts grow in size as they live, and the larger forms are called tigers after a beast that they resemble." .. SPECIAL_NOTES .. SPECIAL_NOTES_FORESTHOME .. SPECIAL_NOTES_AMBUSH

    abilities:
        ABILITY_AMBUSH
        ABILITY_FORESTHOME
    resistance:
        fire: 120
        pierce: 80
        arcane: 80
    defense:
        village: 50
        castle: 50

    attack:
        name: "claws"
        description: _"claws"
        type: "blade"
        range: "melee"
        damage: 7
        number: 4

    attack:
        name: "thorns"
        description: _"thorns"
        type: "pierce"
        range: "ranged"
        damage: 5
        number: 3
