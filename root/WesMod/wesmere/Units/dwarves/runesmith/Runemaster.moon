unit_type
    id:"Dwarvish Runemaster"
    -- wmllint:" general spelling runemaster runemasters"
    name: _ "Dwarvish Runemaster"
    race:"dwarf"
    hitpoints:48
    movement_type:"dwarvishfoot"
    resistance:
        blade:50
        pierce:60
        impact:60
    movement:4
    level:3
    alignment:"neutral"
    cost:50
    usage:"fighter"
    experience:150
    advances_to:nil
    -- AMLA_DEFAULT
    description: _ "Except for those with almost supernatural skill, the highest rank a runecrafter can rise to is that of the Dwarvish Runemaster. Striking blows nearly as powerful as those of the best warriors, they would be fearsome without their craft, but with it they are also nigh on invincible, since their runes cause the physical blows of their enemies to deal less damage than would be expected." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"hammer"
        description: _ "hammer"
        type:"impact"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"melee"
        damage:18
        number:2
