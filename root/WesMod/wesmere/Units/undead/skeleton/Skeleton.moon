unit_type
    id:"Skeleton"
    name: _ "Skeleton"
    race:"undead"
    hitpoints:34
    movement_type:"undeadfoot"
    movement:5
    experience:35
    level:1
    alignment:"chaotic"
    advances_to:{"Revenant","Deathblade"}
    cost:15
    usage:"fighter"
    description: _ "Skeletons are warriors who have been slain in battle and brought back by dark magics. Nearly mindless, and unwavering in their purpose, they fear neither pain, nor death, and their mere presence will often frighten away any who would challenge their master." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE

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
        damage:7
        number:3
