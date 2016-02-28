unit_type
    id:"Saurian Flanker"
    name: _ "Saurian Flanker"
    race:"lizard"
    hitpoints:47
    movement_type:"lizard"
    movement:7
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:46
    usage:"scout"
    description: _ "Saurian warriors are generally weaker in frame than their elven or human counterparts. This is of course a relative term, and they can still become considerably powerful, whilst losing none of their natural mobility. This is very dangerous in combat, as a careless enemy can soon find their support troops flanked by these creatures." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"spear"
        description:"_spear"
        range:"melee"
        type:"pierce"
        damage:8
        number:4
    attack:
        name:"spear"
        description:"_spear"
        range:"ranged"
        type:"pierce"
        damage:7
        number:2
