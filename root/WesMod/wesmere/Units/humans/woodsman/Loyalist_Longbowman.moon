unit_type
    id:"Longbowman"
    name: _ "Longbowman"
    -- wmllint:" general spelling longbowman longbowmen"
    race:"human"
    gender:"male"
    hitpoints:51
    movement_type:"smallfoot"
    movement:5
    experience:68
    level:2
    alignment:"lawful"
    advances_to:"Master Bowman"
    cost:26
    usage:"archer"
    description: _ "Longbows are fearsome weapons, but too difficult for beginning archers to wield. It takes great strength to draw one, and the added range and power it confers remain useless unless one has good aim with the weapon. Longbowmen carry their weapons as a badge of pride, and most bowmen look forward to the day they can begin using one."
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:8
        number:2
    attack:
        name:"bow"
        description:_ "longbow"
        type:"pierce"
        range:"ranged"
        damage:10
        number:3
