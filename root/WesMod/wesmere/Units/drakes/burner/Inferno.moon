unit_type
    id:"Inferno Drake"
    name: _ "Inferno Drake"
    race:"drake"
    hitpoints:82
    movement_type:"drakefly"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:51
    usage:"archer"
    --wmllint:" local spelling draconic"
    description: _ "Inferno Drakes are masters of the fire they breathe, respected and feared in their tribes nearly as much as the draconic ancestors themselves. They can prowl unharmed through a firestorm of their own creation, scales tinged red from extensive use of their inner flame, their sculpted red-gold armor enhancing the illusion that they are, in fact, dragons."
    resistance:
        fire:20
    attack:
        name:"battle claws"
        description: _ "battle claws"
        type:"blade"
        range:"melee"
        damage:12
        number:2
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        damage:8
        number:6
