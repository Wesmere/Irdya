unit_type
    id:"Elvish Sylph"
    name: _ "female^Elvish Sylph"
    race:"elf"
    gender:"female"
    hitpoints:60
    movement_type:"woodlandfloat"
    movement:6
    experience:200
    level:4
    alignment:"neutral"
    advances_to:nil
    -- {AMLA_DEFAULT}
    cost:67
    usage:"mixed fighter"
    description: _ "Rarely seen, the sage-like Sylphs are masters of both their faerie and mundane natures. They are possessed of wondrous, and sometimes terrifying powers. Legends concerning these have given other races a healthy fear of the elves." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE

    resistance:
        arcane:80

    attack:
        name:"faerie touch"
        description:_"faerie touch"
        type:"impact"
        specials: WEAPON_SPECIAL_MAGICAL
        range:"melee"
        damage:6
        number:3
        range:"melee"

    attack:
        name:"gossamer"
        description:_"gossamer"
        type:"impact"
        specials: WEAPON_SPECIAL_SLOW
        damage:6
        number:5
        range:"ranged"

    attack:
        name:"faerie fire"
        description:_"faerie fire"
        type:"arcane"
        specials: WEAPON_SPECIAL_MAGICAL
        damage:10
        number:5
        range:"ranged"
