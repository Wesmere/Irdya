unit_type
    id:"Elder Mage"
    name: _ "Elder Mage"
    race:"human"
    hitpoints:60
    movement_type:"smallfoot"
    resistance:
        fire:80
    movement:6
    experience:250
    level:5
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:65
    usage:"mixed fighter"
    description: _ "Once great, Elder Magi have seen their power a little diminished from wearying years of battle. Nevertheless they remain feared on the battlefield on account of their powerful lightning bolts." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:8
        number:2
    attack:
        name:"lightning"
        description: _ "lightning"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MAGICAL
        damage:14
        number:4
