unit_type
    id:"Tentacle of the Deep"
    name: _ "Tentacle of the Deep"
    race:"monster"
    hitpoints:28
    movement_type:"float"
    resistance:
        arcane:130
    movement:2
    experience:50
    level:1
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:12
    undead_variation:"swimmer"
    usage:"fighter"
    description: _ "Tentacles of the Deep are the appendages of some greater monster that lurks below the waves." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"tentacle"
        description:"_tentacle"
        type:"impact"
        range:"melee"
        damage:4
        number:3
