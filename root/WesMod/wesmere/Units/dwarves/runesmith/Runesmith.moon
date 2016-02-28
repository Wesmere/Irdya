unit_type
    id:"Dwarvish Runesmith"
    name: _ "Dwarvish Runesmith"
    -- wmllint:" general spellings runesmith runesmiths"
    race:"dwarf"
    hitpoints:40
    movement_type:"dwarvishfoot"
    resistance:
        blade:60
        pierce:70
        impact:70
    movement:4
    level:2
    alignment:"neutral"
    cost:30
    usage:"fighter"
    experience:86
    advances_to:"Dwarvish Runemaster"
    advance_from: if ENABLE_DWARVISH_RUNESMITH
        { unit:"Dwarvish Fighter" }
    description: _ "Dwarvish runesmiths, now practiced at their craft, carve arcane runes into their weapons and armor. These runes infuse the runesmith’s blows with power and accuracy, and disrupt the blows of their enemies, causing them to strike softly, weakly and on the armor of the defender." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"hammer"
        description: _ "hammer"
        type:"impact"
        range:"melee"
        damage:12
        number:2
        specials:
            WEAPON_SPECIAL_MAGICAL
