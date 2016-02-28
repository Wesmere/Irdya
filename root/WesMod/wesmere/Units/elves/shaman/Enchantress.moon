unit_type
    id:"Elvish Enchantress"
    name: _ "female^Elvish Enchantress"
    race:"elf"
    gender:"female"
    hitpoints:50
    movement_type:"woodland"
    movement:5
    experience:180
    level:3
    alignment:"neutral"
    advances_to:"Elvish Sylph"
    cost:55
    usage:"mixed fighter"
    description: _ "The magic of the elves is wholly unlike that of humanity, so much so that humans are almost universally incapable of understanding it, let alone using it. Likewise, those who are masters of it are equally enigmatic; though it can be said that they are revered by their people, very little can be said about their actual function or purpose within that society." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_ARCANE
    resistance:
        arcane:90
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:6
        number:2
        range:"melee"
    attack:
        name:"entangle"
        description:"_entangle"
        type:"impact"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:5
        number:4
        range:"ranged"
    attack:
        name:"faerie fire"
        description:"_faerie fire"
        type:"arcane"
        damage:9
        number:4
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
