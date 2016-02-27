unit_type
    id:"Dwarvish Lord"
    name: _ "Dwarvish Lord"
    race:"dwarf"
    hitpoints:79
    movement_type:"dwarvishfoot"
    movement:4
    experience:150
    level:3
    alignment:"neutral"
    advances_to:"null"
    -- AMLA_DEFAULT
    cost:54
    usage:"fighter"
    description: _ "Clad in shining armor, these dwarves look like kings from under the mountains. They wield axe and hammer with masterful skill, and can hit a target with a thrown hand axe at several paces. Though slow on their feet, these dwarves are a testament to the prowess of their kin."
    resistance:
        blade:60
        pierce:70
        impact:70
    attack:
        name:"battle axe"
        description:"_battle axe"
        type:"blade"
        range:"melee"
        damage:15
        number:3
    attack:
        name:"hammer"
        description:"_hammer"
        type:"impact"
        range:"melee"
        damage:19
        number:2
    attack:
        name:"hatchet"
        description:"_hatchet"
        type:"blade"
        range:"ranged"
        damage:10
        number:1
