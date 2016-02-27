unit_type
    id:"Drake Warden"
    name: _ "Drake Warden"
    race:"drake"
    hitpoints:82
    movement_type:"drakefoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:46
    usage:"fighter"
    description: _ "Wardens are set apart from the rest of the Clasher caste by two things: their ornate helms, modeled after their dragon ancestors, and the care with which they drape their armored wings in brightly colored cloth before reporting for duty. Though this mode of dress stems from the pride they feel for their role in drake society, it is far from ceremonial. Their cumbersome bronze plate is the strongest work from the Drake forges, and their halberds can cleave a human in half." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce:80
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"blade"
        range:"melee"
        damage:16
        number:3
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"pierce"
        range:"melee"
        specials:WEAPON_SPECIAL_FIRSTSTRIKE
        damage:23
        number:2
