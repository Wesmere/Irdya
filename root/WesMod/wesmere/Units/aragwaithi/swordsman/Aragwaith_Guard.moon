unit_type
    id: "Aragwaith Guard"
    name: _"Guard"
    race: "aragwaith"
    hitpoints: 54
    movement_type: "aragwaithfoot"
    abilities:
        ABILITY_STEADFAST
    resistance:
        pierce: 90
        blade: 80
        impact: 90
    movement: 4
    experience: 74
    level: 2
    alignment: "lawful"
    advances_to: "Aragwaith Shield Guard"
    cost: 27
    usage: "fighter"
    description: _"Chosen from the toughest Swordsmen, Guards willingly forgo some of thier mobility for the advantages of armor. Whether in ceremonial posts during peace, or on the battlefield in times of war, their role is always the same: defending the Wizard nobility." .. SPECIAL_NOTES .. SPECIAL_NOTES_STEADFAST

    attack:
        name: "sword"
        description: _"sword"
        type: "blade"
        range: "melee"
        damage: 11
        number: 3
