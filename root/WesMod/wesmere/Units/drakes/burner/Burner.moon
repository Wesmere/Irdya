unit_type
    id:"Drake Burner"
    name: _ "Drake Burner"
    race:"drake"
    hitpoints:42
    movement_type:"drakefly"
    movement:5
    experience:43
    level:1
    alignment:"lawful"
    advances_to:{"Fire Drake","Drake Flare"}
    cost:21
    usage:"archer"
    description: _ "Drake Burners are the proud few in whom the blood and strength of their remote ancestors runs truest, giving them the ability to breathe fire. This, coupled with their sheer size and fearsome claws, makes them deadly foes in combat."
    attack:
        name:"claws"
        description: _ "claws"
        type:"blade"
        range:"melee"
        damage:7
        number:2
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        damage:6
        number:4
