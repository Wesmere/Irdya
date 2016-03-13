
unit_type
    id:"Elvish Hunter"
    name: _ "Elvish Hunter"
    race:"elf"
    gender:{"male","female"}
    hitpoints:30
    movement_type:"woodland"
    movement:6
    cost:16
    experience:42
    level:1
    alignment:"neutral"
    advances_to:"Elvish Trapper"
    usage:"mixed fighter"
    movement_costs:
        cave:2
    -- These guys have a better defense in swamp water and sands
    defense:
        swamp_water:60
        cave:50
        mountains:30
        hills:40
        sand:60
    description: _ "In order to protect their lands, the forest elves of the Valley of Elynia have developed new practices and formed special trained groups to patrol their frontiers. Their hunters are specialized in trapping unwary opponents from a safe distance to ease the task of the swordsmen." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW
    attack:
        name:"sword"
        description:TSTR_ATTACK_NAME_SWORD
        type:"blade"
        range:"melee"
        damage:5
        number:4
    attack:
        name:"bolas"
        description: _ "bolas"
        type:"impact"
        range:"ranged"
        damage:4
        number:2
        specials:
            WEAPON_SPECIAL_SLOW
    female:
        name: _ "female^Elvish Hunter"
        gender:"female"
