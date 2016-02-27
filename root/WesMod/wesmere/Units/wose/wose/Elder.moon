unit_type
    id:"Elder Wose"
    name: _ "Elder Wose"
    race:"wose"
    hitpoints:64
    movement_type:"treefolk"
    movement:4
    experience:100
    level:2
    alignment:"lawful"
    advances_to:"Ancient Wose"
    cost:31
    description: _ [[Woses have been said to possess many shapes, all of them tree-like in form, and as they age, to increase in size. Tales tell of woses who resemble trees in this respect as well, towering over the creatures who walk beneath them. This is the greater part of why they are so rarely seen — standing in the slumber which they so often do, a wose of that stature appears to be nothing more than an oddly-shaped tree. Even a careless elf can sometimes be fooled.

Woses are not warriors by any means, but their great strength can easily be turned to violence, should someone manage to raise the ire of these creatures.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities: {
        ABILITY_AMBUSH
        ABILITY_REGENERATES
    }
    attack:
        name:"crush"
        description: _ "crush"
        type:"impact"
        range:"melee"
        damage:19
        number:2
