unit_type
    name: _ "Elvish Ranger"
    id:"Elvish Ranger"
    race:"elf"
    gender:"male",female
    hitpoints:42
    movement_type:"woodland"
    movement:6
    experience:90
    level:2
    alignment:"neutral"
    advances_to:"Elvish Avenger"
    cost:41
    usage:"mixed fighter"
    description: _ "Though a man might spend years in the forest, he will never shake the feeling that he is a guest in a realm of which he is not truly a part. With elves, this is quite reversed. Any elf that studies the lore of the woods rapidly becomes a master of them. This, combined with a considerable skill at archery and swordsmanship, is very useful in warfare." .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH
    movement_costs:
        shallow_water:2
        mountains:2
    defense:
        shallow_water:70
        swamp_water:60
        sand:60
    abilities:
        ABILITY_AMBUSH
    attack:
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:7
        number:3
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:7
        number:4
    female:
        name: _ "female^Elvish Ranger"
        gender:"female"
