unit_type
    id:"Merman Triton"
    name: _ "Merman Triton"
    race:"merman"
    hitpoints:60
    movement_type:"swimmer"
    movement:6
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:43
    usage:"fighter"
    -- wmllint:" local spelling tritons"
    description: _ "Tritons are combat masters of the sea. Skilled in use of the trident, Tritons easily defeat any enemy foolish enough to wander into their preferred environment."
    attack:
        name:"trident"
        description:"_trident"
        type:"pierce"
        range:"melee"
        damage:14
        number:3
    attack:
        name:"trident"
        description:"_trident"
        type:"blade"
        range:"melee"
        damage:19
        number:2
