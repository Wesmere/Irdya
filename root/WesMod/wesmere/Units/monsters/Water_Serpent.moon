
unit_type
    id:"Water Serpent"
    name: _ "Water Serpent"
    race:"monster"
    hitpoints:50
    movement_type:"naga"
    resistance:
        arcane:100
    movement:7
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:26
    undead_variation:"swimmer"
    usage:"fighter"
    description: _ "Scholars differ as to the ancestry of the Water Serpent. Some hold that they are the immature young, or mature cousins, of Sea Serpents. Others hold them up as a primitive offshoot of the Nagas. What is certain is that it is wise to avoid waters where they are known to congregate." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON
    attack:
        name:"fangs"
        description:"_ fangs"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_POISON
        range:"melee"
        damage:12
        number:2
