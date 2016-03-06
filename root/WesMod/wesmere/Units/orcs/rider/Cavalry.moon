
unit_type
    id:"Orcish Cavalry"
    name: _ "Orcish Cavalry"
    race:"orc"
    hitpoints:56
    movement_type:"snow_orc"
    movement:7
    experience:60
    level:2
    alignment:"chaotic"
    advances_to:"Orcish Destrier"
    cost:25
    usage:"fighter"
    undead_variation:"saurian"
    description: _ "The more experienced riders have acquired better armor and have also learned how to keep their mount from getting pierced in the throught. Because of their skill and utility in the battlefield, the veteran cavalry are members of a respected class that can stay somewhat above the rat race that other orcs must engage in."
    resistance:
        pierce:110
        blade:80
        impact:80
    attack:
        name:"sword"
        description:STR_SWORD
        type:"blade"
        range:"melee"
        damage:14
        number:2
    attack:
        name:"head"
        description: _ "head"
        type:"impact"
        range:"melee"
        damage:11
        number:2
        specials:
            WEAPON_SPECIAL_CHARGE
