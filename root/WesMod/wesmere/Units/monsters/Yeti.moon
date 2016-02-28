unit_type
    id:"Yeti"
    name: _ "Yeti"
    race:"monster"
    hitpoints:142
    movement_type:"largefoot"
    movement:5
    experience:200
    level:4
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:80
    undead_variation:"troll"
    usage:"fighter"
    description: _ "Little is known about Yetis, ape-like creatures said to live in remote and snow-covered mountains. Few profess to have seen one, and their existence is doubted by many."
    movement_costs:
        frozen:1
    defense:
        frozen:40
    resistance:
        cold:50
        fire:80
        pierce:80
        impact:90
        arcane:100
    attack:
        name:"fist"
        description:"_fist"
        type:"impact"
        range:"melee"
        damage:32
        number:2
