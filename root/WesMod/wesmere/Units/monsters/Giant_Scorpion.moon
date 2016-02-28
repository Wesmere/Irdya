unit_type
    id:"Giant Scorpion"
    name: _ "Giant Scorpion"
    race:"monster"
    hitpoints:40
    movement_type:"scuttlefoot"
    movement:8
    experience:50
    level:1
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:22
    usage:"fighter"
    description: _ "A normal scorpion is dangerous enough — the deadliness of one the size of a man needs little explanation." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON
    attack:
        name:"sting"
        description:"_sting"
        type:"pierce"
        range:"melee"
        specials:
            WEAPON_SPECIAL_POISON
        damage:9
        defense_weight:4.0
        number:1
    attack:
        name:"pincers"
        description:"_pincers"
        type:"impact"
        range:"melee"
        damage:4
        number:4
