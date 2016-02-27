unit_type
    id:"Drake Flameheart"
    name: _ "Drake Flameheart"
    race:"drake"
    hitpoints:72
    movement_type:"drakefly"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:51
    usage:"mixed fighter"
    description: _ "Flamehearts lack the strength to defeat other high-ranking drakes in single combat, but prefer in any case to avoid confrontation within the tribe. Experience has taught any drake of this stature the extent of his authority: where he can push those he leads and when it is best to leave them to their own devices. Only occasionally will a Flameheart challenge his tribe’s leader for supremacy, and only if he is sure of the support of his fellow drakes." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"war blade"
        description: _ "war blade"
        type:"blade"
        range:"melee"
        damage:11
        number:3
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        damage:8
        number:4
