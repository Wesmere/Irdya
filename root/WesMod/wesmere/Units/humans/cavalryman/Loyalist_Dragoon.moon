unit_type
    id:"Dragoon"
    name: _ "Dragoon"
    race:"human"
    hitpoints:49
    movement_type:"mounted"
    movement:9
    experience:95
    level:2
    alignment:"lawful"
    advances_to:"Cavalier"
    undead_variation:"mounted"
    cost:34
    --extra resistance for these units
    usage:"scout"
    -- wmllint:" notecheck off"
    description: _ "The more talented cavalrymen in the armies of Wesnoth are trained in the use of the crossbow, and matched with much more powerful steeds. Well-armored, and skilled in the use of their swords, these soldiers can drive forward and hold the ground they take. Their mobility and resilience make them of great value on the battlefield." .. SPECIAL_NOTES .. SPECIAL_NOTES_DEFENSE_CAP
    resistance:
        blade:70
        impact:60
        cold:80
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:6
        number:4
    attack:
        name:"crossbow"
        description:"_crossbow"
        type:"pierce"
        range:"ranged"
        damage:12
        number:1
