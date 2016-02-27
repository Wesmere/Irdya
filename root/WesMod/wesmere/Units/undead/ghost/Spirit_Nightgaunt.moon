unit_type
    id:"Nightgaunt"
    name: _ "Nightgaunt"
    race:"undead"
    hitpoints:35
    movement_type:"undeadspirit"
    movement:7
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:52
    usage:"scout"
    description: _ "The purpose of the masks that these creatures wear is unknown, as is the countenance that they obscure. These terrible forms are rarely seen by the living, and those who live to speak of them had no leisure to study their foe." .. SPECIAL_NOTES .. SPECIAL_NOTES_BACKSTAB .. SPECIAL_NOTES_SPIRIT .. SPECIAL_NOTES_NIGHTSTALK .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_NIGHTSTALK
        ABILITY_SKIRMISHER
    attack:
        name:"claws"
        description:"_claws"
        type:"blade"
        range:"melee"
        damage:10
        number:3
        specials:
            WEAPON_SPECIAL_BACKSTAB
