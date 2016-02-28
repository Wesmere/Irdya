unit_type
    id:"Troll Warrior"
    name: _ "Troll Warrior"
    race:"troll"
    hitpoints:70
    movement_type:"largefoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:42
    usage:"fighter"
    description: _ "Trolls typically neither need nor prefer to use any proper armament in combat, as large ‘sticks and stones’ serve them all too well. However, trolls have been seen on numerous occasions clad in rough-shod armor and bearing metal hammers. It is speculated that orcish allies are the source and crafters of these; expeditions into several forcibly-vacated troll holes have shown little evidence of tool use, and certainly no metalworking of any kind. Given how dangerous a troll is with its bare hands, the thought of a troll with proper armament is entirely unsettling." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"hammer"
        description:"_hammer"
        type:"impact"
        range:"melee"
        damage:20
        number:2
