unit_type
    id: "Living Volcano"
    name: _"Living Volcano"
    race: "elemental"
    trait:{
        TRAIT_RUBY
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_DIAMOND
    }
    hitpoints: 100
    movement_type: "furnacefoot"
    movement: 5
    experience: 200
    advancefrom: if ENABLE_LIVING_VOLCANO then {
        unit: "Lava Beast"
        experience: 210
    }
    level: 4
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 90
    usage: "fighter"
    description: _"Enormous in size and twice as aggressive as fifty raging bulls combined, these enormous beasts are believed to be the hearts of volcanoes themselves that had escaped their mountainous homes. These beasts should be avoided due to said aggressiveness, their immense physical strength and their ability to spew lava at their victims." .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire claws"
        description: _"fire claws"
        type: "fire"
        range: "melee"
        damage: 20
        number: 3

    attack:
        name: "erupt"
        description: _"erupt"
        type: "fire"
        range: "ranged"
        damage: 10
        number: 3
