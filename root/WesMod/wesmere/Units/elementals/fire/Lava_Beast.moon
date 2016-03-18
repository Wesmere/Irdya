unit_type
    id: "Lava Beast"
    name: _"Lava Beast"
    race: "elemental"
    trait:{
        TRAIT_RUBY
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_DIAMOND
    }
    hitpoints: 72
    movement_type: "furnacefoot"
    movement: 5
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 38
    usage: "fighter"
    description: _"Eventually these spirits will grow to monstrous Lava Beast. Beware of them, they'll burn you!" .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire claws"
        description: _"fire claws"
        type: "fire"
        range: "melee"
        damage: 13
        number: 3
