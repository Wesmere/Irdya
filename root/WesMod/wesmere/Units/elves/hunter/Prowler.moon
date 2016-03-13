
unit_type
    id:"Elvish Prowler"
    name: _ "Elvish Prowler"
    race:"elf"
    gender:{"male","female"}
    hitpoints:66
    movement_type:"woodland"
    movement:6
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:60
    usage:"mixed fighter"
    abilities:{
        ABILITY_SKIRMISHER
        ABILITY_AMBUSH
        }
    movement_costs:
        cave:2
    -- These guys have a better defense in swamp water and sands
    defense:
        swamp_water:60
        cave:50
        mountains:30
        hills:40
        sand:60
    description: _ "The best hunters are renowned for their skill in taking advantage of their surroundings to sneak past enemies unnoticed and strike at them by surprise. It is not unusual for incursion parties to be either disbanded or decimated by patrol teams led by a few veteran prowlers." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER .. SPECIAL_NOTES_AMBUSH .. SPECIAL_NOTES_SLOW
    attack:
        name:"sword"
        description:TSTR_ATTACK_NAME_SWORD
        type:"blade"
        range:"melee"
        damage:9
        number:4
    attack:
        name:"bolas"
        description: _ "bolas"
        type:"impact"
        range:"ranged"
        damage:12
        number:2
        specials:
            WEAPON_SPECIAL_SLOW
    female:
        name: _ "female^Elvish Prowler"
        gender:"female"
