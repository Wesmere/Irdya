unit_type
    id:"Elvish Sharpshooter"
    name: _ "Elvish Sharpshooter"
    race:"elf"
    gender:"male","female"

    hitpoints:47
    movement_type:"woodland"
    movement:6
    experience:150
    level:3
    alignment:"neutral"
    advances_to:"nil"
    -- -- AMLA_DEFAULT
    cost:55
    usage:"archer"
    description: _ "There was a legend of an elf who stopped an arrow by shooting it out of the air with one of his own. It is a testament to the skill of the elves that such a story could be taken seriously. The sharpshooters of the elves have, quite simply, mastered the art of archery." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN

    attack:
        id:"sword"
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:7
        number:2

    attack:
        id:"longbow"
        name:"longbow"
        description:"_longbow"
        type:"pierce"
        specials:" WEAPON_SPECIAL_MARKSMAN"
        range:"ranged"
        damage:10
        number:5
