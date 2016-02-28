unit_type
    id:"Khaiyal"
    name: _ "Khaiyal"
    race:"khalifate"
    hitpoints:38
    movement_type:"khalifatearmoredhorse"
    resistance:
        blade:80
        pierce:110
        impact:100
        fire:100
        cold:120
        arcane:80
    movement:6
    experience:48
    level:1
    alignment:"lawful"
    advances_to:{"Faris","Qanas"}
    cost:21
    usage:"fighter"
    undead_variation:"mounted"
    description: _ "The Khaiyal understand the psychological impact of a charging horse, and reinforce this by cladding themselves in heavy armor. Majestic at rest, a Khaiyal at the charge with lance in hand is often impetus enough to break men. On the rare occurrences that their charge fails to rout their foe, the Khaiyal ride into the resulting melee with their maces in hand, trusting their armor to keep them safe."
    attack:
        name:"lance"
        description: _ "lance"
        type:"pierce"
        range:"melee"
        damage:20
        number:1
    attack:
        name:"mace"
        description: _ "mace"
        type:"impact"
        range:"melee"
        damage:6
        number:3
