unit_type
    id:"Direwolf"
    name: _ "Direwolf"
    race:"wolf"
    generate_name:"no"
    hitpoints:57
    movement_type:"orcishfoot"
    movement:10
    experience:150
    -- AMLA_DEFAULT
    level:3
    alignment:"neutral"
    advances_to:nil
--ifdef ENABLE_WOLF_ADVANCEMENT
    advance_from:
        unit:"Great Wolf"
        experience:65
--endif
    cost:36
    usage:"scout"
    description:"_ Wolves are aggressive animals that hunt in packs. Although weak individually, a wolf pack can kill even the strongest man in minutes."
    defense:
        village:50
    attack:
        name:"fangs"
        description:"_fangs"
        type:"blade"
        range:"melee"
        damage:7
        number:4
