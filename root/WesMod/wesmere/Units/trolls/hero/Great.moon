unit_type
    id:"Great Troll"
    name: _ "Great Troll"
    race:"troll"
    hitpoints:80
    movement_type:"largefoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:48
    description: _ "When a troll, gifted with abnormal strength of life, matches that with age and wisdom, it becomes something extraordinary, a beast remembered for generations. Their feats of strength and cunning are the source of most tales about trolls, and to see the stories made flesh does nothing to diminish their grandeur." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"hammer"
        description:"_hammer"
        type:"impact"
        range:"melee"
        damage:18
        number:3
