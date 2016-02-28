unit_type
    id:"Giant Mudcrawler"
    name: _ "Giant Mudcrawler"
    race:"monster"
    trait: TRAIT_ELEMENTAL
    hitpoints:36
    movement_type:"scuttlefoot"
    movement:4
    experience:50
    level:1
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:16
    description: _ "Giant Mudcrawlers are a larger kind of Mudcrawler, and are magical constructs of soil and water. They attack by belching lumps of mud at their foes, or by striking them with their fists."
    undead_variation:"null"
    usage:"archer"
    attack:
        name:"fist"
        description:"_fist"
        type:"impact"
        range:"melee"
        damage:7
        number:2
    attack:
        name:"mud glob"
        description:"_mud glob"
        type:"impact"
        range:"ranged"
        damage:5
        number:3
