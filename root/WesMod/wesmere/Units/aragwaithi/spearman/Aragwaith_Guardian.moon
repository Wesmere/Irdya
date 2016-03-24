unit_type
    id: "Aragwaith Guardian"
    name: _"Guardian"
    race: "aragwaith"
    hitpoints: 62
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 51
    usage: "fighter"
    description: _"The Aragwaithi Guardians are among the finest defenders anywhere in the world. Inured to hardship and pain, they are fully deserving of their title, holding the line in the most desperate of situations." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        blade: 80
        pierce: 80
        impact: 90

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 24
        number: 2
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
