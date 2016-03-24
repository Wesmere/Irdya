unit_type:
    id: "Aragwaith Lancer"
    name: _"Lancer"
    race: "aragwaith"
    hitpoints: 48
    movement_type: "aragwaithmounted"
    movement: 8
    experience: 80
    level: 2
    alignment: "neutral"
    gender: {"male", "female"}
    advances_to: "Aragwaith Silver Shield"
    undead_variation: "mounted"
    cost: 34
    usage: "scout"
    description: _"Aragwaithi lancers are expert riders and skilled warriors. They are famously effective in quick strikes and scouting, but are also more than capable of taking and holding ground in a protracted battle."

    attack:
        name: "spear"
        description: STR_SPEAR
        type: "pierce"
        range: "melee"
        damage: 11
        number: 3

    female:
        gender: "female"
        name: _"female^Lancer"
