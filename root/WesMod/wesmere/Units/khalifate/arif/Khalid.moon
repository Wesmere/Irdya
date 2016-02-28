unit_type
    id:"Khalid"
    name: _ "Khalid"
    race:"khalifate"
    hitpoints:82
    movement_type:"khalifatearmoredfoot"
    movement:5
    experience:200
    level:4
    alignment:"lawful"
    advances_to:nil
--ifdef ENABLE_KHALID
    advance_from:
        unit:"Shuja"
        experience:150
--endif
    -- AMLA_DEFAULT
    cost:78
    usage:"fighter"
    description: _ "Among every generation, a warrior elevates himself above his peers and foes; They seem to be able to alter the destiny of the world themselves. Often given the name Khalid, after a legendary leader of old, these individuals are celebrated for the piety and skill. Their travels and travails are told endlessly around the campfire with the reverent tones of those that speak of living legends." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN .. SPECIAL_NOTES_SLOW
    attack:
        name:"long sword"
        description: _ "long sword"
        type:"blade"
        range:"melee"
        damage:13
        number:4
        specials:
            WEAPON_SPECIAL_MARKSMAN
    attack:
        name:"shield bash"
        description: _ "shield bash"
        type:"impact"
        range:"melee"
        damage:11
        number:3
        specials:
            WEAPON_SPECIAL_SLOW

