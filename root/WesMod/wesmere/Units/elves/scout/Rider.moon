unit_type
    id:"Elvish Rider"
    name: _ "Elvish Rider"
    race:"elf"
    hitpoints:46
    movement_type:"woodland"
    movement:10
    experience:75
    level:2
    alignment:"neutral"
    advances_to:"Elvish Outrider"
    cost:31
    undead_variation:"mounted"
    usage:"scout"
    --mostly like a foot Elf, but they
    --aren't good at defending in villages
    --they are weak against piercing attacks
    description: _ "The master horsemen of the elves are able to move through forests at a speed which would be suicidal for any human. Awe of the rider is quite justified — but questions have also been raised about the stock of the horses, for the feats they perform seem almost supernatural.

This combination of incredible mobility and potent combat strength is one of the greatest assets the elves possess in warfare."
    defense:
        village:50
        forest:40
    resistance:
        pierce:120
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
        damage:9
        number:2
