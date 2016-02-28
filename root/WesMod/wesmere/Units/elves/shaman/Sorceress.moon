unit_type
    id:"Elvish Sorceress"
    name: _ "female^Elvish Sorceress"
    race:"elf"
    gender:"female"
    hitpoints:41
    movement_type:"woodland"
    movement:5
    experience:100
    level:2
    alignment:"neutral"
    advances_to:"Elvish Enchantress"
    cost:34
    usage:"mixed fighter"
    description: _ "The world of faerie is far more potent than the corporeal world. Simply bringing some of this world into our own can have violent results. This is well-understood by the elves, although rarely used with malicious intent; doing so is no easy task, and is a very ill-regarded use of their strength.

Those able to do so are roughly titled as ‘sorceresses’ by other races; and certainly are capable of acting the part." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_ARCANE
    resistance:
        arcane:100
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:4
        number:2
        range:"melee"
    attack:
        name:"entangle"
        description:"_entangle"
        type:"impact"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:4
        number:3
        range:"ranged"
    attack:
        name:"faerie fire"
        description:"_faerie fire"
        type:"arcane"
        damage:7
        number:4
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
