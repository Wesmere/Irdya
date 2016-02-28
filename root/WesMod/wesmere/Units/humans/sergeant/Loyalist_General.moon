unit_type
    id:"General"
    name: _ "General"
    race:"human"
    hitpoints:50
    movement_type:"smallfoot"
    movement:6
    level:3
    alignment:"lawful"
    experience:if DISABLE_GRAND_MARSHAL then 150 else 180
    advances_to:if DISABLE_GRAND_MARSHAL then nil else "Grand Marshal"
    -- AMLA_DEFAULT
    cost:54
    usage:"fighter"
    description: _ "As the leaders of their armies, Generals are responsible for the protection of large or important areas in the kingdoms to which they have sworn fealty." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    resistance:
        blade:90
        pierce:90
        impact:90
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"sword"
        description: _ "longsword"
        type:"blade"
        range:"melee"
        damage:9
        number:4
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:7
        number:3
