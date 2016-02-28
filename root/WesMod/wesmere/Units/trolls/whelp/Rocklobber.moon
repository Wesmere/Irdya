unit_type
    id:"Troll Rocklobber"
    name: _ "Troll Rocklobber"
    race:"troll"
    hitpoints:49
    movement_type:"largefoot"
    movement:5
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:29
    usage:"mixed fighter"
    description: _ "The thought of throwing a boulder in combat has certainly occurred to many trolls, and some have taken to them as a weapon of choice. Because stones well-shaped to fly true are not always easy to find, Rocklobbers have taken to carrying them in sacks slung over their shoulders. The same leather out of which the sack is formed is easily adapted to a crude sling." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"fist"
        description:"_fist"
        type:"impact"
        range:"melee"
        damage:10
        number:2
    attack:
        name:"sling"
        description:"_sling"
        type:"impact"
        range:"ranged"
        damage:17
        number:1
