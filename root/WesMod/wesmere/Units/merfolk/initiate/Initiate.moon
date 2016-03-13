unit_type
    id:"Mermaid Initiate"
    name: _ "female^Mermaid Initiate"
    race:"merman"
    gender:"female"
    hitpoints:27
    movement_type:"swimmer"
    movement:6
    experience:50
    level:1
    alignment:"lawful"
    advances_to:{"Mermaid Priestess","Mermaid Enchantress"}
    cost:19
    usage:"mixed fighter"
    description: _ "Young mermaids are often initiated into the water magics native to their people. The wondrous abilities this grants are inimitable by any other race, a mark of the faerie side of these creatures.

Despite their frailty, this makes them quite formidable in combat, as they can call upon the very water about them to smite their enemies." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:7
        number:1
    attack:
        name:"water spray"
        description: _ "water spray"
        type:"impact"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:8
        number:2
