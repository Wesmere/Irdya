unit_type
    id:"Elvish Shaman"
    name: _ "female^Elvish Shaman"
    race:"elf"
    gender:"female"
    hitpoints:26
    movement_type:"woodland"
    movement:5
    experience:32
    level:1
    alignment:"neutral"
    abilities:ABILITY_HEALS
    advances_to:{"Elvish Druid","Elvish Sorceress"}
    cost:15
    usage:"healer"
    description: _ [[Being partly faerie in nature, elves have an inherent capability for magic. This is realized in their affinity with the natural world, which they can call upon as an ally in combat. Enemies wandering in their forests may soon find themselves entangled by roots and hindered by the very ground they stand on.

The healing abilities of the elves are also remarkable, and of capital use in battle.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW .. SPECIAL_NOTES_HEALS

    attack:
        id:"staff"
        name:"_staff"
        description:"_staff"
        type:"impact"
        damage:3
        number:2
        range:"melee"

    attack:
        id:"entangle"
        name:"_entangle"
        description:"_entangle"
        type:"impact"
        specials:" WEAPON_SPECIAL_SLOW"
        damage:3
        number:2
        range:"ranged"
