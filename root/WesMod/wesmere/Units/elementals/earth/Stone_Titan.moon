unit_type:
    id: "Stone Titan"
    name: _"Stone Titan"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_SAPPHIRE
    TRAIT_DIAMOND
    TRAIT_DIAMOND
    hitpoints: 60
    movement_type: "rockfoot"
    movement: 4
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
    AMLA_DEFAULT
    cost: 50
    usage: "fighter"
    description: _"Earth Spirits of immense power can animate immense bodies. Although not fast, the shear mass of the monster can cause quite a bit of damage." .. SPECIAL_NOTES .. SPECIAL_NOTES_MTNHOME

    abilities:
        ABILITY_MTNHOME

    attack:
        name: "fist"
        description: _"fist"
        type: "impact"
        range: "melee"
        damage: 12
        number: 3
