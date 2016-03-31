unit_type
    id: "Aragwaith Captain"
    name: _"Captain"
    race: "aragwaith"
    abilities:
        ABILITY_LEADERSHIP_LEVEL_3
    resistance:
        blade: 90
        pierce: 90
        impact: 90
    hitpoints: 55
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 175
    level: 3
    alignment: "neutral"
    advances_to: "Aragwaith Ancient Banner"
    cost: 60
    usage: "fighter"
    description: _"The captains of the Aragwaithi are heroes among their people; such rank is only achieved through great bravery and distinguished service. They are skilled with both spear and sword, and fearlessly lead from the front in every battle." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP

    attack:
        name: "glaive-pierce"
        description: _"glaive"
        type: "pierce"
        range: "melee"
        damage: 18
        number: 2

    attack:
        name: "glaive-blade"
        description: _"glaive"
        type: "blade"
        range: "melee"
        damage: 10
        number: 4
