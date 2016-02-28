unit_type
    id:"Mage of Light"
    name: _ "Mage of Light"
    race:"human"
    gender:{"male","female"}
    hitpoints:47
    movement_type:"smallfoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:64
    usage:"healer"
    description: _ "After years of experience, the most devout of white magi develop vast spiritual powers. By strict devotion to the path of the light, they can call upon its aid to chase away the shadows of the night.

Following a strict code of piety and honor, these men and women work tirelessly to bring life and order to the troubled world in which they live." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_ILLUMINATES
    abilities:{
        ABILITY_ILLUMINATES
        ABILITY_CURES
    }
    resistance:
        arcane:40
    attack:
        name:"morning star"
        description:"_morning star"
        type:"impact"
        range:"melee"
        damage:7
        number:3
    attack:
        name:"lightbeam"
        description:"_lightbeam"	-- wmllint: no spellcheck (until name->id)
        type:"arcane"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:12
        number:3
    female:
        name: _ "female^Mage of Light"
        gender:"female"
