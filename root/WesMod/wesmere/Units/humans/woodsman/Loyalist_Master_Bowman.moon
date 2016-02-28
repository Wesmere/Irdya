unit_type
    id:"Master Bowman"
    name: _ "Master Bowman"
    race:"human"
    gender:"male"
    hitpoints:67
    movement_type:"smallfoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:46
    usage:"archer"
    description: _ "Master bowmen have reached the zenith of their art, inasmuch as any human is capable. Armed with both a sword, and a great yew bow, these warriors crown battalions of archers with their presence, bringing down many a foe with their well-aimed shots. Their skill with the sword is also not to be discounted; they are easily as good with it as any novice swordsman. Of the many races in the world, only the elves surpass humanity in archery, and their human counterparts have speculated, perhaps in envy, that this is only by dint of age."
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"bow"
        description: _ "longbow"
        type:"pierce"
        range:"ranged"
        damage:11
        number:4
