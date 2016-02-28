unit_type
    id:"Dwarvish Pathfinder"
    name: _ "Dwarvish Pathfinder"
    race:"dwarf"
    hitpoints:42
    movement_type:"dwarvishfoot"
    resistance:
        blade:90
        pierce:90
        impact:90
    movement:5
    experience:60
    level:2
    alignment:"neutral"
    advances_to:"Dwarvish Explorer"
    cost:30
    usage:"scout"
    description: _ "These hardy dwarves are sometimes away from their caves for long periods, scouting and patrolling the borders. They spend this time watching for invaders, and fighting bandits and thieves who encroach on dwarvish territory. They are powerful fighters in a melee, and from a distance their deftly thrown axes can rival the power and accuracy of a human archer."
    --weakened from 9 damage to 8 damage
    attack:
        name:"axe"
        description: _ "axe"
        type:"blade"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"axe"
        description: _ "axe"
        type:"blade"
        range:"ranged"
        damage:8
        number:3
