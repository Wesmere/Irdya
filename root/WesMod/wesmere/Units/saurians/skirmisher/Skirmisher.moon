unit_type
    id:"Saurian Skirmisher"
    name: _ "Saurian Skirmisher"
    race:"lizard"
    hitpoints:26
    movement_type:"lizard"
    movement:6
    experience:32
    level:1
    alignment:"chaotic"
    advances_to:"Saurian Ambusher"
    cost:15
    usage:"scout"
    description: _ "Saurians are very small of frame, and though they are somewhat frail because of this, they are very, very agile. In combat, their size allows them to dart past defenses that would hold any grown man at bay, making them a tricky foe to deal with.

Spears are their preferred weapon, as their powerful hind legs can drive a spear with enough force to do considerable damage, either in hand or thrown." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"spear"
        description:"_spear"
        range:"melee"
        type:"pierce"
        damage:4
        number:4
    attack:
        name:"spear"
        description:"_spear"
        range:"ranged"
        type:"pierce"
        damage:4
        number:2

    DEATH_ANIM_DIRECTIONAL_4_FRAME "units/saurians/skirmisher/skirmisher"

