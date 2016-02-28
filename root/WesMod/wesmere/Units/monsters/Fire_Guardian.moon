unit_type
    id:"Fire Guardian"
    name: _ "Fire Guardian"
    race:"monster"
    TRAIT_ELEMENTAL
    hitpoints:23
    movement_type:"drakefly"
    resistance:
        blade:100
        pierce:100
        impact:100
    movement:6
    experience:50
    level:1
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:19
    usage:"fighter"
    description: _ "Fire Guardians are spirits of smoke and flame. No one is exactly sure where they come from, but they are occasionally summoned by powerful mages to do their bidding. When not being controlled they like to frolic in pools of lava and take great delight in burning anything they can reach."
    attack:
        name:"fire claws"
        description: _ "fire claws"
        type:"fire"
        range:"melee"
        damage:4
        number:3
    attack:
        name:"fire breath"
        description: _ "fire breath"
        type:"fire"
        range:"ranged"
        damage:8
        number:2
