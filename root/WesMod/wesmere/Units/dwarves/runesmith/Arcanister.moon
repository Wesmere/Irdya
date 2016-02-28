unit_type
    id:"Dwarvish Arcanister"
    name: _ "Dwarvish Arcanister"
    -- wmllint:" general spelling arcanister arcanisters"
    race:"dwarf"
    hitpoints:54
    movement_type:"dwarvishfoot"
    resistance:
        blade:50
        pierce:50
        impact:50
    movement:4
    level:4
    alignment:"neutral"
    cost:80
    usage:"fighter"
    advances_to:"null"
    experience:200
    advance_from: if ENABLE_DWARVISH_ARCANISTER
        {
            unit:"Dwarvish Runemaster"
            experience:210
        }
    -- AMLA_DEFAULT
    description: _ "The most powerful of all the runecrafters, the Dwarvish Arcanister destroys wounded enemies almost instantly, and rarely fails to cause a wound when that is his intent. His skill in runecrafting is unrivaled, and the glyphs he carves into his weapons and armor deflect the blows of his enemies." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"hammer"
        description: _ "hammer"
        type:"impact"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"melee"
        damage:26
        number:2
