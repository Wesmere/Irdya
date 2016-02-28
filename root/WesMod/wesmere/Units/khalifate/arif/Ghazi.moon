unit_type
    id:"Ghazi"
    name: _ "Ghazi"
    race:"khalifate"
    hitpoints:58
    movement_type:"khalifatearmoredfoot"
    movement:5
    experience:75
    level:2
    alignment:"lawful"
    advances_to:"Shuja"
    cost:38
    usage:"fighter"
    description: _ "Armed with their sword, shield and faith, Ghazi are warriors of some renown among the Khalifate armies. They have further refined their combat arts, adding a powerful shield bash to knock back unsuspecting enemies. Though few in number, their presence can be decisive in dislodging even the most hardened redoubt." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN .. SPECIAL_NOTES_SLOW
    attack:
        name:"long sword"
        description: _ "long sword"
        type:"blade"
        range:"melee"
        damage:13
        number:2
        specials:
            WEAPON_SPECIAL_MARKSMAN
    attack:
        name:"shield bash"
        description: _ "shield bash"
        type:"impact"
        range:"melee"
        damage:10
        number:1
        specials:
            WEAPON_SPECIAL_SLOW

