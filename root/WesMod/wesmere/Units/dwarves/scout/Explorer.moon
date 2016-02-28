unit_type
    id:"Dwarvish Explorer"
    name: _ "Dwarvish Explorer"
    race:"dwarf"
    hitpoints:60
    movement_type:"dwarvishfoot"
    movement:5
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:45
    usage:"scout"
    description: _ "Dwarvish Explorers are peerless survivalists. Using only the equipment they carry, they can range for months around the forests and mountains looking for new seams of ore and deposits of minerals. Whilst their skill in a melee is less than some other dwarves, they are unmatched with throwing axes, having practiced this skill hunting in the mountains. Their maneuverability makes them dangerous and tricky foes."
    --weakened from 12 damage to 10 damage
    attack:
        name:"battle axe"
        description: _ "battle axe"
        type:"blade"
        range:"melee"
        damage:10
        number:3
    attack:
        name:"axe"
        description: _ "axe"
        type:"blade"
        range:"ranged"
        damage:11
        number:3
