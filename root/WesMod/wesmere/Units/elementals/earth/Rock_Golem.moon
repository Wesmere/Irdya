unit_type:
    id: "Rock Golem"
    name: _"Rock Golem"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_SAPPHIRE
    TRAIT_DIAMOND
    TRAIT_DIAMOND
    hitpoints: 46
    movement_type: "rockfoot"
    movement: 4
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "Stone Titan"
    cost: 30
    usage: "fighter"
    description: _"Rock Golems are the bodies of Earth spirits that have grown strong enough to animate their hulking bodies. These creatures are incredibly tough, but weak for their size." .. SPECIAL_NOTES .. SPECIAL_NOTES_MTNHOME

    abilities:
        ABILITY_MTNHOME

    attack:
        name: "fist"
        description: _"fist"
        type: "impact"
        range: "melee"
        damage: 9
        number: 3
