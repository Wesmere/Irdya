unit_type
    id:"Grand Knight"
    name: _ "Grand Knight"
    race:"human"
    hitpoints:78
    movement_type:"mounted"
    movement:7
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    undead_variation:"mounted"
    cost:58
    usage:"fighter"
    description: _ "Grand Knights have reached the acme of skill with sword and lance. Wearing full plate, and riding steeds bred more for power than for speed, these warriors form the core of any serious cavalry force. A grand knight at the head of a charge is a terrifying sight for infantry, and is often enough to break right through a defensive line." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_DEFENSE_CAP
    attack:
        name:"sword"
        description: _ "longsword"
        type:"blade"
        range:"melee"
        damage:12
        number:4
    attack:
        name:"lance"
        description: _ "lance"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_CHARGE
        range:"melee"
        damage:17
        number:2
