unit_type
    id:"Elder Falcon"
    name: _ "Elder Falcon"
    race:"falcon"
    trait:TRAIT_FERAL_MUSTHAVE
    hitpoints:27
    movement_type:"lightfly"
    movement:9
    experience:50
    level:1
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:18
    usage:"scout"
    description: _ "Elder Falcons bear the telltale scars of veteran warriors from protecting their masters, their bodies proof of repeated dives into a swirling melee. Stronger and faster than their younger kin, they are rumored to hit with enough force to remove an enemy's head. " .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE
    defense:
        village:50
    attack:
        name:"claws"
        description: _ "claws"
        type:"blade"
        range:"melee"
        damage:4
        number:3
    attack:
        name:"beak"
        description: _ "beak"
        type:"pierce"
        range:"melee"
        damage:9
        number:1
        specials:
            WEAPON_SPECIAL_CHARGE

