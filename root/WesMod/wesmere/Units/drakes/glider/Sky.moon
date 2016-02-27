unit_type
    id:"Sky Drake"
    name: _ "Sky Drake"
    race:"drake"
    hitpoints:45
    movement_type:"drakeglide2"
    movement:9
    experience:80
    level:2
    alignment:"lawful"
    advances_to:"Hurricane Drake"
    cost:30
    usage:"scout"
    description: _ "The lightweight ceramic armor that the Sky Drakes wear is a symbol of their rank, glazed silver to honor their connection to the air. As leaders of the hunt, they are often away from their homes for long periods of time. Each tries to bring as much game home as possible, competing to gain the respect of their tribe and, just possibly, time with one of the closely-guarded drake females." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN
    attack:
        name:"slam"
        description: _ "slam"
        type:"impact"
        range:"melee"
        damage:6
        number:3
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MARKSMAN
        damage:5
        number:3
