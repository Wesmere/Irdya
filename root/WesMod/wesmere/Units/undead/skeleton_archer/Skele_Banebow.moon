unit_type
    id:"Banebow"
    -- wmllint:" general spelling banebow"
    name: _ "Banebow"
    race:"undead"
    hitpoints:50
    movement_type:"undeadfoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:38
    description: _ "The most powerful of the undead archers invariably end up being those who were themselves archers in their previous life. They wander the fields of battle, guided by the fading memory of their former skill, neither knowing, nor caring what their purpose or foes might be. They are driven only by a malice born of their empty and tortured existence." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    usage:"archer"
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        pierce:40
        impact:120
    attack:
        name:"dagger"
        description:"_dagger"
        type:"blade"
        range:"melee"
        damage:8
        number:2
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:14
        number:3
