unit_type
    id:"Dwarvish Scout"
    name: _ "Dwarvish Scout"
    race:"dwarf"
    hitpoints:30
    movement_type:"dwarvishfoot"
    resistance:
        blade:90
        pierce:90
        impact:90
    movement:5
    experience:30
    level:1
    alignment:"neutral"
    advances_to:"Dwarvish Pathfinder"
    cost:18
    usage:"mixed fighter"
    description: _ "Although the dwarves cannot match the taller races in a sprint, when unencumbered by heavy armor their tremendous stamina and endurance allows them to match all but the fastest on foot. Dwarvish Scouts use this to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarvish communities. However, they pay for their speed with the poorer protection provided by their lighter armor."
    --weakened from 7 damage to 6
    attack:
        name:"axe"
        description: _ "axe"
        type:"blade"
        range:"melee"
        damage:6
        number:3
    attack:
        name:"axe"
        description: _ "axe"
        type:"blade"
        range:"ranged"
        damage:8
        number:2
