unit_type
    id:"Master at Arms"
    name: _ "Master at Arms"
    race:"human"
    hitpoints:57
    movement_type:"elusivefoot"
    movement:7
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:44
    usage:"mixed fighter"
    description: _ "Master fencers have an envied place in life. Though the journey to their station was a dangerous way of life, they have reached the time wherein they reap its rewards. Famed for their skill and dashing manner, these gentlemen have the bearing of natural aristocrats, and are followed by the eyes of many a high born lady.

They usually have the luxury of choosing their appointments, and are free to roam the land should they so elect. Often, they will be found as the captains of a castle guard, or as the master of a military academy, positions in which their flamboyant nature is not only accepted, but is perhaps even useful." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    resistance:
        cold:90
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"saber"
        description:"_saber"
        type:"blade"
        range:"melee"
        damage:7
        number:5
    attack:
        name:"crossbow"
        description:"_crossbow"
        type:"pierce"
        range:"ranged"
        damage:20
        number:1
