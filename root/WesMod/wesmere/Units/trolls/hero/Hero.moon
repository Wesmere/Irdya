unit_type
    id:"Troll Hero"
    name: _ "Troll Hero"
    race:"troll"
    hitpoints:60
    movement_type:"largefoot"
    movement:5
    experience:52
    level:2
    alignment:"chaotic"
    advances_to:"Great Troll"
    cost:30
    description: _ "Some trolls are born with an exceptional share of the strength and vitality that characterizes their race. In a society where might makes right, those of their ilk revere them as heroes." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"hammer"
        description:"_hammer"
        type:"impact"
        range:"melee"
        damage:12
        number:3
