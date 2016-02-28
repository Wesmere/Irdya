unit_type
    id:"Fire Dragon"
    name: _ "Fire Dragon"
    race:"monster"
    abilities:
        ABILITY_LEADERSHIP
    hitpoints:101
    movement_type:"drakefly"
    movement:8
    experience:250
    level:5
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:100
    undead_variation:"drake"
    usage:"archer"
    description: _ "A dragon is a legendary creature, normally seen only in fantastic tales. They are very rare, and were it not for the historical events, the singlehanded destruction of cities and towns that these creatures have wrought, they might be dismissed as mere myth. Legends are very specific about the ravages of dragons; noting their great strength, speed, their preternatural cunning, and above all else, the great fire that burns inside of them.

Battling a dragon is said to be the pinnacle of danger itself, fit only for fools, or the bravest of knights." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN .. SPECIAL_NOTES_LEADERSHIP
    resistance:
        fire:0
    attack:
        name:"bite"
        description:" _bite"
        type:"blade"
        range:"melee"
        damage:21
        number:2
    attack:
        name:"tail"
        description:" _tail"
        type:"impact"
        range:"melee"
        damage:24
        number:1
    attack:
        name:"fire breath"
        description:" _fire breath"
        type:"fire"
        specials:
            WEAPON_SPECIAL_MARKSMAN
        range:"ranged"
        damage:14
        number:4



