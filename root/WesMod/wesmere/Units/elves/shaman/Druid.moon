unit_type
    id:"Elvish Druid"
    name: _ "female^Elvish Druid"
    race:"elf"
    gender:"female"
    hitpoints:36
    movement_type:"woodland"
    movement:5
    experience:80
    level:2
    alignment:"neutral"
    advances_to:"Elvish Shyde"
    cost:34
    usage:"healer"
    description: _ "The magic of the wood-elves is poorly suited for combat, but effective nonetheless. The forests in which they thrive can become quickened by a word of command, and will lash out at those who threaten their peace.

The chief ability of Druids lies in healing, and it is for this skill that they are revered by their people." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_MAGICAL
    abilities:
        ABILITY_CURES
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        damage:4
        number:2
        range:"melee"
    attack:
        name:"ensnare"
        description:"_ensnare"
        type:"impact"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:6
        number:2
        range:"ranged"
    attack:
        name:"thorns"
        description:"_thorns"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:6
        number:3
        range:"ranged"
