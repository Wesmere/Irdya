unit_type:
    id: "Fire Ghost"
    name: _"Fire Ghost"
    race: "elemental"
    trait:{
        TRAIT_RUBY
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_DIAMOND
    }
    hitpoints: 66
    movement_type: "firefly"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 45
    usage: "archer"
    description: _"Fire Wisps take the form of a ghost when they have enough power. These ghosts are composed of the fire element and breathe out fire." .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire claws"
        description: _"fire claws"
        type: "fire"
        range: "melee"
        damage: 10
        number: 2

    attack:
        name: "fire breath"
        description: _"fire breath"
        type: "fire"
        range: "ranged"
        damage: 8
        number: 5
