
unit_type
    id:"Orcish Rider"
    name: _ "Orcish Ox-Rider"
    race:"orc"
    hitpoints:40
    movement_type:"snow_orc"
    movement:8
    experience:40
    level:1
    alignment:"chaotic"
    advances_to:"Orcish Cavalry"
    cost:18
    usage:"fighter"
    undead_variation:"saurian"
    description: _ "Despite their reputation for stupidity, the orcs do learn tactics from their enemy.  The more observant orcs note the utility of the human cavalry, and note that certain large animals have no trouble keeping their footing on snow."
    attack:
        name:"sword"
        description:STR_SWORD
        type:"blade"
        range:"melee"
        damage:9
        number:2
    attack:
        name:"head"
        description: _ "head"
        type:"impact"
        range:"melee"
        damage:8
        number:2
        specials:
            WEAPON_SPECIAL_CHARGE
