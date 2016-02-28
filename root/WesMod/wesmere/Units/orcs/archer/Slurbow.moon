unit_type
    id:"Orcish Slurbow"
    name: _ "Orcish Slurbow"
    -- wmllint:" general spelling slurbow slurbows"
    race:"orc"
    hitpoints:56
    movement_type:"orcishfoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:43
    usage:"archer"
    -- wmllint:" local spellings arbalest cranequin"
    description: _ "The basic design of a crossbow gives rise to the arbalest or ‘slurbow’; a much more intricate device, complete with a hand-turned cranequin to re-cock the weapon, and often with a multi-ply arc, of laminate wood or bone, driving the projectile. Such a device is much easier to work with, and much more powerful than simpler crossbows; it is also completely beyond orcish manufacture.

Orcs prize any such weapons they can manage to plunder, and they invariably end up in the hands of their strongest and most cunning archers."
    attack:
        name:"short sword"
        description:"_short sword"
        type:"blade"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"crossbow"
        description:"_crossbow"
        type:"pierce"
        range:"ranged"
        damage:12
        number:3
    attack:
        name:"crossbow"
        description:"_crossbow"
        type:"fire"
        range:"ranged"
        damage:15
        number:2
