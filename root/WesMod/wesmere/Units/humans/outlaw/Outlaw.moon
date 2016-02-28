unit_type
    id:"Outlaw"
    name: _ "Outlaw"
    race:"human"
    gender:{"male","female"}
    hitpoints:42
    movement_type:"elusivefoot"
    movement:7
    level:2
    alignment:"chaotic"
    experience:77
    advances_to:"Fugitive"
    cost:28
    usage:"mixed fighter"
    description: _ "After some years of service, former ‘footpads’ rise up in the ranks of their fellow outlaws. Having proven themselves in combat, they are given more dangerous tasks, and a greater share of the spoils. Though many opponents would mock their choice of weaponry, the outlaws are well aware of its deadly capacity, and also of the ready availability of ammunition. Outlaws are somewhat ill at ease fighting during the day, preferring the cover of nightfall."
    attack:
        name:"mace-spiked"
        description: _ "mace"
        type:"impact"
        range:"melee"
        damage:8
        number:2
    attack:
        name:"sling"
        description: _ "sling"
        type:"impact"
        range:"ranged"
        damage:6
        number:3
    female:
        name: _ "female^Outlaw"
        gender:"female"
