unit_type
    id:"Elvish Shyde"
    name: _ "female^Elvish Shyde"
    -- # wmllint: general spelling shyde shydes
    race:"elf"
    gender:"female"
    hitpoints:46
    movement_type:"woodlandfloat"
    movement:6
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- {AMLA_DEFAULT}
    cost:52
    usage:"healer"
    description: _ "Devotion to the path of faerie may eventually transform an elf maiden into a creature of both worlds. Guided by a power which is little understood, these beautiful stewards of the elven forests epitomize the grace and mystery of their people." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_MAGICAL

    abilities: ABILITY_CURES

    attack:
        id:"faerie touch"
        name:_"faerie touch"
        description:_"faerie touch"
        type:"impact"
        specials: WEAPON_SPECIAL_MAGICAL
        damage:6
        number:2
        range:"melee"

    attack:
        id:"ensnare"
        name:"ensnare"
        description:_"ensnare"
        type:"impact"
        specials: WEAPON_SPECIAL_SLOW
        damage:6
        number:3
        range:"ranged"

    attack:
        id:"thorns"
        name:"thorns"
        description:_"thorns"
        type:"pierce"
        specials: WEAPON_SPECIAL_MAGICAL
        damage:8
        number:3
        range:"ranged"

