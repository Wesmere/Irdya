unit_type
    id:"Elvish Scout"
    name: _ "Elvish Scout"
    race:"elf"
    hitpoints:32

    movement:9
    experience:32
    level:1
    alignment:"neutral"
    advances_to:"Elvish Rider"
    cost:18
    undead_variation:"mounted"
    usage:"scout"
    description: _ "The horsemen of the wood elves have some skill with bow and sword, but their true skill lies in their horsemanship. Even other elves are impressed by their uncanny speed in the woods, and their ability to dart through the thick of the forest with nary a scratch. They may be the only cavalry in existence that fares better in the woods than on open ground."

    movement_type:"woodland"
    -- mostly like a foot Elf, but they
    -- are bad at defending in villages
    -- they are weak against piercing attacks
    defense:
        village:60
        forest:40

    resistance:
        pierce:120

    attack:
        id:"sword"
        name:sword
        description:_"sword"
        type:"blade"
        range:"melee"
        damage:4
        number:3

    attack:
        id:"bow"
        name:"bow"
        description:_"bow"
        type:"pierce"
        range:"ranged"
        damage:6
        number:2
