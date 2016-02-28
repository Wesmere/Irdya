unit_type
    id:"Shuja"
    name: _ "Shuja"
    race:"khalifate"
    hitpoints:70
    movement_type:"khalifatearmoredfoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:58
    usage:"fighter"
    description: _ "Distinguished for their bravery and skill, Shuja are the leaders among the Khalif's ranks. Their exploits are well known among their cohorts, inspiring soldiers to fight for their cause. Despite this, they are often found leading from the front, taking down their foes with sword and shield." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN .. SPECIAL_NOTES_SLOW
    attack:
        name:"long sword"
        description: _ "long sword"
        type:"blade"
        range:"melee"
        damage:13
        number:3
        specials:
            WEAPON_SPECIAL_MARKSMAN
    attack:
        name:"shield bash"
        description: _ "shield bash"
        type:"impact"
        range:"melee"
        damage:11
        number:2
        specials:
            WEAPON_SPECIAL_SLOW

