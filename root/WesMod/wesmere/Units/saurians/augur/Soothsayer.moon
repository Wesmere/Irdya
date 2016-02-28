unit_type
    id:"Saurian Soothsayer"
    name: _ "Saurian Soothsayer"
    race:"lizard"
    hitpoints:29
    movement_type:"lizard"
    movement:6
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:27
    usage:"healer"
    description: _ "Saurians are known to have some strange skills, arts bordering on the magical and mysterious. It is clear that some of them are particularly skilled at a sort of medicine, which is of great benefit whenever battle is brought against them." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_CURES
    abilities:
        ABILITY_CURES
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:5
        number:2
    attack:
        name:"curse"
        description:"_curse"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:6
        number:3
