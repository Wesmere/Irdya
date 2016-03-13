
unit_type
    id:"Elvish Trapper"
    name: _ "Elvish Trapper"
    race:"elf"
    gender:{"male","female"}
    hitpoints:44
    movement_type:"woodland"
    movement:6
    experience:84
    level:2
    alignment:"neutral"
    advances_to:"Elvish Prowler"
    cost:34
    usage:"mixed fighter"
    abilities:
        ABILITY_SKIRMISHER
    movement_costs:
        cave:2
    -- These guys have a better defense in swamp water and sands
    defense:
        swamp_water:60
        cave:50
        mountains:30
        hills:40
        sand:60
    description: _ "Field experience has granted Elvish Trappers greater expertise in patrolling and defending their bases, utilizing decoys and swift moves to confound their enemies and attack them from behind. Their continuous training in swordplay also begins to prove advantageous, allowing them to operate better on their own." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER .. SPECIAL_NOTES_SLOW
    attack:
        name:"sword"
        description:TSTR_ATTACK_NAME_SWORD
        type:"blade"
        range:"melee"
        damage:7
        number:4
    attack:
        name:"bolas"
        description: _ "bolas"
        type:"impact"
        range:"ranged"
        damage:8
        number:2
        specials:
            WEAPON_SPECIAL_SLOW
    female:
        name: _ "female^Elvish Trapper"
        gender:"female"
