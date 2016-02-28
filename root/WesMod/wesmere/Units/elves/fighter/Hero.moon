unit_type
    id:"Elvish Hero"
    name: _ "Elvish Hero"
    race:"elf"
    hitpoints:51
    movement_type: "woodland"
    -- LESS_NIMBLE_ELF
    movement:5
    experience:90
    level:2
    alignment:"neutral"
    advances_to:"Elvish Champion"
    cost:32
    usage:"fighter"
    description: _ "Elves, though not warlike by nature, are swift to learn; a relatively small amount of experience will turn an elf from a competent fighter into a master of combat. Those who are honored as heroes are strong with both sword and bow, and their skill once acquired does not fade for lack of practice."

    attack:
        id: "sword"
        name:"sword"
        description:_"sword"
        type:"blade"
        range:"melee"
        damage:8
        number:4

    attack:
        id: "bow"
        name:"bow"
        description:_"bow"
        type:"pierce"
        range:"ranged"
        damage:6
        number:3
