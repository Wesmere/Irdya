unit_type
    id:"Dwarvish Stalwart"
    name: _ "Dwarvish Stalwart"
    race:"dwarf"
    hitpoints:54
    movement_type:"dwarvishfoot"
    movement:4
    experience:85
    level:2
    alignment:"neutral"
    advances_to:"Dwarvish Sentinel"
    cost:32
    usage:"fighter"
    description: _ "The wiles of experience and training turn guardsmen into worthy soldiers. These stalwart troops are equipped to match their skills, and can hold their ground against all but the most visceral assault. It is a dangerous thing to lose a foothold to one such as these, for it will not be easily reprised." .. SPECIAL_NOTES .. SPECIAL_NOTES_STEADFAST
    defense:
        flat:60
        forest:60
        sand:60
        mountains:40
        hills:50
    abilities:
        ABILITY_STEADFAST
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:7
        number:3
    attack:
        name:"javelin"
        description: _ "javelin"
        type:"pierce"
        range:"ranged"
        damage:8
        number:1
