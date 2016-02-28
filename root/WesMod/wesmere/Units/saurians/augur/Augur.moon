unit_type
    id:"Saurian Augur"
    name: _ "Saurian Augur"
    race:"lizard"
    hitpoints:22
    movement_type:"lizard"
    movement:6
    experience:28
    level:1
    alignment:"chaotic"
    advances_to:{"Saurian Oracle","Saurian Soothsayer"}
    cost:16
    usage:"healer"
    description: _ "Saurians have some knowledge of what men call sorcery, but their practice of it reeks of augury and black magic. It is little understood, but rightly regarded with fear by those against whom it is used." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_HEALS
    abilities:
        ABILITY_HEALS
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:4
        number:2
    attack:
        name:"curse"
        description:"_curse"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:5
        number:3
