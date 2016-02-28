unit_type
    id:"Goblin Pillager"
    name: _ "Goblin Pillager"
    race:"wolf"
    hitpoints:44
    movement_type:"orcishfoot"
    movement:9
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:32
    usage:"scout"
    description: _ "Some Goblins train their wolves to overcome their fear of fire. In raids, these goblins take a supporting role; they will torch the homes and crops of their foes, and also carry nets to wreak havoc against those attempting to rally for defense or reprisal." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW
    defense:
        village:50
    attack:
        name:"fangs"
        description: _ "fangs"
        type:"blade"
        range:"melee"
        damage:5
        number:3
    attack:
        name:"torch"
        description: _ "torch"
        type:"fire"
        range:"melee"
        damage:7
        number:3
    attack:
        name:"net"
        description: _ "net"
        type:"impact"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:6
        number:2
        range:"ranged"
