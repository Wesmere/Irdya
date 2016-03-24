unit_type
    id: "Aragwaith Spearman"
    name: _"Spearman"
    race: "aragwaith"
    hitpoints: 34
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 43
    level: 1
    alignment: "neutral"
    advances_to: {"Aragwaith Pikeman", "Aragwaith Flagbearer"}
    cost: 15
    usage: "fighter"
    description: _"The less dextrous and stronger Aragwaith take up the spear. Useful in hunting, this weapon is also deadly on the battlefield. Many impetuous knights have found themselves or their mounts impaled on the point of an Aragwaithi spear." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce: 90

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 12
        number: 2
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
