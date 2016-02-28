
unit_type
    id:"Ranger"
    name: _ "Ranger"
    race:"human"
    hitpoints:60
    movement_type:"smallfoot"
    movement:6
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:60
    usage:"mixed fighter"
    description: _ "Rangers are wild men and wanderers, who have chosen to shun the company of their fellow men for myriad reasons. They have spent the better part of their lives in the thick of nature, and know many of its secrets. They are excellent pathfinders and explorers, and can find food and shelter where other men would find only sticks and stones.

The presence of these men troubles the more authoritarian of rulers; they are an element that knights and landed armies cannot control. They are men of dubious motives, and are the first to scoff at any royal decree, if they even hear of it at all. Rangers can be hired, but they are just as likely to be in the employ of bandits, as they are to be in the king’s service."

    -- Rangers are almost like human elves
    defense:
        swamp_water:40
        forest:40
        hills:40
        shallow_water:60
    movement_costs:
        shallow_water:2
        swamp_water:2
        forest:1
        hills:1
        mountains:2
        cave:2
        frozen:2
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:7
        number:4
    attack:
        name:"bow"
        description: _ "bow"
        type:"pierce"
        range:"ranged"
        damage:7
        number:4

