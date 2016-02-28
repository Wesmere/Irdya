unit_type
    id:"Ghast"
    name: _ "Ghast"
    race:"undead"
    TRAIT_FEARLESS_MUSTHAVE
    hitpoints:65
    movement_type:"gruefoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:41
    usage:"fighter"
    description: _ "The ghast is a creature taken from humankind’s most primal nightmares. Unlike their lesser cousins, ghouls and necrophages, ghasts are not patient enough to wait for their victim to die from poison before consuming the body. They attack directly with their enormous mouths, trying to rip the flesh straight from their foes. Once their enemy is defeated, they eat the rest of the body, gaining strength in the process." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON .. SPECIAL_NOTES_FEEDING
    abilities:
        ABILITY_FEEDING
    attack:
        name:"bite"
        description:"_ bite"
        type:"blade"
        range:"melee"
        damage:10
        number:3
        specials:
            WEAPON_SPECIAL_POISON
