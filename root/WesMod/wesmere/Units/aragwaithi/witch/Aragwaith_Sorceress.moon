unit_type
    id: "Aragwaith Sorceress"
    name: _"female^Sorceress"
    race: "aragwaith"
    gender: "female"
    hitpoints: 40
    movement_type: "aragwaithfoot"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 68
    usage: "healer"
    description: _"The mighty Aragwaith Sorceresses are gracile like wind. They can confuse their oponents by standing in front of them, seemingly defenseless; after the attacker hits, they notice their victim is behind them, ready to perform his own killing strike. On the battlefield these sorceresses are fearsome enemies; even their comrades keep an eye on them, carefully, from a safe distance. And so it happens that even the Royal orders of Wesnothian magi treat these noble lores with respect and caution." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_TELEPORT
    abilities: {
        ABILITY_CURES
        ABILITY_TELEPORT
    }
    attack:
        name: "staff"
        description: _"staff"
        type: "impact"
        range: "melee"
        damage: 13
        number: 2

    attack:
        name: "fireball"
        description: _"fireball"
        type: "fire"
        range: "ranged"
        damage: 15
        number: 3
        specials:
            WEAPON_SPECIAL_MAGICAL

    variation:
        variation_name: "alternate"
        inherit: true
