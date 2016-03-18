unit_type
    id: "Razorbird"
    name: _"Razorbird"
    race: "elemental"
    trait:{
        TRAIT_RUBY
        TRAIT_EMERALD
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
    }
    hitpoints: 32
    movement_type: "fly"
    movement: 9
    experience: 35
    level: 1
    alignment: "neutral"
    advances_to: "Thunderbird"
    cost: 18
    usage: "scout"
    description: _"Lightning is not an element, however some wind spirits can take a form where they can control it. The body they need to develop from a younger form, known as the Razorbird. These birds have razor feathers which can slice anything but they need more energy to generate a lightning bolt." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE

    resistance:
        arcane: 110

    attack:
        name: "beak"
        description: _"beak"
        type: "pierce"
        range: "melee"
        damage: 11
        number: 1
        specials:
            WEAPON_SPECIAL_CHARGE

    attack:
        name: "blade shower"
        description: _"blade shower"
        type: "blade"
        range: "ranged"
        damage: 5
        number: 3
