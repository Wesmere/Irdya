unit_type:
    id: "Animated Rock"
    name: _"Animated Rock"
    race: "elemental"
    trait: {
        TRAIT_RUBY
        TRAIT_SAPPHIRE
        TRAIT_DIAMOND
        TRAIT_DIAMOND
    }
    hitpoints: 36
    movement_type: "rockfoot"
    movement: 4
    experience: 37
    level: 1
    alignment: "neutral"
    advances_to: "Rock Golem"
    cost: 17
    usage: "fighter"
    description: _"Earth spirts take the form of moving rocks. In combat the contribute great durability, and mediocre attacks." .. SPECIAL_NOTES .. SPECIAL_NOTES_MTNHOME

    abilities:
        ABILITY_MTNHOME

    attack:
        name: "fist"
        description: _"fist"
        type: "impact"
        range: "melee"
        damage: 6
        number: 3
