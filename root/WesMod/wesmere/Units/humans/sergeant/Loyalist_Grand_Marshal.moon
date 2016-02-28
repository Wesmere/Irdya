unit_type
    id:"Grand Marshal"
    name: _ "Grand Marshal"
    race:"human"
    hitpoints:60
    movement_type:"smallfoot"
    movement:6
    experience:200
    level:4
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:66
    usage:"fighter"
    description: _ "The rank of Grand Marshal is one of the most esteemed in the armies of humanity, and those who bear its title have survived many trials by fire, proving both their tactical wit and their considerable mettle at personal combat." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    resistance:
        blade:80
        pierce:80
        impact:80
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"sword"
        description: _ "longsword"
        type:"blade"
        range:"melee"
        damage:10
        number:4
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:8
        number:3
