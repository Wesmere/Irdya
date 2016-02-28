unit_type
    id:"Great Wolf"
    name: _ "Great Wolf"
    race:"wolf"
    generate_name:"no"
    hitpoints:45
    movement_type:"orcishfoot"
    movement:9
    experience:100
    -- AMLA_DEFAULT
    level:2
    alignment:"neutral"
    advances_to:nil
--ifdef ENABLE_WOLF_ADVANCEMENT
    advance_from:
        unit:"Wolf"
        experience:30
--endif
    cost:30
    usage:"scout"
    description:"_ Wolves are aggressive animals that hunt in packs. Although weak individually, a wolf pack can kill even the strongest man in minutes."
    defense:
        village:50
    attack:
        name:"fangs"
        description:"_fangs"
        type:"blade"
        range:"melee"
        damage:5
        number:4

    [variation]
        variation_id:"red"
        inherit:"yes"
        hide_help:"yes"



    [/variation]
