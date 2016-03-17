unit_type:
    id: "Living Furnace"
    name: _"Living Furnace"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_DIAMOND
    hitpoints: 52
    movement_type: "furnacefoot"
    movement: 5
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "Lava Beast"
    cost: 28
    usage: "fighter"
    description: _"In the course of time, Fire Elementals grow into a larger and stronger form. Their strength has also increased." .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire claws"
        description: _"fire claws"
        type: "fire"
        range: "melee"
        damage: 9
        number: 3
