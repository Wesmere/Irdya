unit_type
    id:"Drake Glider"
    name: _ "Drake Glider"
    race:"drake"
    hitpoints:32
    movement_type:"drakeglide"
    movement:8
    experience:35
    level:1
    alignment:"lawful"
    advances_to:"Sky Drake"
    cost:16
    usage:"scout"
    description: _ [[Many drakes enjoy the flow of air over scales, leading them to don the light robes of the Glider caste. The long forays to the far reaches of the tribal territory are their passion, though other drakes often wonder what could lead someone to take on the drudgery of hunting when more glory could be found on the battlefield.

Most often, Gliders hunt larger game like deer, swine, or dolphins; the drakes’ ancestral ability to aim fire, hampered in other castes by armor, is invaluable for flushing and herding the quarry without harming it. If a Glider is called to the battlefield, he prefers to harass the enemy from a distance – and if all else fails, he will fight with his feet, keeping his precious wings as far from the enemy as possible.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN

    attack:
        name:"slam"
        description: _ "slam"
        type:"impact"
        range:"melee"
        damage:6
        number:2
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MARKSMAN
        damage:3
        number:3

