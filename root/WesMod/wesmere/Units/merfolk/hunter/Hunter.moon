unit_type
    id:"Merman Hunter"
    name: _ "Merman Hunter"
    race:"merman"
    hitpoints:30
    movement_type:"swimmer"
    movement:6
    experience:35
    level:1
    alignment:"lawful"
    advances_to:{"Merman Spearman","Merman Netcaster"}
    cost:15
    usage:"mixed fighter"
    description: _ "The skills employed by mermen in spear-fishing are easily translated into warfare, especially against those who are not at home in the water. In times of need, many mermen of that occupation will volunteer to swell the ranks of their military."
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:4
        number:2
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"ranged"
        damage:5
        number:3
