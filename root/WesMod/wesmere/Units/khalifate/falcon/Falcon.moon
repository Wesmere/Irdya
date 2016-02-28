unit_type
    id:"Falcon"
    name: _ "Falcon"
    race:"falcon"
    TRAIT_FERAL_MUSTHAVE
    hitpoints:18
    movement_type:"lightfly"
    movement:8
    experience:24
    level:0
    alignment:"neutral"
    advances_to:"Elder Falcon"
    cost:12
    usage:"scout"
    description: _ "Seen as status symbols of the nobles, falcons are precious possessions normally used for sport. The same techniques are employed to rend and tear the enemies of the Khalifate, and their great speed is a boon to scouting out the land." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE
    defense:
        village:50
    attack:
        name:"claws"
        description: _ "claws"
        type:"blade"
        range:"melee"
        damage:2
        number:3
    attack:
        name:"beak"
        description: _ "beak"
        type:"pierce"
        range:"melee"
        damage:5
        number:1
        specials:
            WEAPON_SPECIAL_CHARGE

