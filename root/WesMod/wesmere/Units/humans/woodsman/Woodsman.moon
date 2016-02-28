unit_type
    id:"Woodsman"
    name: _ "Woodsman"
    race:"human"
    gender:"male"
    hitpoints:18
    movement_type:"smallfoot"
    movement:5
    experience:23
    level:0
    alignment:"neutral"
    advances_to:{"Bowman","Poacher"}
    cost:10
    usage:"archer"
    description: _ "Woodsmen are hunters, woodcutters, charcoal-burners, and others who eke out a living where the human world verges on the wilderness. Wits and woodcraft often support them where weapons will not."
    defense:
        forest:40
        swamp_water:50
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:3
        number:1
    attack:
        name:"bow"
        description: _ "bow"
        type:"pierce"
        range:"ranged"
        damage:4
        number:3
