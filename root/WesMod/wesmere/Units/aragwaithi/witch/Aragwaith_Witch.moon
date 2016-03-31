unit_type
    id: "Aragwaith Witch"
    name: _"female^Witch"
    race: "aragwaith"
    gender: "female"
    hitpoints: 22
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 54
    level: 1
    alignment: "neutral"
    advances_to: "Aragwaith Wizard"
    cost: 22
    usage: "healer"
    abilities:
        ABILITY_HEALS
    description: _"The magically inclined ones among the Aragwaith recieve not only the martial training so common in Aragwaithi society, but also in the art of healing, and of course in magic. Wielding powerful fire and possessing a healing touch, witchs are the noblest of a noble people." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_HEALS

    attack:
        name: "kick"
        description: _"kick"
        type: "impact"
        range: "melee"
        damage: 7
        number: 1

    attack:
        name: "fireball"
        description: _"fireball"
        type: "fire"
        range: "ranged"
        damage: 7
        number: 3
        specials:
            WEAPON_SPECIAL_MAGICAL
