unit_type
    id: "Aragwaith Wizard"
    name: _"female^Wizard"
    race: "aragwaith"
    gender: "female"
    hitpoints: 31
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 132
    level: 2
    alignment: "neutral"
    advances_to: "Aragwaith Sorceress"
    cost: 43
    usage: "healer"
    description: _"Expert in the arts of magic and healing, the Aragwaithi wizards are present at every battle, guiding and healing their comrades and calling destruction upon their enemies" .. SPECIAL_NOTES .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_MAGICAL
    abilities:
        ABILITY_CURES

    attack:
        name: "staff"
        description: _"staff"
        type: "impact"
        range: "melee"
        damage: 7
        number: 2

    attack:
        name: "fireball"
        description: _"fireball"
        type: "fire"
        range: "ranged"
        damage: 10
        number: 3
        specials:
            WEAPON_SPECIAL_MAGICAL
