unit_type
    id:"Cuttle Fish"
    name: _ "Cuttle Fish"
    race:"monster"
    hitpoints:67
    movement_type:"deepsea"
    movement:8
    experience:100
    level:2
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:40
    undead_variation:"swimmer"
    usage:"fighter"
    description: _ "Cuttle Fish are gigantic creatures of the seas. They can grab their opponents with strong tentacles, or spit a poisonous black ink from a distance. The best way to survive an encounter with these monsters is to remain ashore." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON .. SPECIAL_NOTES_SWARM
    attack:
        name:"tentacle"
        description:"_tentacle"
        type:"impact"
        range:"melee"
        specials:
            WEAPON_SPECIAL_SWARM
        damage:3
        number:10
    attack:
        name:"ink"
        description:"_ink"
        type:"pierce"
        range:"ranged"
        damage:6
        number:2
        specials:
            WEAPON_SPECIAL_POISON
