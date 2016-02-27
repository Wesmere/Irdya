unit_type
    id:"Merman Hoplite"
    name: _ "Merman Hoplite"
    race:"merman"
    hitpoints:52
    movement_type:"swimmer"
    -- The following resistance adjustments are to make the hoplite good defensively, and to make 'steadfast' actually do something
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:43
    usage:"fighter"
    description: _ "With their towering shields, the Merman Hoplites form the elite guard of the watery realm. Their powerful armor and rigid discipline allow them to hold a steadfast line in the maelstrom of battle. In times of desperation, they can even do so on land, though not nearly as well as a creature with legs." .. SPECIAL_NOTES .. SPECIAL_NOTES_STEADFAST
    resistance:
        blade:80
        pierce:70
        cold:70
        fire:80
        impact:80
    abilities:
        ABILITY_STEADFAST
    attack:
        name:"spear"
        description:"_spear"
        type:"pierce"
        range:"melee"
        damage:15
        number:2
