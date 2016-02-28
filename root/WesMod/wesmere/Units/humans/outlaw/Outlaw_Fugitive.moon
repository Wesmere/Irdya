
unit_type
    id:"Fugitive"
    name: _ "Fugitive"
    race:"human"
    gender:{"male","female"}
    hitpoints:62
    movement_type:"elusivefoot"
    movement:7
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:56
    usage:"mixed fighter"
    description: _ "Veteran criminals become notorious for both their ruthlessness and ability to elude capture. They can be dangerous in their element, though no match for the sheer numbers that law-abiding soldiery can throw at them." .. SPECIAL_NOTES .. SPECIAL_NOTES_CONCEALMENT
    abilities:
        ABILITY_CONCEALMENT
    attack:
        name:"mace-spiked"
        description: _ "mace"
        type:"impact"
        range:"melee"
        damage:11
        number:2
    attack:
        name:"sling"
        description: _ "sling"
        type:"impact"
        range:"ranged"
        damage:7
        number:4
    female:
        name: _ "female^Fugitive"
        gender:"female"
