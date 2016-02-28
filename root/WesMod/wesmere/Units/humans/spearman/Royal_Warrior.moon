
-- This unit is intended as a base for character units representing individual
-- kings and princes.  It should probably not be used on its own.

unit_type
    id:"Royal Warrior"
    name: _ "Royal Warrior"
    race:"human"
    gender:"male"
    hitpoints:64
    movement_type:"armoredfoot"
    movement:6
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:40
    usage:"fighter"
    description: _ "Royal warriors are the kings and princes of human noble houses, armed and armored to a degree heavier than that of their knights."
    attack:
        name:"mace"
        description: _ "mace"
        type:"impact"
        range:"melee"
        damage:13
        number:3
