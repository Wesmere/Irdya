unit_type
    id:"Peasant"
    name: _ "Peasant"
    race:"human"
    gender:"male"
    hitpoints:18
    movement_type:"smallfoot"
    movement:5
    experience:23
    level:0
    alignment:"lawful"
    advances_to:{"Spearman","Bowman"}
    cost:8
    usage:"fighter"
    description: _ "Peasants are the backbone of the rural economy, and the soldiers of last resort. While not warlike by nature, they will stubbornly defend their homes. However, if you’re hurling peasants at your foes, you’re clearly out of superior forces."
    attack:
        name:"pitchfork"
        description: _ "pitchfork"
        type:"pierce"
        range:"melee"
        damage:5
        number:2
    attack:
        name:"pitchfork"
        description: _ "pitchfork"
        type:"pierce"
        range:"ranged"
        damage:4
        number:1
