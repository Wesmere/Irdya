unit_type
    id:"Revenant"
    name: _ "Revenant"
    -- wmllint:" general spelling revenants"
    race:"undead"
    hitpoints:47
    movement_type:"undeadfoot"
    movement:5
    experience:85
    level:2
    alignment:"chaotic"
    advances_to:"Draug"
    cost:28
    usage:"fighter"
    description: _ "Given false life to do battle once more, the creatures known as Revenants were clearly great warriors in their time, though the memory of that time is almost wholly lost to their undead selves. Even the sorcerers who raised them can only speculate on their past. Such questions aside, a Revenant is a powerful tool in combat: a fearless warrior that feels no pain and will fight to the bitter end." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        pierce:40
        impact:120
    attack:
        name:"axe"
        description:"_axe"
        type:"blade"
        range:"melee"
        damage:8
        number:4
