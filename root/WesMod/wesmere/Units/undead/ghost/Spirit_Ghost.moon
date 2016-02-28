unit_type
    id:"Ghost"
    name: _ "Ghost"
    race:"undead"
    hitpoints:18
    movement_type:"undeadspirit"
    movement:7
    experience:30
    level:1
    alignment:"chaotic"
    advances_to:{"Wraith","Shadow"}
    cost:20
    usage:"scout"
    description: _ "Enslaved within a shroud of enchantments, a trapped spirit may be likened to the wind in the sails of a ship. This damned vessel becomes an unfailing servant which can be bound to whatever task their master sees fit." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN .. SPECIAL_NOTES_SPIRIT .. SPECIAL_NOTES_ARCANE

    attack:
        name:"touch"
        description:"_touch"
        type:"arcane"
        range:"melee"
        damage:4
        number:3
        specials:
            WEAPON_SPECIAL_DRAIN
    attack:
        name:"wail"
        description:"_wail"
        type:"cold"
        range:"ranged"
        damage:3
        number:3


