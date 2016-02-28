unit_type
    id:"Draug"
    name: _ "Draug"
    race:"undead"
    hitpoints:68
    movement_type:"undeadfoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:50
    usage:"fighter"
    description: _ "There is little left, in these towering ruins, of the men they once were. Warriors at heart, they are now lost in the dream of unlife; wandering through the battles of their memory and fighting desperately for release, for a peace bought only by strength of arms. And so they struggle; both unthinking, and unrelenting." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        pierce:40
        impact:120
    attack:
        name:"axe"
        description:"_axe"
        type:"blade"
        range:"melee"
        damage:12
        number:4
