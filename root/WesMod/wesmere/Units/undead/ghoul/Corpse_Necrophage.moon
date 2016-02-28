unit_type
    id:"Necrophage"
    name: _ "Necrophage"
    race:"undead"
    TRAIT_FEARLESS_MUSTHAVE
    hitpoints:47
    movement_type:"gruefoot"
    movement:5
    experience:120
    level:2
    alignment:"chaotic"
    advances_to:"Ghast"
    cost:27
    usage:"fighter"
    description: _ "The necrophage, or ‘devourer of the dead’, is a monstrous, corpulent thing, which bears only a crude resemblance to a man. They appear to be quite rotten in spite of their ability to move; they are rife with disease and poisons of the blood, and have a stench to match. But the most revolting fact about these fratures, apparent only to those who can perceive the traces of foul magic on them, is that they were somehow made from living men — a process about which almost nothing is known, but which can be nothing but nightmarish." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON .. SPECIAL_NOTES_FEEDING
    abilities:
        ABILITY_FEEDING
    attack:
        name:"claws"
        description:"_claws"
        type:"blade"
        range:"melee"
        damage:7
        number:3
        specials:
            WEAPON_SPECIAL_POISON
