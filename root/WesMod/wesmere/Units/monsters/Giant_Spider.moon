unit_type
    id:"Giant Spider"
    name: _ "Giant Spider"
    race:"monster"
    hitpoints:54
    movement_type:"mountainfoot"
    movement_costs:
        fungus:2
    movement:6
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:55
    usage:"fighter"
    description: _ "Giant Spiders are said to roam the depths of Knalga, devouring many victims. They have a vicious bite, made worse by the fact that it is poisoned, and can also fling webs through the air to trap their prey." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON .. SPECIAL_NOTES_SLOW
    attack:
        name:"fangs"
        description:"_fangs"
        type:"blade"
        range:"melee"
        damage:18
        number:2
        specials:
            WEAPON_SPECIAL_POISON
    attack:
        name:"web"
        description:"_web"
        type:"impact"
        range:"ranged"
        damage:8
        number:3
        specials:
            WEAPON_SPECIAL_SLOW
