unit_type
    id: "Aragwaith Scout"
    name: _"Scout"
    race: "aragwaith"
    hitpoints: 36
    movement_type: "aragwaithmounted"
    movement: 8
    experience: 40
    level: 1
    gender: {"male", "female"}
    alignment: "neutral"
    advances_to: "Aragwaith Lancer"
    undead_variation: "mounted"
    cost: 18
    usage: "scout"
    description: _"Though the Aragwaithi live in lands of bitter cold, they still maintain a force of horsemen. These scouts are invaluable in war, moving ahead of the infantry and striking hard at unprepared enemies."

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 11
        number: 2

    female:
        gender: "female"
        name: _"female^Scout"
