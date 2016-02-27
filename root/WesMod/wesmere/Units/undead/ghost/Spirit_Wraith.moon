unit_type
    id:"Wraith"
    name: _ "Wraith"
    race:"undead"
    hitpoints:25
    movement_type:"undeadspirit"
    movement:7
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:"Spectre"
    cost:38
    usage:"scout"
    description: _ "These shades of what were once warriors are among the most terrifying things a necromancer can create, for a sword will cleave right through them as if through air, seemingly without doing harm. It is the thought that these foes are invincible which is so frightening, a notion that is fortunately far from the truth." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN .. SPECIAL_NOTES_SPIRIT .. SPECIAL_NOTES_ARCANE
    attack:
        name:"baneblade"
        description:"_baneblade"	-- wmllint: no spellcheck (until name->id)
        type:"arcane"
        range:"melee"
        damage:6
        number:4
        specials:
            WEAPON_SPECIAL_DRAIN
    attack:
        name:"wail"
        description:"_wail"
        type:"cold"
        range:"ranged"
        damage:4
        number:3

