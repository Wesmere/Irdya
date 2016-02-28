unit_type
    id:"White Mage"
    name: _ "White Mage"
    race:"human"
    gender:{"male","female"}
    hitpoints:35
    movement_type:"smallfoot"
    movement:5
    experience:136
    level:2
    alignment:"lawful"
    advances_to:"Mage of Light"
    cost:40
    usage:"healer"
    description: _ "Some magi, as they learn about the world around them, and learn the truth of the suffering and squalor in which humanity too often lives, find that they cannot bring themselves to be cloistered into a life of study. These men and women give up the life of a mage, and join monastic orders, dedicating the skills they have been given to the good of all. After their ordination, they often travel the world, ministering to sickness and injury.

Though not trained for combat, they are a potent ally against magical or unnatural things." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_CURES
    abilities:
        ABILITY_CURES
    resistance:
        arcane:60
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:6
        number:2
    attack:
        name:"lightbeam"
        description: _ "lightbeam"	-- wmllint: no spellcheck (until name->id)
        type:"arcane"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:9
        number:3
    female:
        name: _ "female^White Mage"
        gender:"female"
