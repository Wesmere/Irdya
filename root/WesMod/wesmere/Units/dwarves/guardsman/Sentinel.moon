unit_type
    id:"Dwarvish Sentinel"
    name: _ "Dwarvish Sentinel"
    race:"dwarf"
    hitpoints:68
    movement_type:"dwarvishfoot"
    movement:4
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:41
    usage:"fighter"
    description: _ "Champions among their fellow troops, the dwarven sentinels form the bulwark of their battle lines. Leading a direct assault against a line that they fortify, is often out of the question; it tends toward being suicidal, rather than merely ineffectual. These dwarves are masters of the melee, and can hold a patch of earth with the singleminded tenacity of an oak." .. SPECIAL_NOTES .. SPECIAL_NOTES_STEADFAST
    defense:
        flat:60
        forest:60
        sand:60
        mountains:40
        hills:50
    resistance:
        blade:70
        pierce:70
    abilities:
        ABILITY_STEADFAST
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:9
        number:3
    attack:
        name:"javelin"
        description: _ "javelin"
        type:"pierce"
        range:"ranged"
        damage:11
        number:2
