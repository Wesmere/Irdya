unit_type
    id:"Knight"
    name: _ "Knight"
    race:"human"
    hitpoints:58
    movement_type:"mounted"
    movement:8
    experience:120
    level:2
    alignment:"lawful"
    advances_to:{"Paladin","Grand Knight"}
    undead_variation:"mounted"
    cost:40
    usage:"fighter"
    description: _ "Horsemen of skill and discipline are promoted to Knights. Veterans of combat, they have seen the often-fatal results of a failed charge, and have learnt discretion in its use. Knights, therefore, carry swords in their armament, and practice tactics which, although requiring of much more patience, are less risky than a charge. Their lances are still at the ready, however, and growing experience with these weapons makes them deadlier at the tilt." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_DEFENSE_CAP
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:8
        number:4
    attack:
        name:"lance"
        description: _ "lance"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_CHARGE
        range:"melee"
        damage:14
        number:2
