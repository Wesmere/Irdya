unit_type
    id:"Shadow"
    name: _ "Shadow"
    race:"undead"
    hitpoints:24
    movement_type:"undeadspirit"
    movement:7
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:"Nightgaunt"
    cost:38
    usage:"scout"
    description: _ "When light came into the world and gave form to the unknown, fear was forced to retreat into darkness. Since that day, the shadows of the world have held terror for humanity, though it knows not why.

That is a question which is easily answered by a necromancer." .. SPECIAL_NOTES .. SPECIAL_NOTES_BACKSTAB .. SPECIAL_NOTES_SPIRIT .. SPECIAL_NOTES_NIGHTSTALK .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_NIGHTSTALK
        ABILITY_SKIRMISHER

    attack:
        name:"claws"
        description:"_claws"
        type:"blade"
        range:"melee"
        damage:8
        number:3
        specials:
            WEAPON_SPECIAL_BACKSTAB

