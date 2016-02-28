unit_type
    id:"Mudcrawler"
    name: _ "Mudcrawler"
    -- wmllint:" general spelling mudcrawler mudcrawlers"
    race:"monster"
    trait: TRAIT_ELEMENTAL
    hitpoints:20
    movement_type:"scuttlefoot"
    movement:3
    experience:18
    level:0
    alignment:"neutral"
    advances_to:"Giant Mudcrawler"
    cost:5
    undead_variation:"null"
    usage:"archer"
    description: _ "Mudcrawlers are magical constructs of soil and water. They attack by belching lumps of mud at their foes."
    attack:
        name:"mud glob"
        description:"_mud glob"
        type:"impact"
        range:"ranged"
        damage:4
        number:3
