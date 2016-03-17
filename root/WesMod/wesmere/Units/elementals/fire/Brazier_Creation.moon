unit_type:
    id: "Brazier Creation"
    name: _"Brazier Creation"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_DIAMOND
    hitpoints: 37
    movement_type: "furnacefoot"
    movement: 5
    experience: 34
    level: 1
    alignment: "neutral"
    advances_to: {"Living Furnace", "Fire Wisp"}
    cost: 16
    usage: "fighter"
    description: _"Fire spirits tend to inhabit rocks to give them form to fight in. This form gives them decent power, and toughness." .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire claws"
        description: _"fire claws"
        type: "fire"
        range: "melee"
        damage: 6
        number: 3
