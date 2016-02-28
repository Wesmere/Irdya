unit_type
    id:"Cavalryman"
    name: _ "Cavalryman"
    race:"human"
    hitpoints:34
    movement_type:"mounted"
    movement:8
    experience:40
    level:1
    alignment:"lawful"
    advances_to:"Dragoon"
    undead_variation:"mounted"
    cost:17
    usage:"scout"
    --extra resistance for these units
    -- wmllint:" notecheck off"
    description: _ "Cavalrymen are distinguished from horsemen by their tactics and equipment. A cavalryman wears heavier armor, and carries a sword and shield, rather than a lance. Their tactics do not include charging; instead they maneuver to slash with a sword, using both horse and rider as an effective tool of melee.

Cavalrymen are very useful for taking and holding positions on open ground, for screening friendly soldiers, and also for scouting work." .. SPECIAL_NOTES .. SPECIAL_NOTES_DEFENSE_CAP
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
        number:3
