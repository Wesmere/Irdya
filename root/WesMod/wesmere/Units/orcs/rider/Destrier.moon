
unit_type
    id:"Orcish Destrier"
    name: _ "Orcish Destrier"
    race:"orc"
    hitpoints:72
    movement_type:"snow_orc"
    movement:7
    experience:100
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:35
    usage:"fighter"
    undead_variation:"saurian"
    description: _ "The elite members of the orcish cavalry have reached a great level of prowess and notoriety upon the battle field, but are expensive to maintain for both orc and mount must be in top physical shape. As a result, they do not try to become warlords, but seek warlord patrons who will pay their upkeep in exchange for the long and strong arm they can provide."
    resistance:
        pierce:90
        blade:70
        impact:70
    attack:
        name:"sword"
        description:STR_GREATSWORD
        type:"blade"
        range:"melee"
        damage:14
        number:3
    attack:
        name:"head"
        description: _ "head"
        type:"impact"
        range:"melee"
        damage:16
        number:2
        specials:
            WEAPON_SPECIAL_CHARGE
