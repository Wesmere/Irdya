unit_type
    id:"Ghoul"
    name: _ "Ghoul"
    race:"undead"
    TRAIT_FEARLESS_MUSTHAVE
    hitpoints:33
    movement_type:"gruefoot"
    movement:5
    experience:35
    level:1
    alignment:"chaotic"
    advances_to:"Necrophage"
    cost:16
    usage:"fighter"
    description: _ "Only the more perverse and sadistic of necromancers know what must be done to turn a person into a ghoul, and it is a secret they are not telling. The result, however, is all too well known; it is a beast that knows nothing of its days as a human being, a creature that shambles about as naked as the day it was born, and gorges itself on the flesh of the dead.

It is because of such things that necromancy is condemned with an almost primal hatred in all civilized lands." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON
    attack:
        name:"claws"
        description:"_claws"
        type:"blade"
        range:"melee"
        damage:4
        number:3
        specials:
            WEAPON_SPECIAL_POISON
