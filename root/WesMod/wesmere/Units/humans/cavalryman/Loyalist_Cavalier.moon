unit_type
    id:"Cavalier"
    name: _ "Cavalier"
    race:"human"
    hitpoints:64
    movement_type:"mounted"
    movement:9
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    undead_variation:"mounted"
    cost:52
    --extra resistance for these units
    usage:"scout"
    -- wmllint:" notecheck off"
    description: _ "Cavaliers are masters at the use of both sword and crossbow from horseback. Their combination of striking power and mobility is fearsome; and they have a reputation for dash and aggressiveness to match it. The daring deeds of Cavaliers are the subject of many a tale and song." .. SPECIAL_NOTES .. SPECIAL_NOTES_DEFENSE_CAP
    resistance:
        blade:70
        impact:60
        cold:80
    attack:
        name:"sword"
        description: _ "longsword"
        type:"blade"
        range:"melee"
        damage:10
        number:4
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:20
        number:1
