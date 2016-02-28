unit_type
    id:"Spearman"
    name: _ "Spearman"
    -- wmllint:" general spelling spearmen"
    race:"human"
    hitpoints:36
    movement_type:"smallfoot"
    movement:5
    experience:42
    level:1
    alignment:"lawful"
    advances_to:{"Swordsman","Pikeman,Javelineer"}
    cost:14
    usage:"fighter"
    description: _ "Swords are, for many, an expensive luxury, and one which peasants can ill afford. Spears are much easier to make and will do well even without a spearhead, though most can afford one. Clad in leather armor, and often armed with a shield and a few javelins, spearmen are the staple of most armies, often thrown into the front lines with only the most basic training." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:7
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
    attack:
        name:"javelin"
        description: _ "javelin"
        type:"pierce"
        range:"ranged"
        damage:6
        number:1
