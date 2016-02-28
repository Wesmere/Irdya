unit_type
    id:"Armageddon Drake"
    name: _ "Armageddon Drake"
    race:"drake"
    hitpoints:98
    movement_type:"drakefly"
    movement:5
    experience:200
    level:4
    alignment:"lawful"
    advances_to:nil
    advance_from: if ENABLE_ARMAGEDDON_DRAKE
        {
            unit:"Inferno Drake"
            experience:220
        }
    -- AMLA_DEFAULT
    cost:100
    usage:"archer"
    -- wmllint:" local spelling Armageddon"
    description: _ "Were it not for the armor they wear, certain drakes might be indistinguishable from true dragons, at least to the lesser races for whom dragons are but legend. The creatures known as ‘Armageddon Drakes’ are towering things, both immune to and possessed of a tremendous fire."
    resistance:
        fire:0
    attack:
        name:"battle claws"
        description: _ "battle claws"
        type:"blade"
        range:"melee"
        damage:15
        number:2
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        damage:12
        number:6
