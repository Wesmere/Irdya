unit_type
    id:"Mage"
    name: _ "Mage"
    -- wmllint:" general spelling mage mages magery magecraft"
    race:"human"
    gender:{"male","female"}
    hitpoints:24
    movement_type:"smallfoot"
    movement:5
    experience:54
    level:1
    alignment:"lawful"
    advances_to:{"White Mage","Red Mage"}
    cost:20
    usage:"mixed fighter"
    description: _ "Humans have often pondered the workings of the world in which they live. Some endeavor to take this beyond idle musing, to set it as the primary enterprise of their lives. Any magi worthy of the title have spent at least a decade in study, amassing a sum of knowledge which sets them apart from other people. These men and women, who have committed themselves fully to the pursuit of wisdom, stand in stark contrast to a world where few can even read and write. Their ranks are filled with the children of hopeful nobility, or those who sought an escape from the intellectual void of manual labor.

It is an irony that, with all their knowledge, and their unassuming monopoly thereof, the collective community of magi could likely rule society, were they ever to try. However, their true love is neither money, nor power, and those who see the study of magic as a means to such ends often lack the very conviction required for true mastery.

Physically frail, and lacking familiarity with combat, magi do possess certain arts which are of great utility in battle." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:5
        number:1
    attack:
        name:"missile"
        description: _ "missile"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MAGICAL
        damage:7
        number:3
    female:
        name: _ "female^Mage"
        gender:"female"
