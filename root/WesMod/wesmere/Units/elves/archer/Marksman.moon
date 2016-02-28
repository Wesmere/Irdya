unit_type
    id:"Elvish Marksman"
    name: _ "Elvish Marksman"
    race:"elf"
    gender:"male",female
    hitpoints:37
    movement_type:"woodland"
    movement:6
    experience:80
    level:2
    alignment:"neutral"
    advances_to:"Elvish Sharpshooter"
    cost:41
    usage:"archer"
    description: _ "Elves are wondrously keen-sighted, a gift which contributes to their mastery of the bow. An elf practiced at archery can hit targets that a man couldn’t even see, and can nock a second arrow almost as soon as the first is let fly. Realizing this prodigious skill does come with one cost, that being a lack of practice with the sword." .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN
    attack:
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:6
        number:2
    attack:
        name:"longbow"
        description:"_longbow"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_MARKSMAN
        range:"ranged"
        damage:9
        number:4
    female:
        name: _ "female^Elvish Marksman"
        gender:"female"
