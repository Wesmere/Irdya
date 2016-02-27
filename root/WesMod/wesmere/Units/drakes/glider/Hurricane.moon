unit_type
    id:"Hurricane Drake"
    name: _ "Hurricane Drake"
    race:"drake"
    hitpoints:58
    movement_type:"drakeglide2"
    movement:9
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:40
    usage:"scout"
    description: _ "Hurricane Drakes have moved above the menial hunting and gathering to which the lower members of their caste are relegated. They are an integral part of the drakes’ military, scouting ahead of the main forces, carrying messages across the battlefield, and falling upon the enemy where it’s least expected. Being allowed—grudgingly—to train with the newcomers from other castes has increased their skill in combat, but their greatest strength still lies in their speed and flight." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN
    attack:
        name:"slam"
        description: _ "slam"
        type:"impact"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MARKSMAN
        damage:8
        number:3
