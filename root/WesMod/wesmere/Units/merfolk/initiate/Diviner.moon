unit_type
    id:"Mermaid Diviner"
    name: _ "female^Mermaid Diviner"
    race:"merman"
    gender:"female"
    hitpoints:41
    resistance:
        arcane:60
    movement_type:"swimmer"
    movement:6
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:57
    usage:"healer"
    description: _ "Years of devotion may endow a priestess with great wisdom on the workings of the world, and grants some the favor of the light. The power thus given to these ladies of the water is a recurring motif in tale and song; such as the that of the knights of the silver spire, cornered and slain to a man at the banks of the Alavynne, but who rode again the next day, in full number, and wrought the downfall of the crimson duke." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_ILLUMINATES
    abilities:{
        ABILITY_ILLUMINATES
        ABILITY_CURES
        }
    attack:
        name:"staff"
        description: _ "staff"
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
        damage:8
        number:4
