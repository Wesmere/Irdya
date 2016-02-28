unit_type
    id:"Dwarvish Guardsman"
    name: _ "Dwarvish Guardsman"
    race:"dwarf"
    hitpoints:42
    movement_type:"dwarvishfoot"
    movement:4
    experience:47
    level:1
    alignment:"neutral"
    advances_to:"Dwarvish Stalwart"
    cost:19
    usage:"fighter"
    description: _ "The dwarven race has always been famed for its sturdiness of build, and many of their warriors outfit themselves to take advantage of this. Dwarven guardsmen march into battle with tower shields and spears. Most often, their role is to hold the line, and to take a heavy toll on those who try to break it. As the line marches forward, they act to secure its hard-won advance." .. SPECIAL_NOTES .. SPECIAL_NOTES_STEADFAST
    defense:
        mountains:40
        hills:50
    abilities:
        ABILITY_STEADFAST
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:5
        number:3
    attack:
        name:"javelin"
        description: _ "javelin"
        type:"pierce"
        range:"ranged"
        damage:5
        number:1
